package days06;

import java.io.Serializable;
import java.util.Date;

import lombok.Getter;
import lombok.Setter;

//자바빈
@Getter
@Setter
public class MemberInfo implements Serializable  {
	

	private static final long serialVersionUID = 9123949164526925578L;
	
	private String id ;
	private String name ;
	private String passwd  ;
	private String email ;
	private Date registerDate;
}

//규약을 지켜서 ㄱ  	
//2. 자바 빈 규약 
//1) private 필드 선언 private String id ;
//2) getter, setter 선언@Getter@Setter
//3) 직렬화가 가능한 클래스 선언 implements Serializable 