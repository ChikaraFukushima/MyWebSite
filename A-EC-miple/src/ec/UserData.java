package ec;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.BuyDataBeans;
import beans.UserDataBeans;
import dao.BuyDAO;
import dao.UserDAO;

/**
 * サポーターユーザーの情報画面用
 */
@WebServlet("/UserData")
public class UserData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// リクエストパラメータの文字コードを指定(こちらも一応)
				request.setCharacterEncoding("UTF-8");

		// セッションを開始する
		HttpSession session = request.getSession();

		try {
			// ログイン時に取得したユーザーIDをセッションから取得
			int userId = (int) session.getAttribute("userId");

			//更新確認画面から戻ってきた場合Sessionから取得。それ以外はuserIdでユーザーを取得(コピペ)

			UserDataBeans udb = session.getAttribute("returnUDB") == null ? UserDAO.getUserDataBeansByUserId(userId) : (UserDataBeans) EcHelper.cutSessionAttribute(session, "returnUDB");
			// 入力された内容に誤り用のエラーメッセージを格納する
			String validationMessage = (String) EcHelper.cutSessionAttribute(session, "validationMessage");

			//メッセージ用にセットする
			request.setAttribute("validationMessage", validationMessage);
			request.setAttribute("udb", udb);

			//追加部分 BDデータをセットする
			ArrayList<BuyDataBeans> BD = BuyDAO.getBuyDataBeansListByUserId(userId);
			request.setAttribute("bd", BD);


			request.getRequestDispatcher(EcHelper.USER_DATA_PAGE).forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("Error");
		}
	}

}
