package com.foo.wetrip.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class FlowExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public FlowExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andFlowIdIsNull() {
            addCriterion("flow_id is null");
            return (Criteria) this;
        }

        public Criteria andFlowIdIsNotNull() {
            addCriterion("flow_id is not null");
            return (Criteria) this;
        }

        public Criteria andFlowIdEqualTo(Integer value) {
            addCriterion("flow_id =", value, "flowId");
            return (Criteria) this;
        }

        public Criteria andFlowIdNotEqualTo(Integer value) {
            addCriterion("flow_id <>", value, "flowId");
            return (Criteria) this;
        }

        public Criteria andFlowIdGreaterThan(Integer value) {
            addCriterion("flow_id >", value, "flowId");
            return (Criteria) this;
        }

        public Criteria andFlowIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("flow_id >=", value, "flowId");
            return (Criteria) this;
        }

        public Criteria andFlowIdLessThan(Integer value) {
            addCriterion("flow_id <", value, "flowId");
            return (Criteria) this;
        }

        public Criteria andFlowIdLessThanOrEqualTo(Integer value) {
            addCriterion("flow_id <=", value, "flowId");
            return (Criteria) this;
        }

        public Criteria andFlowIdIn(List<Integer> values) {
            addCriterion("flow_id in", values, "flowId");
            return (Criteria) this;
        }

        public Criteria andFlowIdNotIn(List<Integer> values) {
            addCriterion("flow_id not in", values, "flowId");
            return (Criteria) this;
        }

        public Criteria andFlowIdBetween(Integer value1, Integer value2) {
            addCriterion("flow_id between", value1, value2, "flowId");
            return (Criteria) this;
        }

        public Criteria andFlowIdNotBetween(Integer value1, Integer value2) {
            addCriterion("flow_id not between", value1, value2, "flowId");
            return (Criteria) this;
        }

        public Criteria andFlowNumIsNull() {
            addCriterion("flow_num is null");
            return (Criteria) this;
        }

        public Criteria andFlowNumIsNotNull() {
            addCriterion("flow_num is not null");
            return (Criteria) this;
        }

        public Criteria andFlowNumEqualTo(String value) {
            addCriterion("flow_num =", value, "flowNum");
            return (Criteria) this;
        }

        public Criteria andFlowNumNotEqualTo(String value) {
            addCriterion("flow_num <>", value, "flowNum");
            return (Criteria) this;
        }

        public Criteria andFlowNumGreaterThan(String value) {
            addCriterion("flow_num >", value, "flowNum");
            return (Criteria) this;
        }

        public Criteria andFlowNumGreaterThanOrEqualTo(String value) {
            addCriterion("flow_num >=", value, "flowNum");
            return (Criteria) this;
        }

        public Criteria andFlowNumLessThan(String value) {
            addCriterion("flow_num <", value, "flowNum");
            return (Criteria) this;
        }

        public Criteria andFlowNumLessThanOrEqualTo(String value) {
            addCriterion("flow_num <=", value, "flowNum");
            return (Criteria) this;
        }

        public Criteria andFlowNumLike(String value) {
            addCriterion("flow_num like", value, "flowNum");
            return (Criteria) this;
        }

        public Criteria andFlowNumNotLike(String value) {
            addCriterion("flow_num not like", value, "flowNum");
            return (Criteria) this;
        }

        public Criteria andFlowNumIn(List<String> values) {
            addCriterion("flow_num in", values, "flowNum");
            return (Criteria) this;
        }

        public Criteria andFlowNumNotIn(List<String> values) {
            addCriterion("flow_num not in", values, "flowNum");
            return (Criteria) this;
        }

        public Criteria andFlowNumBetween(String value1, String value2) {
            addCriterion("flow_num between", value1, value2, "flowNum");
            return (Criteria) this;
        }

        public Criteria andFlowNumNotBetween(String value1, String value2) {
            addCriterion("flow_num not between", value1, value2, "flowNum");
            return (Criteria) this;
        }

        public Criteria andTradePriceIsNull() {
            addCriterion("trade_price is null");
            return (Criteria) this;
        }

        public Criteria andTradePriceIsNotNull() {
            addCriterion("trade_price is not null");
            return (Criteria) this;
        }

        public Criteria andTradePriceEqualTo(String value) {
            addCriterion("trade_price =", value, "tradePrice");
            return (Criteria) this;
        }

        public Criteria andTradePriceNotEqualTo(String value) {
            addCriterion("trade_price <>", value, "tradePrice");
            return (Criteria) this;
        }

        public Criteria andTradePriceGreaterThan(String value) {
            addCriterion("trade_price >", value, "tradePrice");
            return (Criteria) this;
        }

        public Criteria andTradePriceGreaterThanOrEqualTo(String value) {
            addCriterion("trade_price >=", value, "tradePrice");
            return (Criteria) this;
        }

        public Criteria andTradePriceLessThan(String value) {
            addCriterion("trade_price <", value, "tradePrice");
            return (Criteria) this;
        }

        public Criteria andTradePriceLessThanOrEqualTo(String value) {
            addCriterion("trade_price <=", value, "tradePrice");
            return (Criteria) this;
        }

        public Criteria andTradePriceLike(String value) {
            addCriterion("trade_price like", value, "tradePrice");
            return (Criteria) this;
        }

        public Criteria andTradePriceNotLike(String value) {
            addCriterion("trade_price not like", value, "tradePrice");
            return (Criteria) this;
        }

        public Criteria andTradePriceIn(List<String> values) {
            addCriterion("trade_price in", values, "tradePrice");
            return (Criteria) this;
        }

        public Criteria andTradePriceNotIn(List<String> values) {
            addCriterion("trade_price not in", values, "tradePrice");
            return (Criteria) this;
        }

        public Criteria andTradePriceBetween(String value1, String value2) {
            addCriterion("trade_price between", value1, value2, "tradePrice");
            return (Criteria) this;
        }

        public Criteria andTradePriceNotBetween(String value1, String value2) {
            addCriterion("trade_price not between", value1, value2, "tradePrice");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNull() {
            addCriterion("create_time is null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIsNotNull() {
            addCriterion("create_time is not null");
            return (Criteria) this;
        }

        public Criteria andCreateTimeEqualTo(Date value) {
            addCriterion("create_time =", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotEqualTo(Date value) {
            addCriterion("create_time <>", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThan(Date value) {
            addCriterion("create_time >", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("create_time >=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThan(Date value) {
            addCriterion("create_time <", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("create_time <=", value, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeIn(List<Date> values) {
            addCriterion("create_time in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotIn(List<Date> values) {
            addCriterion("create_time not in", values, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeBetween(Date value1, Date value2) {
            addCriterion("create_time between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("create_time not between", value1, value2, "createTime");
            return (Criteria) this;
        }

        public Criteria andOrderNumIsNull() {
            addCriterion("order_num is null");
            return (Criteria) this;
        }

        public Criteria andOrderNumIsNotNull() {
            addCriterion("order_num is not null");
            return (Criteria) this;
        }

        public Criteria andOrderNumEqualTo(String value) {
            addCriterion("order_num =", value, "orderNum");
            return (Criteria) this;
        }

        public Criteria andOrderNumNotEqualTo(String value) {
            addCriterion("order_num <>", value, "orderNum");
            return (Criteria) this;
        }

        public Criteria andOrderNumGreaterThan(String value) {
            addCriterion("order_num >", value, "orderNum");
            return (Criteria) this;
        }

        public Criteria andOrderNumGreaterThanOrEqualTo(String value) {
            addCriterion("order_num >=", value, "orderNum");
            return (Criteria) this;
        }

        public Criteria andOrderNumLessThan(String value) {
            addCriterion("order_num <", value, "orderNum");
            return (Criteria) this;
        }

        public Criteria andOrderNumLessThanOrEqualTo(String value) {
            addCriterion("order_num <=", value, "orderNum");
            return (Criteria) this;
        }

        public Criteria andOrderNumLike(String value) {
            addCriterion("order_num like", value, "orderNum");
            return (Criteria) this;
        }

        public Criteria andOrderNumNotLike(String value) {
            addCriterion("order_num not like", value, "orderNum");
            return (Criteria) this;
        }

        public Criteria andOrderNumIn(List<String> values) {
            addCriterion("order_num in", values, "orderNum");
            return (Criteria) this;
        }

        public Criteria andOrderNumNotIn(List<String> values) {
            addCriterion("order_num not in", values, "orderNum");
            return (Criteria) this;
        }

        public Criteria andOrderNumBetween(String value1, String value2) {
            addCriterion("order_num between", value1, value2, "orderNum");
            return (Criteria) this;
        }

        public Criteria andOrderNumNotBetween(String value1, String value2) {
            addCriterion("order_num not between", value1, value2, "orderNum");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}