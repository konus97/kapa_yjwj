package egovframework.kapa.implementer.dto;

import java.time.LocalDate;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class OwnerInfoDTO {
	
    private String ownrTitle;
    private int ownrSeq;
  
	private boolean landCheck;
	
	private List<ApplicationLandDTO> landList;
	
	//항목, 제목, 소유자의견, 사업시행자의견 
	
	private boolean goodsCheck;
	
	private List<ApplicationGoodsDTO> goodsList;
	
	private List<DecisionOpinionDTO> opinionDTO;
	
	private List<DecisionOpinionFileDTO> opinionFileDTO;
	
}
