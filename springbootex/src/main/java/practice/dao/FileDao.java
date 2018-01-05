package practice.dao;

import practice.domain.Upload;

public interface FileDao {
  // 작성
  public void insert(Upload upload);
  public void delete(int branchNo);
}
