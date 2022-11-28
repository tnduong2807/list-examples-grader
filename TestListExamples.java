import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.junit.*;

public class TestListExamples {
  @Test(timeout = 100)
    public void testFilter() {
        StringChecker sc = s1 -> s1.contains("Hello");
        List<String> input = new ArrayList<>();
        List<String> expected = new ArrayList<>();
        input.add("Hi Trong");
        input.add("Hello World!");
        input.add("everyone hi!");
        expected.add("Hi Trong");
        expected.add("everyone hi!");

        assertArrayEquals(expected.toArray(), ListExamples.filter(input, sc).toArray());
    }


  @Test(timeout = 100)
    public void testMerge() {
        List<String> input1 = new ArrayList<>();
        List<String> input2 = new ArrayList<>();
        List<String> expected = new ArrayList<>();
        input1.add("1");
        input1.add("3");
        input2.add("2");
        input2.add("4");
        expected.add("1");
        expected.add("2");
        expected.add("3");
        expected.add("4");

        assertArrayEquals(expected.toArray(), ListExamples.merge(input1, input2).toArray());
    }

}
