package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@AllArgsConstructor
@RequiredArgsConstructor
@NoArgsConstructor
@Getter
public class LikeDTO {
	public LikeDTO(String b_idx) {
		this.b_idx=b_idx;
		}
	@NonNull private String b_idx;
	@NonNull private String mem_id;
	private String like;
}
