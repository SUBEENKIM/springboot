package practice.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import practice.dao.EventDao;
import practice.dao.TemplateDao;
import practice.domain.Event;
import practice.service.EventService; 

@Service
public class EventServiceImpl implements EventService{

	@Autowired
	EventDao eventDao;
	@Autowired
	TemplateDao templateDao;
	
	public void add(Event event) throws Exception{
		
		eventDao.insert(event);
		
		
	}
}
