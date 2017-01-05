package cn.Select.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.Select.dao.CourseMapper;
import cn.Select.model.Course;
import cn.Select.service.CourseService;


@Service
public class CourseServiceImpl implements CourseService{

	@Autowired
	private CourseMapper courseDAO;

	public List<Course> getOrderList(Course course) {
		Map<String, Object> params = new HashMap<String, Object>();
		return courseDAO.searchCourse(course);
	}

	public PageInfo<Course> searchCourse(int pageNo, int pageSize, Course course) {
		Map<String, Object> params = new HashMap<String, Object>();
		List<Course> list = courseDAO.searchCourse(course);
		return new PageInfo<Course>(list);
	}


	public List<Course> getCourseList(Course course) {
		return null;
	}


	public PageInfo<Course> searchCourseStatus(int pageNo, int pageSize, Course course) {
		
		// TODO Auto-generated method stub
		return null;
	}
	

}
