import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JTextArea;
import javax.swing.JScrollPane;
import java.awt.Color;
import java.awt.event.KeyListener;
import java.awt.event.KeyEvent;

public class CB extends JFrame implements KeyListener {
    JPanel p=new Jpanel();
    JTextArea dialog=new JTextArea(20, 50);
    JTextArea input=new JTextArea(1, 50);
    JScrollPane scroll=new JScrollPane(
        dialog, JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED,
    JScrollPane.HORIZONTAL_SCROLLBAR_NEVER
    );

    public static void main(String[] args){
        new CB();
    }
    
    public CB(){

    }
}
