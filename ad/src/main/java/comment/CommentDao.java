package comment;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CommentDao {
	
	@Autowired 
	SqlSessionTemplate sst;
	
	//파마리터타입이 매개변수로 받음
	public List<CommentVo> selectList(CommentVo cv) {
		List<CommentVo> list = sst.selectList("comment.selectList", cv);
		return list;
	}
	
	public int insert(CommentVo cv) {
		return sst.insert("comment.insert", cv);
	}
	
	public int delete(int c_no) {
		return sst.delete("comment.delete", c_no);
	}
	
}
