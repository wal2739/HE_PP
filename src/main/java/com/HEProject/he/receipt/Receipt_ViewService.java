package com.HEProject.he.receipt;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface Receipt_ViewService {
	Receipt_ViewVO getReceipt(HttpServletRequest request, HttpSession session);
}
