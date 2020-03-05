package ${packageName}.app;

import android.app.Application;
import android.content.Context;

import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentManager;

import com.thomas.core.component.AppLifecycles;
import com.thomas.core.component.ModuleConfig;

import java.util.List;

/**
 * ================================================
 * 
 * <p>
 * @describe 组件化模块中需要初始化的操作
 * @author Thomas
 * @date ${.now?string["yyyy/MM/dd"]}
 * @updatelog
 * @since
 * 
 * ================================================
 */
public class  ModuleConfiguration implements ModuleConfig {

    @Override
    public void injectAppLifecycle(@NonNull Context context, @NonNull List<AppLifecycles> lifecycles) {

    }

    @Override
    public void injectActivityLifecycle(@NonNull Context context, @NonNull List<Application.ActivityLifecycleCallbacks> lifecycles) {

    }

    @Override
    public void injectFragmentLifecycle(@NonNull Context context, @NonNull List<FragmentManager.FragmentLifecycleCallbacks> lifecycles) {

    }
}