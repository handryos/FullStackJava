package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import com.example.demo.models.Post;
import com.example.demo.services.PostsService;

@Controller
public class PageController {
	@Autowired
	private PostsService service;
	
	@RequestMapping("/viagens")
    public String showReadTaskPageRest(Model model) {
        model.addAttribute("viagens", service.getPosts());
        return "viagens";
    }
	@RequestMapping("/{id}")
    public String showUpdateTaskPageRest(@PathVariable int id, Model model) {
        model.addAttribute("viagem", service.getPost(id));
        return "update";
    }
	@RequestMapping("/viagens/delete/{id}")
    public String showReadTaskPageRest(@PathVariable int id) {
        service.deletePost(id);
        return "redirect:/viagens";
    }
	
}

