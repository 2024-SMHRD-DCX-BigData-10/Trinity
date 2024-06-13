package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.ToString;
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@Getter
@ToString
public class BoardVO {
	
	public BoardVO(String b_idx,String id,String title,String content) {
		this.b_idx=b_idx;
		this.id=id;
		this.title=title;
		this.content=content;
	}
	
	private String b_idx;
	@NonNull private String id;
	@NonNull private String title;
	@NonNull private String content;
	private String b_date;
	
}