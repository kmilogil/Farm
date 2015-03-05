/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.utilidades;

import java.sql.Connection;
import java.util.ArrayList;
import modelo.daos.CiudadDao;
import modelo.daos.DepartamentoDao;
import modelo.dtos.CiudadDto;
import modelo.dtos.DepartamentoDto;

/**
 *
 * @author kennross
 */
public class PruebaConexion {
    
    public static void main (String[] args) {
        
        Connection miCon = Conexion.getInstance();
        
        if (miCon != null) {
            System.out.println("ok");
        } else {
            System.out.println("Error");
        }
        
        CiudadDao udao = new CiudadDao();
        
        ArrayList<CiudadDto> misCiudades;
        misCiudades = (ArrayList<CiudadDto>) udao.obtenerCiudades();
        
        for (CiudadDto p: misCiudades) {
            System.out.println(p);
        }                
        
        System.out.println(udao.obtenerNombrePorId(23417));
        
        System.out.println("-----------------------------------------------");
        
        DepartamentoDao ddao = new DepartamentoDao();
        ArrayList<DepartamentoDto> misDepartamentos;
        
        misDepartamentos = (ArrayList<DepartamentoDto>) ddao.obtenerDepartamentos();
        
        for (DepartamentoDto p: misDepartamentos) {
            System.out.println(p);
        }
        
        System.out.println(ddao.obtenerNombrePorId(5));
    }
    
}
