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
package egovframework.kapa.admin.mapper;

import java.util.List;

import egovframework.kapa.admin.domain.AdminVO;
import egovframework.kapa.domain.Search;
import egovframework.kapa.domain.User;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

//@egovframework.kapa.MsSQLRepository
@Mapper
public interface AdminMapper {

	void save();
	
	void update();

	void delete();
		
	//회원 list 보기
	List<AdminVO> getMemberList(Search search);
	
	int getAllUserCnt();

}
