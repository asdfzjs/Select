package cn.Select.dao;

import java.util.List;

import cn.Select.model.Course;

/**
 * ClassName:CourseMapper <br/>
 * Function: TODO ADD FUNCTION. <br/>
 * Reason:	 TODO ADD REASON. <br/>
 * Date:     2017��1��2�� ����6:37:52 <br/>
 * @author   User
 * @version  
 * @since    JDK 1.6
 * @see 	 
 */
public interface CourseMapper {

	public List<Course> searchCourse(Course course);

}

