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
@NonNull private String id;
@NonNull private String pw;
private String name;
private String email;
private String gender;
private String birthday;


}
