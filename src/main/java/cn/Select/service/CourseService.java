package cn.Select.service;

import java.util.List;

import com.github.pagehelper.PageInfo;

import cn.Select.model.Course;


public interface CourseService {

	public PageInfo<Course> searchCourse(int pageNo, int pageSize,Course course);

	List<Course> getCourseList(Course course);

	public PageInfo<Course> searchCourseStatus(int pageNo, int pageSize, Course course);
}
