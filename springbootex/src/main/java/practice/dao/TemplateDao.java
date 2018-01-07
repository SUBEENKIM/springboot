package practice.dao;

import practice.domain.Template;

public interface TemplateDao {
  // 작성
  public void insert(Template Template);
  public void delete(int templateNo);
}
