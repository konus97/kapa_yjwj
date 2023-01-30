package egovframework.kapa.deliberate.dto;

import java.time.LocalDate;
import java.util.List;

import egovframework.kapa.domain.Decision;
import egovframework.kapa.domain.Decision_Cityplan;
import egovframework.kapa.domain.Decision_ConsultationDate;
import egovframework.kapa.implementer.domain.OwnerViewInfo;
import egovframework.kapa.implementer.dto.ApplicationDTO;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class DeliberateOpinionDTO {

    private Integer type;
    
    private String typeStr;
    private String ownerOpinion;
    private String executorOpinion;
    
    private String opinionText;
    private String relatedLaws;
    private String relatedLaws2;
    private String reviewOpinion;
    
    private boolean landCheck;
    private boolean objectCheck;
    
    private String fileNameChange;
    private String fileFolder;
    private String opinionTitle;
    private String opinionContent;
    
    private String title;
    private String content;
    private OwnerViewInfo ownerViewInfo;
    
    private boolean itemCheck;
    
    private List<DeliberateOpinionItemDTO> deliberateOpinionItemDTOS;
}
