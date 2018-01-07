package practice.dao;

import practice.domain.Event;

public interface EventDao {
  // 작성
  int insert(Event event);
  int delete(int branchNo);
}
