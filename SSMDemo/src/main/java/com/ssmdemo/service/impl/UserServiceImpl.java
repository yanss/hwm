package com.ssmdemo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssmdemo.dao.UserDao;
import com.ssmdemo.entity.User;
import com.ssmdemo.service.UserService;

@Service(value="userService")
@Transactional

public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	
	public void add(User user) {
		userDao.add(user);
	}

	public void update(User user) {
		userDao.update(user);
	}

	public void delete(String id) {
		userDao.delete(id);
	}

	public User findByID(String id) {
		return userDao.findByID(id);
	}

	public List<User> findAll() {
		return userDao.findAll();
	}
	
}
