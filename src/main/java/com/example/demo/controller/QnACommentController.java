package com.example.demo.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.http.*;
import org.springframework.security.access.prepost.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

import com.example.demo.domain.*;
import com.example.demo.service.*;

@Controller
@RequestMapping("qnaComment")
public class QnACommentController {

	@Autowired
	private QnACommentService service;
	
	@PutMapping("update")
	public ResponseEntity<Map<String, Object>> update(@RequestBody QnAComment qnacomment) {
		Map<String, Object> res = service.update(qnacomment);
		return ResponseEntity.ok().body(res);
	}
	
	@GetMapping("id/{id}")
	@ResponseBody
	public QnAComment get(@PathVariable("id") Integer id) {
		return service.get(id);
	}
	
	@DeleteMapping("id/{id}")
	public ResponseEntity<Map<String, Object>> remove(@PathVariable("id") Integer id) {
		Map<String, Object> res = service.remove(id);
		
		return ResponseEntity.ok().body(res);
	}
	
	@PostMapping("add")
//	@PreAuthorize("authenticated")
	public ResponseEntity<Map<String, Object>> add(@RequestBody QnAComment qnacomment) {
		
		Map<String, Object> res = service.add(qnacomment);
		
		return ResponseEntity.ok().body(res);
	}
	
	@GetMapping("list")
	@ResponseBody
	public List<QnAComment> list(@RequestParam("qna") Integer qnaId){
		
		return service.list(qnaId);
	}
}
