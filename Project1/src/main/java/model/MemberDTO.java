package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@Getter

public class MemberDTO {
public MemberDTO(String id ,String pw, String name, String email) {
		this.id=id;
		this.pw=pw;
		this.name=name;
		this.email=email;
	}
@NonNull private String id;
@NonNull private String pw;
private String name;
private String email;
private String gender;
private String birthday;
}
