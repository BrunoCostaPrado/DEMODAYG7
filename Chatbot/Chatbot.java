public class Main {
    public static void public static void main(String[] args) {
        Spark.staticFileLocation( "public_html");
        
        Spark.get ("/", (request, response)->{
            return "hello World";
        } ) 
    }
}