/*
 * Copyright 2011 MOPAS(Ministry of Public Administration and Security).
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package egovframework.kapa.board.mapper;

import java.util.List;

import egovframework.kapa.board.domain.BoardList;
import egovframework.kapa.board.domain.BoardVO;
import egovframework.kapa.domain.Search;
import egovframework.kapa.util.MsSQLRepository;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

//@egovframework.kapa.MsSQLRepository
@Mapper
public interface BoardMapper {

	void save(BoardVO vo);
	
	void update(BoardVO update);

	void delete(BoardVO update);
	
	//게시글 고유번호
	Integer getSeq();

	//게시물 리스트
	List<BoardList> getBoardContentList(Search search);

	//게시글 카운트
	int getBoardContentCnt(Search search);

	BoardVO getViewContent(int viewSeq);

}
