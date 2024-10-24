package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharacterEncodingFilter implements Filter{

	private String encoding;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("> CharacterEncodingFilter.init()...");
		// web.xml의 init-param 가져와서 적용하면 됨
		
		this.encoding = filterConfig.getInitParameter(encoding);
		// 가져오기..
		if (this.encoding==null) {
			System.out.println("encoding is null...");
			this.encoding = "UTF-8";
		}

	}
	
	

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("> CharacterEncodingFilter.doFilter()...");
		request.setCharacterEncoding(encoding);
		chain.doFilter(request, response);
	}
	
	@Override
	public void destroy() {
		System.out.println("> CharacterEncodingFilter.destroy()...");
	}



}
