package co.leaf.fit.category.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.leaf.fit.common.DataSource;
import co.leaf.fit.vo.CategoryVO;

public class CategoryService implements CategoryMapper {
	private SqlSession sqlSession = DataSource.getInstance().openSession();
	private CategoryMapper map = sqlSession.getMapper(CategoryMapper.class);

	@Override
	public List<CategoryVO> catSelectList() {
		return map.catSelectList();
	}

	@Override
	public CategoryVO catSelect(CategoryVO vo) {
		return map.catSelect(vo);
	}

}
