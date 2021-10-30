package com.banibani.user.controller;

import org.springframework.web.bind.annotation.RequestMapping;

import com.banibani.user.service.UserService;


@RequestMapping(value="/user")
public class UserController {

	UserService userService;

	@RequestMapping(value="/openUserCreate.do")
	public String openUserCreate() {

		return "";
	}

	/*
	@ResponseBody
	@RequestMapping(value="/open")
	public ModelMap (@RequestBody request, DefaultVo defaultVo) {

		return userService.(defaultVo);

	}
	*/

}
