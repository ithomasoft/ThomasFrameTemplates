package ${packageName}.fragment;

import android.os.Bundle;
import androidx.annotation.NonNull;
import android.view.View;

import com.thomas.sdk.ui.ThomasFragment;
import ${packageName}.R;

import butterknife.BindView;

/**
 * @describe
 * @author Thomas
 * @date ${.now?string["yyyy/MM/dd"]}
 * @updatelog
 * @since
 */
public class ${pageName}Fragment extends ThomasFragment {
   
   
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
    public void onBackPressed() {
        super.onBackPressed();
      //TODO 如果使用fragment，这里写回退后的一些逻辑
    }

}
