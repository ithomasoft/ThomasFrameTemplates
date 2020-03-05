package ${packageName}.fragment;

import android.os.Bundle;
import androidx.annotation.NonNull;
import android.view.View;

import com.thomas.sdk.ui.ThomasMvpFragment;
import ${packageName}.fragment.contract.${pageName}Contract;
import ${packageName}.fragment.presenter.${pageName}Presenter;
import ${packageName}.R;


import butterknife.BindView;

/**
 * @describe
 * @author Thomas
 * @date ${.now?string["yyyy/MM/dd"]}
 * @updatelog
 * @since
 */
public class ${pageName}Fragment extends ThomasMvpFragment<${pageName}Presenter> implements ${pageName}Contract.View{
   
   
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
       return R.layout.fragment_${classToResource(pageName)};
    }

    @Override
    public void initView(Bundle savedInstanceState, View contentView) {
       
    }

    @Override
    public void doBusiness() {

    }
	
	@Override
    public void onFailed(Object tag,String failed) {
        
    }

}
