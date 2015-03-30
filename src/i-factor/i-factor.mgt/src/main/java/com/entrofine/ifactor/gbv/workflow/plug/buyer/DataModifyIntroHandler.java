package com.entrofine.ifactor.gbv.workflow.plug.buyer;

import java.sql.Connection;
import java.util.Map;

import jt.classic.system.workflow.WActivity;
import jt.classic.system.workflow.WInstanceManager;
import jt.classic.system.workflow.WPlugHandler;
import jt.classic.system.workflow.WorkflowException;

import org.limp.basework.AbstractSimpleBean;
import org.limp.basework.SimpleBean;
import org.limp.basework.impl.CommonBean4HSQ;
import org.limp.mine.DateTrimmer;

/**
 * handler event for buyer data modify start
 * 
 * @author wangweifeng
 * 
 */
public class DataModifyIntroHandler extends AbstractSimpleBean implements
		WPlugHandler {

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public boolean participate(Connection conn, SimpleBean bean)
			throws WorkflowException {

		WActivity theActivity = (WActivity) bean.getResource().get(
				"theActivity");

		WInstanceManager wim = new WInstanceManager(conn);

		Map opinionInfo = wim.getActivityOpinionContent(theActivity.id());

		if (opinionInfo == null) {
			throw new WorkflowException(
					"There cant not find opinion in current activity!");
		}

		if ("Modify".equals(opinionInfo.get("OPINION"))) {

			CommonBean4HSQ cbh = (CommonBean4HSQ) bean.getResource().get("CBH");
			// 设置超时时间
			cbh.getResource().put("altime",
					DateTrimmer.getAppointDate(null, 3) + "240000");

			// String remark = (String) opinionInfo.get("OPINION_TXT");
			// String imageRemark = (String) opinionInfo.get("IMAGE_REMARK");
			// String insId = theActivity.instance().id();
			// Map map = wim.getInstanceContent(insId, theActivity.instance()
			// .iflow().iobject().itableView("ifactor_buyer_apply"));
			// String id = WorkflowProxy.getAppPkId(map);

			// WorkflowProxy.syncFlowTable(bean, "IF_MGT_BUYER_FLOW_OPINION",
			// id,
			// "OPINION_TXT", remark);
			// WorkflowProxy.syncFlowTable(bean, "IF_MGT_BUYER_FLOW_OPINION",
			// id,
			// "IMAGE_REMARK", imageRemark);
			// send email

			return true;
		}

		return false;
	}

}
