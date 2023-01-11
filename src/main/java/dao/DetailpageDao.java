package dao;

import java.util.HashMap;
import java.util.List;

import dto.DetailpageMapDTO;
import dto.DetailpagePageDTO;

public interface DetailpageDao {
	public List<DetailpageMapDTO> list(DetailpagePageDTO pv);
	public List<DetailpageMapDTO> res_coordindate(HashMap<String, Object> coor);
	public List<DetailpageMapDTO> res_address(HashMap<String, Object>address);
	public int count();
}
