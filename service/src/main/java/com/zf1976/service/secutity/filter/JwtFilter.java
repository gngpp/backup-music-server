package com.zf1976.service.secutity.filter;

import com.zf1976.service.secutity.enums.SignArgEnums;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.GenericFilterBean;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

/**
 * @author ant
 * Create by Ant on 2020/6/15 上午11:01
 */
@Configuration
public class JwtFilter extends GenericFilterBean {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req=(HttpServletRequest)servletRequest;
        final String jwtToken = req.getHeader("authorization");
        System.out.println("token:"+jwtToken);
        final Claims claims = Jwts.parser()
                                  .setSigningKey(SignArgEnums.DEFAULT_SIGN.value)
                                  .parseClaimsJws(jwtToken.replace("Bearer", ""))
                                  .getBody();
        final String username = claims.getSubject();
        final List<GrantedAuthority> authorities = AuthorityUtils.commaSeparatedStringToAuthorityList((String) claims.get("authorities"));
        final UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(username, null, authorities);
        SecurityContextHolder.getContext()
                             .setAuthentication(token);
        filterChain.doFilter(req,servletResponse);
    }
}
