package practice.dao;

import java.util.List;

import practice.domain.Branch;
import practice.domain.Template;

public interface TemplateDao {
  // 작성
  public void insert(Template Template);
  public void delete(int templateNo);
  List<Template> selectListByTemplate(List<Branch> branch);
}
