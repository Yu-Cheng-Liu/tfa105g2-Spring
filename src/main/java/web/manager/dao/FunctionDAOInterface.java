package web.manager.dao;

import java.util.List;
import web.manager.entity.FunctionBean;

public interface FunctionDAOInterface {
	public abstract List<FunctionBean> selectAll();
	
	public abstract FunctionBean select(FunctionBean bean);
	
	public abstract boolean delete(FunctionBean bean);

	public abstract FunctionBean insert(FunctionBean bean);

}