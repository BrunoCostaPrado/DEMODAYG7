
import java.nio.file.Path;

public class main {
    public static void public static void main(String[] args) {
        Spark.staticFileLocation( "public_html");
        
        Spark.get ("/", (request, response)->{
            return "hello World";
        } ) 
    }
}