package anno;

import java.lang.annotation.*;

/**
 * @author yjt
 * @since 2020/5/18 22:14
 */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface ApiRestController {
}
