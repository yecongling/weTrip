package com.foo.wetrip.util;

/**
 * 
 * @Title: OrderStatusEnum.java
 * @Package com.sihai.common.enums
 * @Description: 订单状态
 * Copyright: Copyright (c) 2016
 * Company:FURUIBOKE.SCIENCE.AND.TECHNOLOGY
 * 
 * @version V1.0
 */
public enum OrderStatusEnum {

	WAIT_PAY("10", "待付款"),			// 待付款
	PAID("20", "已付款"),				// 已付款
	CANCELED("30", "申请退款"),			// 申请退款
	CLOSED("40", "交易关闭"),			// 超时未支付, 交易关闭
    REFUNDED("50","已退款");                   //已退款

	public final String key;
	public final String value;


	OrderStatusEnum(String key, String value) {
		this.key = key;
		this.value = value;
	}

	public static String getName(String key) {
		for (OrderStatusEnum status : OrderStatusEnum.values()) {
			if (status.getKey().equals(key)) {
				return status.value;
			}
		}
		return null;
	}
	 
	public String getKey() {
		return key;
	}

	public String getValue() {
		return value;
	}
}