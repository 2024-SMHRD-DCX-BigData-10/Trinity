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
	@NonNull private String id;
	@NonNull private String title;
	@NonNull private String filename;
	@NonNull private String content;
	private String b_date;
	
}