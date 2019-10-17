package ${packageName}.fragment.presenter;

import com.thomas.core.mvp.BaseMvpPresenter;
import ${packageName}.fragment.contract.${pageName}Contract;
import ${packageName}.fragment.model.${pageName}Model;

/**
 * @describe
 * @author Thomas
 * @date ${.now?string["yyyy/MM/dd"]}
 * @updatelog
 * @since
 */
public class ${pageName}Presenter extends BaseMvpPresenter<${pageName}Contract.Model, ${pageName}Contract.View> implements ${pageName}Contract.Presenter {

 @Override
    protected ${pageName}Contract.Model createModel() {
        return new ${pageName}Model();
    }


}
