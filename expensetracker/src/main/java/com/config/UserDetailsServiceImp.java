package com.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.entity.Users;
import com.repository.UsersRepository;

public class UserDetailsServiceImp implements UserDetailsService {

	@Autowired
	private UsersRepository userRepository;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		//Fetching user from Database 
		Users user= userRepository.findByUname(username);
		if(user==null)
		{
			throw new UsernameNotFoundException("Could not found user : ");
		}
		
		CustomUserDetails customUserDetails=new CustomUserDetails(user);
		return customUserDetails;
	}

}
