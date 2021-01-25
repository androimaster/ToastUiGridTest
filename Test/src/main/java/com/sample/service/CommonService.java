package com.sample.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sample.repository.CommonDao;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@Transactional
public class CommonService {
	private final CommonDao dao;
	
	public List<Map<String, Object>> memberList() {
		return dao.selectList("common.selectMembers", null);
	}
}
