import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.junit.*;

public class TestListExamples {
  public void testFilter() {
    List<String> list = Arrays.asList();
    List<String> exp = Arrays.asList();
    StringChecker sc = new StringChecker() {
      public boolean checkString(String s) {
        if (s.contains("Test")) {
          return true;
        }
        return false;
      }
    };
    for (int i = 0; i < list.size(); i++) {
      list.add("Test" + i);
    }
    list.add(3, "banana");
    exp.add("banana");
    ListExamples.filter(list, sc);
    System.out.println(list);
  }

}
