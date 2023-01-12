package dao;

import java.util.HashMap;
import java.util.List;

import dto.DetailpageMapDTO;
import dto.DetailpagePageDTO;

public interface DetailpageDao {
	public List<DetailpageMapDTO> list(DetailpagePageDTO pv);
	public List<DetailpageMapDTO> coordindate(HashMap<String, Object> coor);
	public List<DetailpageMapDTO> address(HashMap<String, Object> address);
	public int count();
	}
