package cn.Select.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.Select.dao.ClientMapper;
import cn.Select.dao.CourseMapper;
import cn.Select.model.Client;
import cn.Select.model.Course;
import cn.Select.service.ClientService;
import cn.Select.service.CourseService;


@Service
public class ClientServiceImpl implements ClientService{

	@Autowired
	private ClientMapper clientDAO;

	public void register(Client client) {
		clientDAO.register(client);
	}

	
	

}
