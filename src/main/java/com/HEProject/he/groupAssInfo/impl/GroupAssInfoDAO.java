package com.HEProject.he.groupAssInfo.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.HEProject.he.boInfo.BOInfoVO;
import com.HEProject.he.boInfo.impl.BOInfoRowMapper;
import com.HEProject.he.groupAssInfo.GroupAssInfoVO;
import com.HEProject.he.groupAssInfo.GrouperInfoVO;
import com.HEProject.he.messageInfo.impl.MessageInfoRowMapper;
import com.HEProject.he.usersInfo.SearchInfoVO;
import com.HEProject.he.usersInfo.UsersInfoVO;
import com.HEProject.he.usersInfo.Impl.SearchForEquipRowMapper;
import com.HEProject.he.usersInfo.Impl.SearchGrouperInfoRowMapper;
import com.HEProject.he.usersInfo.Impl.SearchInfoRowMapper;
import com.HEProject.he.usersInfo.Impl.UsersInfoRowmapper;

@Repository
public class GroupAssInfoDAO {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public List<GrouperInfoVO> getAllGrouper(String usRn) {
		String sql = "select * from grouperInfo where st=0 and ASSUSRN='" + usRn + "' and gst=1";
		try {
			return jdbcTemplate.query(sql, new GrouperInfoRowMapper());
		} catch (Exception e) {
			System.err.println(e);
			return null;
		}
	}
	
	public GrouperInfoVO getGrouperInfo(GrouperInfoVO vo) {
		String sql = "select * from grouperInfo where st=0 and assUsRn = '" + vo.getAssUsRn() +  "' and usRn = ? and gst=" + vo.getgSt();
		try {
			Object[] args = {vo.getUsRn()};
			return jdbcTemplate.queryForObject(sql, args, new GrouperInfoRowMapper());
		} catch (Exception e) {
			System.err.println(e);
			return null;
		}
	}
	
	public SearchInfoVO searchGrouperInfo(SearchInfoVO vo) {
		String sql = "select DISTINCT BOACC,BOACCBANK,BOADD01,BOADD02,BOCELL,BOLICENSE,BOMAIL,BONAME,BONUMBER,BOPHONE,BORRN,CPNAME,REGIDATE,ST,TOB01,TOB02,USERADD01,USERADD02,USERCELL,USERCLASS,USERCONSENT01,USERCONSENT02,USERCONSENT03,USEREMAIL,USERID,USERNAME,USERPW,USRN from searchInfo where st=0 and usrn=?";
		try {
			Object[] args = {vo.getUsRn()};
			return jdbcTemplate.queryForObject(sql, args, new SearchGrouperInfoRowMapper());
		} catch (Exception e) {
			System.err.println(e);
			return null;
		}
	}
	
	public List<UsersInfoVO> getAllGrouperInfo(GroupAssInfoVO vo) {
		String sql = "select * from usersInfo where usrn in (select grusrn from groupassinfo where st=1 and assusrn='" + vo.getAssUsRn() + "')";
		System.out.println(vo.getAssUsRn());
		try {
			return jdbcTemplate.query(sql, new UsersInfoRowmapper());
		}catch (NullPointerException e) {
			System.err.println(e);
			return null;
		}
	}
	
	public List<BOInfoVO> getAllGroupInfo(GroupAssInfoVO vo) {
		String sql = "select * from BOInfo where usrn in (select assusrn from groupassinfo where st=1 and grusrn='" + vo.getGrUsRn() + "')";
		try {
			return jdbcTemplate.query(sql, new BOInfoRowMapper());
		}catch (NullPointerException e) {
			System.err.println(e);
			return null;
		}
	}
	
	public List<BOInfoVO> getAllAssInfo(GroupAssInfoVO vo) {
		String sql = "select * from boInfo where usrn not in (select assusrn from groupassinfo where grusrn='" + vo.getGrUsRn() + "' and st!=3) and usrn in (select usrn from usersinfo where userclass=2 or userclass=3)";
		try {
			return jdbcTemplate.query(sql, new BOInfoRowMapper());
		}catch (NullPointerException e) {
			System.err.println(e);
			return null;
		}
	}
	
