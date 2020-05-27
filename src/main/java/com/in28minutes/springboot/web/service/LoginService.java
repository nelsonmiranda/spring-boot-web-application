package com.in28minutes.springboot.web.service;

import org.springframework.stereotype.Service;

@Service
public class LoginService {
	
	public boolean validateUser(String user, String password) {
		return user.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin");
	}

}
