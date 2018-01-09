package practice.service;

import java.util.List;

import practice.domain.Branch;
import practice.domain.Template;

public interface EventService {
	 
	List<Template> listByTemplate(List<Branch> branch) throws Exception;
	  

}
