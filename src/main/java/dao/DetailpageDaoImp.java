package dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import dto.DetailpageMapDTO;
import dto.DetailpagePageDTO;

public class DetailpageDaoImp implements DetailpageDao {

	public DetailpageDaoImp() {

	}

	private SqlSessionTemplate sqlSession;

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<DetailpageMapDTO> list(DetailpagePageDTO pv) {
		return sqlSession.selectList("seoulfoodsample.list", pv);
	}

	@Override
	public List<DetailpageMapDTO> coordindate(HashMap<String, Object> coor) {
		return sqlSession.selectList("seoulfoodsample.coordindate", coor);
	}

	@Override
	public List<DetailpageMapDTO> address(HashMap<String, Object> address) {
		return sqlSession.selectList("seoulfoodsample.address", address);
	}

	@Override
	public int count() {
		return sqlSession.selectOne("seoulfoodsample.count");
	}

}
