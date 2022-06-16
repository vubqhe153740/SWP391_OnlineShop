/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Account;
import Model.UserInfo;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class UserInfoDAO extends DBcontext.DBContext {


    public void saveUserInfo(UserInfo acc) {
            String sql = "INSERT INTO [dbo].[User_info]\n"
                + "           ([UserID]\n"
                + "           ,[Firstname]\n"
                + "           ,[Lastname]\n"
                + "           ,[Address]\n"
                + "           ,[PhoneNum])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, acc.getUid());
            ps.setString(2, acc.getFirstName());
            ps.setString(3, acc.getLastName());
            ps.setString(4, acc.getAddress());
            ps.setString(5, acc.getPhonenum());
            ps.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    public UserInfo getAccountDetail(String cid) {
        String sql = "select ui.*,u.Username,u.Password,u.email,u.isBlock,r.* from User_info ui join Users u \n"
                + "on ui.UserID = u.UserID \n"
                + "join Role r on r.RoleID = u.RoleID\n"
                + "where u.UserID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, cid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Users_info(rs.getInt(1),
                        new Users(rs.getInt(2), rs.getString(7), rs.getString(8), rs.getString(9), new Role(rs.getInt(11), rs.getString(12)), rs.getInt(10)),
                        rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
            }
        } catch (Exception e) {
        }

        return null;
    }
}
