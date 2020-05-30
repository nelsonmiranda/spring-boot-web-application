package com.in28minutes.springboot.web.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.in28minutes.springboot.web.service.TodoService;

@Controller
@SessionAttributes("name")
public class TodoController {

	@Autowired
	TodoService todoService;
	
	@RequestMapping(value = "/list-todos", method = RequestMethod.GET)
	public String showTodos(ModelMap model) {
		model.put("todos", todoService.retrieveTodos("in28Minutes"));
		return "list-todos";
		
	}
	
	@RequestMapping(value = "/add-todo", method = RequestMethod.GET)
	public String addTodoPage(ModelMap model) {
		return "todo";	
	}
	
	@RequestMapping(value = "/add-todo", method = RequestMethod.POST)
	public String addTodo(ModelMap model, @RequestParam String description) {
		todoService.addTodo("in28Minutes", description, new Date(), false);
		return "redirect:/list-todos";	
	}	
	
	@RequestMapping(value = "/delete-todo", method = RequestMethod.GET)
	public String addTodoPage(@RequestParam int id) {
		todoService.deleteTodo(id);
		return "redirect:/list-todos";	
	}
	
}
