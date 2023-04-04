package com.example.demo.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.models.Post;
import com.example.demo.repository.PostRepository;

@Service
public class PostsService {
	@Autowired
	private PostRepository repository;
	
	@SuppressWarnings("null")
	public List<Post> getPosts(){
		List<Post> list = new ArrayList<>();
		for(Post post : repository.findAll()) {
			list.add(post);
		}
		return list;
	}
	public Post getPost(int id) {
		return repository.findById(id).get();
	}
	public void addPost(Post listElement) {
		listElement.setId(0);
		repository.save(listElement);
	}	
	public void updatePost(int id, Post post) {
		Post updPost = repository.findById(id).orElse(null);
		updPost.setUsername(post.getUsername());
		updPost.setEmail(post.getEmail());
		updPost.setUf(post.getUf());
		updPost.setCidade(post.getCidade());
        repository.save(updPost);
	}
	public void deletePost(int id) {
		repository.deleteById(id);
	}
}
