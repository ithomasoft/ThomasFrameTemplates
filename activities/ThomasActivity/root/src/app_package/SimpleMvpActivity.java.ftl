package ${packageName}.ui;

import android.os.Bundle;
import androidx.annotation.NonNull;
import android.view.View;

import com.alibaba.android.arouter.facade.annotation.Route;
import com.thomas.sdk.ui.ThomasMvpActivity;
import ${packageName}.ui.contract.${pageName}Contract;
import ${packageName}.ui.presenter.${pageName}Presenter;
import ${packageName}.R;
import ${packageName}.R2;


import butterknife.BindView;

/**
 * @describe
 * @author Thomas
 * @date ${.now?string["yyyy/MM/dd"]}
 * @updatelog
 * @since
 */
@Route(path = "")//TODO 添加路由path
public class ${pageName}Activity extends DrumMvpActivity<${pageName}Presenter> implements ${pageName}Contract.View{
   
   
   
    @Override
    protected ${pageName}Presenter createPresenter() {
        return new ${pageName}Presenter();
    }

    @Override
    public boolean isNeedRegister() {
        return false;
    }

    @Override
    public void initData(@NonNull Bundle bundle) {

    }

    @Override
    public int bindLayout() {
        return R.layout.${activityToLayout(pageName)};
    }

    @Override
    public void initView(Bundle savedInstanceState, View contentView) {
        
    }

    @Override
    public void doBusiness() {

    }

    @Override
    public void onFailed(String failed) {
        
    }

}
