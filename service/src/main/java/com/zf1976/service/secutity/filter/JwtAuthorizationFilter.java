package com.zf1976.service.secutity.filter;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.zf1976.service.secutity.common.JwtTokenUtils;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;

/**
 * @author mac
 * Create by Ant on 2020/6/16 6:44 下午
 */
public class JwtAuthorizationFilter extends BasicAuthenticationFilter {

    public JwtAuthorizationFilter(AuthenticationManager authenticationManager) {
        super(authenticationManager);
    }

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain) throws IOException, ServletException {
        final String tokenHeader = request.getHeader(JwtTokenUtils.TOKEN_HEADER);

        // 没有Authorization信息直接放行
        if (Objects.isNull(tokenHeader) || !tokenHeader.startsWith(JwtTokenUtils.TOKEN_PREFIX)){
            System.out.println("校验token");
            chain.doFilter(request,response);
        } else {
            SecurityContextHolder.getContext()
                                 .setAuthentication(getAuthentication(tokenHeader));
            doFilter(request,response,chain);
        }
    }

    private UsernamePasswordAuthenticationToken getAuthentication(String tokenHeader){
        final String token = tokenHeader.replace(JwtTokenUtils.TOKEN_PREFIX, "");
        final String username = JwtTokenUtils.getUsername(token);
        if (Objects.nonNull(username)){
            return new UsernamePasswordAuthenticationToken(username, null, new ArrayList<>());
        }
        return null;
    }

}