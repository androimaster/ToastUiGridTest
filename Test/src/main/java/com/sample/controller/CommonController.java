package com.sample.controller;

import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sample.service.CommonService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequiredArgsConstructor
public class CommonController {
	
	private final CommonService service;
	
	@GetMapping("memberList")
	public List<Map<String, Object>> memberList() {
		log.info("called memberList!!");
		return service.memberList();
	}
}
