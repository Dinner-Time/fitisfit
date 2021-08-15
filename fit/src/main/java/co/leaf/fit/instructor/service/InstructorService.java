package co.leaf.fit.instructor.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.leaf.fit.common.DataSource;
import co.leaf.fit.vo.InstructorVO;

public class InstructorService implements InstructorMapper {
	
	private SqlSession sqlSession = DataSource.getInstance().openSession();
    private InstructorMapper map = sqlSession.getMapper(InstructorMapper.class);
	
	@Override
	public List<InstructorVO> insSelectList() {
		// TODO Auto-generated method stub
		return map.insSelectList();
	}

	@Override
	public InstructorVO insSelect(InstructorVO vo) {
		// TODO Auto-generated method stub
		return map.insSelect(vo);
	}

	@Override
	public int insInsert(InstructorVO vo) {
		// TODO Auto-generated method stub
		return map.insInsert(vo);
	}

	@Override
	public int insUpdate(InstructorVO vo) {
		// TODO Auto-generated method stub
		return map.insUpdate(vo);
	}

	@Override
	public int insDelete(InstructorVO vo) {
		// TODO Auto-generated method stub
		return map.insDelete(vo);
	}

}
