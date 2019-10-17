package ${packageName}.app;

import android.app.Application;
import com.thomas.sdk.arms.ConfigModule;

/**
 * ================================================
 * 
 * <p>
 * @describe 组件化中需要初始化的操作
 * @author Thomas
 * @date ${.now?string["yyyy/MM/dd"]}
 * @updatelog
 * @since
 * 
 * ================================================
 */
public class  GlobalConfiguration implements ConfigModule {
    @Override
    public void onCreate(Application application) {
        
    }
}