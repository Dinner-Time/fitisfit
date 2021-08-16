package co.leaf.fit.timetable.service;


import co.leaf.fit.vo.TimetableVO;

public interface TimetableMapper {
	TimetableVO timSelect(TimetableVO vo);
	
	int timInsert(TimetableVO vo);
	int timUpdate(TimetableVO vo);
	int timDelete(TimetableVO vo);
}
