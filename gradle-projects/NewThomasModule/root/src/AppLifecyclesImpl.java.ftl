package ${packageName};

import android.app.Application;
import android.content.Context;

import androidx.annotation.NonNull;

import com.thomas.core.component.AppLifecycles;

/**
 * ================================================
 * 
 * <p>
 * @describe 实现的组件化的Application的生命周期
 * @author Thomas
 * @date ${.now?string["yyyy/MM/dd"]}
 * @updatelog
 * @since
 * 
 * ================================================
 */
public class AppLifecyclesImpl implements AppLifecycles {
    @Override
    public void attachBaseContext(@NonNull Context base) {

    }

    @Override
    public void onCreate(@NonNull Application application) {

    }

    @Override
    public void onTerminate(@NonNull Application application) {

    }
}
