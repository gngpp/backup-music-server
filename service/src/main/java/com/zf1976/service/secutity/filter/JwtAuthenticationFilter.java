package com.zf1976.service.secutity.filter;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.zf1976.pojo.common.DataResult;
import com.zf1976.service.secutity.entity.UserLoginDTO;
import com.zf1976.service.secutity.common.JwtTokenUtils;
import com.zf1976.service.secutity.impl.JwtUser;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.util.DigestUtils;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;

/**
 * @author mac
 * Create by Ant on 2020/6/16 6:29 下午
 */
public class JwtAuthenticationFilter extends UsernamePasswordAuthenticationFilter {

    private final AuthenticationManager authenticationManager;

    public JwtAuthenticationFilter(AuthenticationManager authenticationManager){
        this.authenticationManager = authenticationManager;
    }

    @Override
    public Authentication attemptAuthentication(HttpServletRequest request,
                                                HttpServletResponse response) throws AuthenticationException {

        final UserLoginDTO dto;
        try {
            dto = new ObjectMapper().readValue(request.getInputStream(), UserLoginDTO.class);
            dto.setPassword(DigestUtils.md5DigestAsHex(dto.getPassword().getBytes()));
            return authenticationManager
                    .authenticate(new UsernamePasswordAuthenticationToken(dto.getUsername(), dto.getPassword(), new ArrayList<>()));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    protected void successfulAuthentication(HttpServletRequest request, HttpServletResponse response, FilterChain chain, Authentication authResult) throws IOException, ServletException {
        final JwtUser user = (JwtUser) authResult.getPrincipal();
        final String token = JwtTokenUtils.createToken(user.getUsername(), false);
        final ObjectMapper mapper = new ObjectMapper();
        final String s = mapper.writeValueAsString(DataResult.success(token));
        response.getWriter().write(s);
    }

    @Override
    protected void unsuccessfulAuthentication(HttpServletRequest request, HttpServletResponse response, AuthenticationException failed) throws IOException, ServletException {
        response.getWriter().write("authentication failed, reason: " + failed.getMessage());
    }

}