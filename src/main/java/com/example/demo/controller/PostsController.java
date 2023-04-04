package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.models.Post;
import com.example.demo.services.PostsService;

@RestController
public class PostsController {
	@Autowired
	private PostsService service;
	
	
	
	@RequestMapping("/posts")
	public List<Post> getPost(){
		return service.getPosts();
	}
	@RequestMapping("/posts/{id}")
	public Post getPost(@PathVariable int id) {
		return service.getPost(id);
	}
	@RequestMapping(method=RequestMethod.POST, value="/posts")
	public void addPost(@RequestBody Post listElement) {
		service.addPost(listElement);
	}
	@RequestMapping(method=RequestMethod.PUT, value="/posts/{id}")
	public void updatePost(@PathVariable int id,@RequestBody Post post) {
		service.updatePost(id,post);
	}
	@RequestMapping(method=RequestMethod.DELETE, value="/posts/{id}")
	public void deletePost(@PathVariable int id) {
		service.deletePost(id);
	}
}
