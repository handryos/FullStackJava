package com.example.demo.Store;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Store {
	@GetMapping("/")
	public String home() {
		return "index";
	}

}
