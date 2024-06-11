package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor

public class CalDTO {
	private String local;
	private int size;
	@NonNull private String seed;
	private String pesticide;
	private String machine;
	private int people;
}