	public List<BOInfoVO> getOffer(GroupAssInfoVO vo) {
		String sql = "select * from BOInfo where usrn in (select assusrn from groupassinfo where st=0 and grusrn='" + vo.getGrUsRn() + "')";
		try {
			return jdbcTemplate.query(sql, new BOInfoRowMapper());
		}catch (NullPointerException e) {
			System.err.println(e);
			return null;
		}
	}

	public List<GrouperInfoVO> getAci(String usRn) {
		String sql = "select * from grouperInfo where st=0 and ASSUSRN='" + usRn + "' and gst=4";
		try {
			return jdbcTemplate.query(sql, new GrouperInfoRowMapper());
		}catch (NullPointerException e) {
			System.err.println(e);
			return null;
		}
	}
	
	public int modifyAci(GroupAssInfoVO vo, int stateNum) {
		String sql = "update groupassinfo set st=? where assusrn=? and grusrn=? and st=4";
		try {
			jdbcTemplate.update(sql, stateNum, vo.getAssUsRn(), vo.getGrUsRn());
			return 1;
		}catch (NullPointerException e) {
			System.err.println(e);
			return 0;
		}
	}
	
	public int sendOffer(GroupAssInfoVO vo) {
		String sql = "insert into GROUPASSINFO(GROUPCODE,ST,ASSUSRN,GRUSRN) values(LPAD(LPAD(GrRn_sq.nextVal, '8', '0'),'9','G'),0,?,?)";
		try {
			jdbcTemplate.update(sql,vo.getAssUsRn(),vo.getGrUsRn());
			return 1;
		} catch (Exception e) {
			System.err.println(e);
			return 0;
		}
	}
	
	public int newAci(GroupAssInfoVO vo) {
		String sql = "insert into GROUPASSINFO(GROUPCODE,ST,ASSUSRN,GRUSRN) values(LPAD(LPAD(GrRn_sq.nextVal, '8', '0'),'9','G'),4,?,?)";
		try {
			jdbcTemplate.update(sql,vo.getAssUsRn(),vo.getGrUsRn());
			return 1;
		} catch (Exception e) {
			System.err.println(e);
			return 0;
		}
	}
	
	public List<GroupAssInfoVO> checkAci(GroupAssInfoVO vo) {
		String sql = "select * from GROUPASSINFO where st=4 and GRUSRN = " + vo.getGrUsRn() +"'";
		return jdbcTemplate.query(sql, new GroupAssInfoRowMapper());
	}
	
	public int modifyOffer(GroupAssInfoVO vo) {
		String sql = "update groupassInfo set st=? where assusrn = ? and grusrn = ?";
		try {
			jdbcTemplate.update(sql,vo.getSt(),vo.getAssUsRn(),vo.getGrUsRn());
			return 1;
		}catch (Exception e) {
			System.err.println(e);
			return 0;
		}
	}
	
	public int deleteGroup(GroupAssInfoVO vo) {
		String sql = "update groupassInfo set st=3 where assusrn = ? and GRUSRN = ?";
		try {
			jdbcTemplate.update(sql,vo.getAssUsRn(),vo.getGrUsRn());
			return 1;
		}catch (Exception e) {
			System.err.println(e);
			return 0;
		}
	}
	
	public int deleteOffer(GroupAssInfoVO vo, String boNum) {
		String sql = "delete from groupassInfo where ASSUSRN=(select usrn from boInfo where bonumber=?) and GRUSRN=? and st=0 or st=4";
		try {
			jdbcTemplate.update(sql,boNum,vo.getGrUsRn());
			return 1;
		}catch (Exception e) {
			System.err.println(e);
			return 0;
		}
	}

	public List<SearchInfoVO> searchGrouperEquipInfo(String usRn) {
		String sql = "select si.equiptype,si.equipclass,si.equipoption,si.userid,si.userName,si.usRn,si.equipId,si.equipRd from searchInfo si where usRn='" + usRn + "'";
		return jdbcTemplate.query(sql, new SearchForEquipRowMapper());
	}
}
