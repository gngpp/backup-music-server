package anno;

import java.lang.annotation.*;

/**
 * @author yjt
 * @since 2020/5/18 22:17
 */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface AdminRestController {
}