/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Models.Horarios;
import java.util.ArrayList;
import Interface.IHorario;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author LEO
 */
public class DaoHorario implements IHorario{

    @Override
    public ArrayList<Horarios> listHorarios() {
        ArrayList<Horarios> list = new ArrayList<>();
        
        DbConnection conn = new DbConnection();
        Connection cn = conn.getConnection();
        
        String listprocedure = "{CALL sp_listarcategorias()}";
        
        if(cn != null){
            try {
                CallableStatement cb = conn.getConnection().prepareCall(listprocedure);
                ResultSet rs = cb.executeQuery();
                
                while(rs.next()){
                    Horarios horarios = new Horarios();
                    list.add(horarios);
                }
                
            } catch (SQLException e) {
                System.out.println("Error al listar " + e.getMessage());
            }finally{
                try {
                    cn.close();
                } catch (Exception e) {
                    System.out.println("Error "+e.getMessage());
                }
            }
        }
        
        return list;
    }

    @Override
    public boolean insertHorarios(Horarios horario) {
        boolean insert = false;
        int res;
        
        DbConnection conn = new DbConnection();
        Connection cn = conn.getConnection();
        
        if(cn != null){
            try {
                CallableStatement cs = cn.prepareCall("CALL sp_insertcategorias(?,?,?)");
                
                res = cs.executeUpdate();
                if(res == 1){
                    insert = true;
                }
            } catch (SQLException ex) {
                System.out.println("Error alinsertar " + ex.getMessage());
            }finally{
                try {
                    cn.close();
                } catch (Exception e) {
                    System.out.println("Error" + e.getMessage());
                }
            }
        }
        
        return insert;
    }

    @Override
    public boolean updateHorarios(Horarios horario) {
        boolean update = false;
        int res;
        DbConnection conn = new DbConnection();
        Connection cn = conn.getConnection();
        
        if(cn != null){
            try {
                CallableStatement cs = cn.prepareCall("CALL sp_updatecategoria(?,?,?)");
                
                res = cs.executeUpdate();
                if(res == 1){
                    update = true;
                }
            } catch (SQLException ex) {
                System.out.println("Error actualizar " + ex.getMessage());
            }finally{
                try {
                    cn.close();
                } catch (Exception e) {
                    System.out.println("Error" + e.getMessage());
                }
            }
        }
        return update;
    }

    @Override
    public boolean deleteHorarios(int idHorario) {
        boolean delete = false;

        DbConnection conn = new DbConnection();
        Connection cn = conn.getConnection();
        
        if(cn != null){
            try {
                CallableStatement cs = cn.prepareCall("CALL sp_eliminarcategoria(?)");
                cs.setInt(1, idHorario);
                cs.executeUpdate();
                
                delete = true;
            } catch (SQLException ex) {
                System.out.println("Error al eliminar " + ex.getMessage());
            }finally{
                try {
                    cn.close();
                } catch (Exception e) {
                    System.out.println("Error" + e.getMessage());
                }
            }
        }
        
        return delete;
    }
    
}
