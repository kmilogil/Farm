/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.utilidades;

import java.sql.Connection;

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
        
    }
    
}
