package co.leaf.fit.timetable.service;

import java.util.List;

import co.leaf.fit.vo.TimetableVO;

public interface TimetableMapper {
	List<TimetableVO> timSelectList();
	TimetableVO timSelect(TimetableVO vo);
	
	int timInsert(TimetableVO vo);
	int timUpdate(TimetableVO vo);
	int timDelete(TimetableVO vo);
}
