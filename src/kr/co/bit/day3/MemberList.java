package kr.co.bit.day3;

import java.util.ArrayList;
import java.util.List;

public class MemberList {

	
	List<MemberVO> list = new ArrayList<MemberVO>();
	
	public void insert(MemberVO vo) {
		
		
		list.add(vo);
	}
	
}
