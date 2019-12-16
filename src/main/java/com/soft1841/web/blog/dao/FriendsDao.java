package com.soft1841.web.blog.dao;


import com.soft1841.web.blog.entity.Friends;

import java.util.HashMap;
import java.util.List;

/**
 * FileName       FriendsDao
 * Author：       留恋
 * Date：         2019/12/5 10:58
 * Description：  好友管理接口
 */
public interface FriendsDao {
    /**
     * 查询所有好友
     * @return
     * @throws Exception
     */
  public List<HashMap> getAllFriends() throws Exception;

  /**
   * 新增好友
   * @param friends
   * @return
   * @throws Exception
   */
  public int insertFriend(Friends friends) throws Exception;

    /**
     * 修改好友
     * @param friends
     * @throws Exception
     */
  public int updateFriend(Friends friends)throws Exception;

  /**
   * 根据id和qqId删除好友
   * 也可以按组删除好友
   * @param friends
   * @return
   * @throws Exception
   */
  public int deleteFriends(Friends friends )throws Exception;

  /**
   * 根据id和qqId以及分组id查找好友
   * @param
   * @return
   * @throws Exception
   */
  public List<HashMap> searchFriends(Friends friends) throws Exception;

  /**
   * 统计组别数量
   * @return int
   * @throws Exception
   */
  List<HashMap> countGroup() throws Exception;

  /**
   * 查询所有日志
   * @return
   * @throws Exception
   */
  List<HashMap> getAllLogs() throws Exception;

  /**
   * 根据作者查询日志
   * @return
   * @throws Exception
   */
  List<HashMap> getAllLogsByAuthor(String author) throws Exception;

}
