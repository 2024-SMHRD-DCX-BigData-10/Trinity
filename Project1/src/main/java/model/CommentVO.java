package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
@NoArgsConstructor


public class CommentVO {
	public CommentVO(String b_idx,String comment_content,String comment_date,String mem_id) {
		this.b_idx=b_idx;
		this.comment_content =comment_content;
		this.comment_date=comment_date;
		this.mem_id=mem_id;
		
	}
	private String comment_id;
 @NonNull	private String b_idx;
 @NonNull	private String comment_content;
 	private String comment_date;
 @NonNull	private String mem_id;
}

