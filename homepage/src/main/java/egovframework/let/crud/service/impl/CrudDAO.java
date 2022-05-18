package egovframework.let.crud.service.impl;
import egovframework.let.crud.service.CrudVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

import org.springframework.stereotype.Repository;


@Repository("crudDAO")
public class CrudDAO extends EgovAbstractDAO {

    
    public CrudVO selectCrud(CrudVO boardVO) throws Exception {
    	return (CrudVO)select("CrudDAO.selectCrud", boardVO);
    }

}
