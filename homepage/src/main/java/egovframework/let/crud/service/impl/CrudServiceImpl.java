package egovframework.let.crud.service.impl;

import egovframework.let.crud.service.CrudService;
import egovframework.let.crud.service.CrudVO;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;


@Service("crudService")
public class CrudServiceImpl extends EgovAbstractServiceImpl implements CrudService {
    /*
    @Resource(name = "propertiesService")
    protected EgovPropertyService propertyService;
    */
    //이름은 보통 앞은 소문자
    @Resource(name="crudMapper")
	private CrudMapper crudMapper;
    //ID값을 가져오기 위해서 사용
    @Resource(name = "egovCrudIdGnrService")
    private EgovIdGnrService idgenService; 
    
    @Override
	public CrudVO selectCrud(CrudVO vo) throws Exception {
//    	CrudVO reult = curdMapper.selectCurd(vo);
//    	return result;
		return crudMapper.selectCrud(vo);
	}
    
    //CRUD 목록 가져오기
    public List<EgovMap> selectCrudList(CrudVO vo) throws Exception{
    	return crudMapper.selectCrudList(vo);
    }
    
    //CRUD 등록하기
    public String insertCrud(CrudVO vo) throws Exception{
    	String id = idgenService.getNextStringId();
    	vo.setCrudId(id);
    	crudMapper.insertCrud(vo);
    	return id;
    }
    //CRUD 수정하기
    public void updateCrud(CrudVO vo) throws Exception{
    	crudMapper.updateCrud(vo);
    }
    
    //CRUD 삭제하기
    public void deleteCrud(CrudVO vo) throws Exception{
    	crudMapper.deleteCrud(vo);
    }
    
    //임시데이터 목록수
    public int selectCrudListCnt(CrudVO vo)throws Exception{
    	return crudMapper.selectCrudListCnt(vo);
    }
    
    
    //등록하기는 void형식이기 때문에 받아올값이 없어서 null값을 리턴해준다.

    /*
    @Resource(name = "egovTempIdGnrService")
    private EgovIdGnrService idgenService;
    */
    /*
	@Override
	public TempVO selectTemp(TempVO vo) throws Exception {
		return tempMapper.selectTemp(vo);
	}
	
	public String insertTemp(TempVO vo) throws Exception {
		/*
		String id = idgenService.getNextStringId();
		vo.setTempId(id);
		tempMapper.insertTemp(vo);
		
		return id;
		*  /
		
		return null;
	}
	
	//임시데이터 목록 가져오기
	public List<EgovMap> selectTempList(TempVO vo) throws Exception {
		return tempMapper.selectTempList(vo);
	}
	
	//임시데이터 목록 수
	public int selectTempListCnt(TempVO vo) throws Exception {
		return tempMapper.selectTempListCnt(vo);
	}
	
	//임시데이터 수정하기
	public void updateTemp(TempVO vo) throws Exception{
		tempMapper.updateTemp(vo);
	}
	
	//임시데이터 삭제하기
	public void deleteTemp(TempVO vo) throws Exception{
		tempMapper.deleteTemp(vo);
	}
	*/
    
	
	
	
}
