package co.leaf.fit.category.service;

import java.util.List;

import co.leaf.fit.vo.CategoryVO;

public interface CategoryMapper {
	List<CategoryVO> catSelectList();
	CategoryVO catSelect(CategoryVO vo);
	
}
