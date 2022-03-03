package web.compdata.dao;

import java.util.List;

import web.compdata.entity.CompData;

public interface CompDataDAOInterface {
	
	public abstract CompData select(String compAccount );
	
	public abstract List<CompData> selectATon();
	
	public abstract CompData insert(CompData compData);
	
	public abstract boolean delete(String compAccount);
 
	public abstract boolean update(CompData compData);
	
	public CompData selectByEmail(String email);
}
