package ssm.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import ssm.entity.Hosts;

import java.util.List;

@Repository
public interface HostDao {
    @Select("select id,ip,port,note from hosts;")
    List<Hosts> selectList();



    @Delete("delete from hosts where id=#{id};")
    void deleteHost(@Param("id") int id);
}
