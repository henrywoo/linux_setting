import java.util.Scanner;
import java.util.ArrayList;
import java.io.File;

class read{
  public static void main(String [] args) throws Exception{
    Scanner s = new Scanner(new File("run.py"));
    ArrayList<String> list = new ArrayList<String>();
    while (s.hasNext()){
      String line=s.next();
      String[] parts = line.split(",");
      String part1 = parts[0];
      list.add(part1);
      System.out.println(part1);
    }
    s.close();
  }
}
