package egovframework.kapa.domain;

import lombok.Data;

@Data
public class Search extends Pagination {

	private String searchType;
    private String keyword;
    private int boardSeq;
    
//    public String getSearchType() {
//        return searchType;
//    }
//    public void setSearchType(String searchType) {
//        this.searchType = searchType;
//    }
//    public String getKeyword() {
//        return keyword;
//    }
//    public void setKeyword(String keyword) {
//        this.keyword = keyword;
//    }
//	public int getBoardSeq() {
//		return boardSeq;
//	}
//	public void setBoardSeq(int boardSeq) {
//		this.boardSeq = boardSeq;
//	}
//    
}
