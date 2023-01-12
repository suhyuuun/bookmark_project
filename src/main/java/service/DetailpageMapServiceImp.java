package service;

import java.util.HashMap;
import java.util.List;

import dao.DetailpageDao;
import dto.DetailpageMapDTO;
import dto.DetailpagePageDTO;

public class DetailpageMapServiceImp implements DetailpageMapService {
	private DetailpageDao dao;

	public DetailpageMapServiceImp() {

	}

	public void setDao(DetailpageDao dao) {
		this.dao = dao;
	}
	

	@Override
	public List<DetailpageMapDTO> f_listProcess(DetailpagePageDTO pv) {
		return dao.list(pv);
	}

	@Override
	public List<DetailpageMapDTO> f_coordindate(String latitude, String longitude) {
		HashMap<String, Object> coor = new HashMap<String, Object>();
		coor.put("latitude",latitude);
		coor.put("longitude", longitude);
		return dao.coordindate(coor);
	}

	@Override
	public List<DetailpageMapDTO> f_address(String address) {
		HashMap<String, Object> addr = new HashMap<String, Object>();
		addr.put("address",address);
		return dao.address(addr);
	}

	@Override
	public int countProcess() {
		return dao.count();
	}

	@Override
	public List<DetailpageMapDTO> listProcess(DetailpagePageDTO pdto) {
		return dao.list(pdto);
	}



}
