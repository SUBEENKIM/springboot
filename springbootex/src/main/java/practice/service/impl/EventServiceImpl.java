package practice.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import practice.dao.EventDao;
import practice.dao.TemplateDao;
import practice.domain.Branch;
import practice.domain.Template;
import practice.service.EventService; 

@Service
public class EventServiceImpl implements EventService{

	@Autowired
	EventDao eventDao;
	@Autowired
	TemplateDao templateDao;
	
	public List<Template> listByTemplate(List<Branch> branch) throws Exception{
		return templateDao.selectListByTemplate(branch);
		  
	}
}
