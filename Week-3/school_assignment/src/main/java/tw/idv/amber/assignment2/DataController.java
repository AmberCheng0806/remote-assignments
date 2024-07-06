package tw.idv.amber.assignment2;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DataController {
    @GetMapping("data")
    public String data(@RequestParam(required = false) String number) {
        if (number == null || number.isEmpty()) {
            return "Lack of Parameter";
        } else {
            try {
                int i = Integer.parseInt(number);
                int sum = 0;
                for (int j = 1; j <= i; j++) {
                    sum += j;
                }
                return String.valueOf(sum);
            } catch (NumberFormatException e) {
                return "Wrong Parameter";
            }
        }
    }

}

