/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package uk.ac.dundee.computing.aec.instatoons.stores;

/**
 *
 * @author Administrator
 */
public class RegErrors {
    static int regError=0;
    static int logError=0;
    static String errorType=null;
    public RegErrors(){
        
    }
    
    //Using the Login.java, it reads the data from the database and it fills all the variables, so it can pass them if they are needed

    public void setRegError(int regError){
        RegErrors.regError=regError;
    }
    public static String getRegType(){
    	if (regError==1)
    		errorType="Password and Confirm Password are not the same";
        return errorType;
    }
    public void resetRegError(String errorType){
        RegErrors.errorType=errorType;
    }
    public void setLogError(int logError){
        RegErrors.logError=logError;
    }
    public static String getLogType(){
    	if (logError==1)
    		errorType="Check username and password";
        return errorType;
    }
    public void resetLogError(String errorType){
        RegErrors.errorType=errorType;
    }
}
