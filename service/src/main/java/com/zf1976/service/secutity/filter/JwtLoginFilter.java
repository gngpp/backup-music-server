package com.zf1976.service.secutity.filter;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.zf1976.service.secutity.entity.User;
import com.zf1976.service.secutity.enums.SignArgEnums;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter;
import org.springframework.security.web.util.matcher.RequestMatcher;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.Date;

/**
 * @author ant
 * Create by Ant on 2020/6/15 上午10:41
 */
@Slf4j
public class JwtLoginFilter extends AbstractAuthenticationProcessingFilter {


    public JwtLoginFilter(String defaultFilterProcessesUrl, AuthenticationManager authenticationManager) {
        super(defaultFilterProcessesUrl);
        setAuthenticationManager(authenticationManager);

    }

    @Override
    public Authentication attemptAuthentication(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws AuthenticationException, IOException, ServletException {
        final User user = new ObjectMapper().readValue(httpServletRequest.getInputStream(), User.class);
        log.info("用户：{}",user.getUsername());
        return getAuthenticationManager()
                .authenticate(new UsernamePasswordAuthenticationToken(user.getUsername(),
                                                                      user.getPassword()));
    }

    @Override
    protected void successfulAuthentication(HttpServletRequest request, HttpServletResponse response, FilterChain chain, Authentication authResult) throws IOException, ServletException {
        final Collection<? extends GrantedAuthority> authorities = authResult.getAuthorities();
        final StringBuilder as = new StringBuilder();
        for (GrantedAuthority authority : authorities) {
            as.append(authority.getAuthority())
              .append(",");
        }

        final String jwt = Jwts.builder()
                               .claim("authorities", as)
                               .setSubject(authResult.getName())
                               .setExpiration(new Date(System.currentTimeMillis() + 60 * 60 * 1000))
                               .signWith(SignatureAlgorithm.HS512, SignArgEnums.DEFAULT_SIGN.value)
                               .compact();
        response.setContentType("application/json;charset=utf-8");
        final PrintWriter out = response.getWriter();
        out.write(new ObjectMapper().writeValueAsString(jwt));
        out.flush();
        out.close();
    }

    @Override
    protected void unsuccessfulAuthentication(HttpServletRequest request, HttpServletResponse response, AuthenticationException failed) throws IOException, ServletException {
        response.setContentType("application/json;charset=utf-8");
        final PrintWriter out = response.getWriter();
        out.write("登陆失败");
        out.flush();
        out.close();
    }
}
