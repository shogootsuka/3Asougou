/*------------------------------------------------------------------------------
 * 演習番号：プロトタイプ演習
 * クラス名：HomeController
 * 作成日  ：2025/04/01
 * 作成者  ：FLM Uzawa
 *------------------------------------------------------------------------------
 * 修正履歴 (修正日：担当者：修正内容)
 *------------------------------------------------------------------------------
 */
package sample.web.controller;

import static sample.config.SystemConsts.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import sample.model.dao.ConnectionManager;
import sample.model.dao.ShopDao;
import sample.model.data.Shop;

/**
 * 商品情報画面遷移サーブレット
 */
@WebServlet("/login")
public class HomeController extends HttpServlet {

	/**
	 * DBからすべての商店と紐づくすべての商品情報を取得し、JSON文字列に変換しリクエストに設定、
	 * 商品情報画面JSPを呼び出す。
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");

<<<<<<< HEAD
		String next = "/WEB-INF/view/Login.jsp";
=======
		String next = "/WEB-INF/view/include/keijyouStr.jsp";

		try (Connection con = ConnectionManager.getConnection()){

			ShopDao dao = new ShopDao(con);
			List<Shop> shopList = dao.selectAll();

			// JavaオブジェクトをJSON文字列に変換
			ObjectMapper mapper = new ObjectMapper();
			String shopListJson = mapper.writeValueAsString(shopList);

			req.setAttribute("shopList", shopListJson);

			req.setAttribute("selectedShopId", 1);
			req.setAttribute("selectedItemId", 1);

		} catch (SQLException e) {
			e.printStackTrace();
			next = ERROR_PAGE;
		}

>>>>>>> refs/remotes/origin/main
		RequestDispatcher rd = req.getRequestDispatcher(next);
		rd.forward(req, resp);

	}

}
