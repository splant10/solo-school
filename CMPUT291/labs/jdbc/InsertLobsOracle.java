/**
 *  A simple example to demonstrate how to use JDBC's PreparedStatement
 *  to insert an image into a table. The table PICTURES used in the example
 *  is created with
 *    create table pictures (
 *        photo_id integer, 
 *        title varchar(48), 
 *        place varchar(48),
 *        image long raw,
 *        primary key(photo_id)
 *     )
 * 
 *  Note that this program will not work for Oracle 9 if image is defined
 *  as BLOB and the image has 4K or more bytes.
 *
 *  @author  Li-Yan Yuan
 *
 */
import java.io.*;
import java.sql.*;

public class InsertLobsOracle {

      public static void main( String[] args)  {

          //  change the following parameters to connect to other databases
          String username = "********";
          String password = "********";
          String drivername = "oracle.jdbc.driver.OracleDriver";
          String dbstring ="jdbc:oracle:thin:@gwynne.cs.ualberta.ca:1521:CRS";

          // information for the new row, including a local file name of the image
          String file1 = "window-sm.jpg";
	        String title ="Window";
	        String place ="Utah";
	        int pid = 100;


          try {
            // to connect to the database
            Connection conn = getConnected(drivername,dbstring, username,password);

            //  create a preparedStatement with 
            //   ?  represents the lobs to be inserted
            PreparedStatement stmt = conn.prepareStatement(
                "insert into pictures values (" + pid + ", '" + title+ "', '" + place + "', ?)" );

	          stmt.clearParameters();
            // Set the first parameter 
            File file = new File( file1 );
	          System.out.println("the file length is " + file.length() );

            stmt.setBinaryStream(1,new FileInputStream(file),(int)file.length());

            // execute the insert statement
            stmt.executeUpdate();
            System.out.println( "the execution succeeds");
	          conn.commit();
            conn.close();
          } catch( Exception ex ) { 
              System.out.println( ex.getMessage());
          }
      }

      /*
       *   To connect to the specified database
       */
      private static Connection getConnected( String drivername,
                                              String dbstring,
                                              String username, 
                                              String password  ) 
          throws Exception {
          Class drvClass = Class.forName(drivername); 
          DriverManager.registerDriver((Driver) drvClass.newInstance());
          return( DriverManager.getConnection(dbstring,username,password));
      }
  } 
