package honeybee.project.semiprojectv5.dao;

import honeybee.project.semiprojectv5.model.Member;

import javax.servlet.http.HttpSession;

public interface MemberDAO {

    int selectLogin(Member m);
}
