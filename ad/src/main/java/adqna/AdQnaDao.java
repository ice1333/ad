package adqna;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdQnaDao {
	
	@Autowired
	SqlSessionTemplate sst;
	
	
	//목록
	public List<AdQnaVo> adqnalist(AdQnaVo vo) {
		return sst.selectList("adqna.adqnalist",vo);
	}
	
	//삭제
	public int adqnadelete(AdQnaVo vo) {
		return sst.delete("adqna.adqnadelete", vo.getAdqna_no());
	}
	
	//총갯수
	public int adqnacount(AdQnaVo vo) {
		return sst.selectOne("adqna.adqnacount",vo);
	}
	
	//해당 문의글 들어가기
	public AdQnaVo no_select(int adqna_no) {
		return sst.selectOne("adqna.no_select",adqna_no);
	}
	
	//답변상태 업데이트 (아직안함)
	public int statusupdate(int adqna_no) {
		return sst.update("adqna.statusupdate",adqna_no);
	}
	
	public int adqnadelete(String adqna_no) {
		return sst.delete("adqna.adqnadelete", adqna_no);
	}
	
}
