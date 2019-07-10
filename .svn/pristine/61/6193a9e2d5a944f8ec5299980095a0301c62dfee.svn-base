package com.foo.wetrip.bean;

import java.util.ArrayList;
import java.util.List;

public class TicketTypeExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TicketTypeExample() {
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

        public Criteria andTicketTypeIdIsNull() {
            addCriterion("ticket_type_id is null");
            return (Criteria) this;
        }

        public Criteria andTicketTypeIdIsNotNull() {
            addCriterion("ticket_type_id is not null");
            return (Criteria) this;
        }

        public Criteria andTicketTypeIdEqualTo(Integer value) {
            addCriterion("ticket_type_id =", value, "ticketTypeId");
            return (Criteria) this;
        }

        public Criteria andTicketTypeIdNotEqualTo(Integer value) {
            addCriterion("ticket_type_id <>", value, "ticketTypeId");
            return (Criteria) this;
        }

        public Criteria andTicketTypeIdGreaterThan(Integer value) {
            addCriterion("ticket_type_id >", value, "ticketTypeId");
            return (Criteria) this;
        }

        public Criteria andTicketTypeIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("ticket_type_id >=", value, "ticketTypeId");
            return (Criteria) this;
        }

        public Criteria andTicketTypeIdLessThan(Integer value) {
            addCriterion("ticket_type_id <", value, "ticketTypeId");
            return (Criteria) this;
        }

        public Criteria andTicketTypeIdLessThanOrEqualTo(Integer value) {
            addCriterion("ticket_type_id <=", value, "ticketTypeId");
            return (Criteria) this;
        }

        public Criteria andTicketTypeIdIn(List<Integer> values) {
            addCriterion("ticket_type_id in", values, "ticketTypeId");
            return (Criteria) this;
        }

        public Criteria andTicketTypeIdNotIn(List<Integer> values) {
            addCriterion("ticket_type_id not in", values, "ticketTypeId");
            return (Criteria) this;
        }

        public Criteria andTicketTypeIdBetween(Integer value1, Integer value2) {
            addCriterion("ticket_type_id between", value1, value2, "ticketTypeId");
            return (Criteria) this;
        }

        public Criteria andTicketTypeIdNotBetween(Integer value1, Integer value2) {
            addCriterion("ticket_type_id not between", value1, value2, "ticketTypeId");
            return (Criteria) this;
        }

        public Criteria andTicketTypeNameIsNull() {
            addCriterion("ticket_type_name is null");
            return (Criteria) this;
        }

        public Criteria andTicketTypeNameIsNotNull() {
            addCriterion("ticket_type_name is not null");
            return (Criteria) this;
        }

        public Criteria andTicketTypeNameEqualTo(String value) {
            addCriterion("ticket_type_name =", value, "ticketTypeName");
            return (Criteria) this;
        }

        public Criteria andTicketTypeNameNotEqualTo(String value) {
            addCriterion("ticket_type_name <>", value, "ticketTypeName");
            return (Criteria) this;
        }

        public Criteria andTicketTypeNameGreaterThan(String value) {
            addCriterion("ticket_type_name >", value, "ticketTypeName");
            return (Criteria) this;
        }

        public Criteria andTicketTypeNameGreaterThanOrEqualTo(String value) {
            addCriterion("ticket_type_name >=", value, "ticketTypeName");
            return (Criteria) this;
        }

        public Criteria andTicketTypeNameLessThan(String value) {
            addCriterion("ticket_type_name <", value, "ticketTypeName");
            return (Criteria) this;
        }

        public Criteria andTicketTypeNameLessThanOrEqualTo(String value) {
            addCriterion("ticket_type_name <=", value, "ticketTypeName");
            return (Criteria) this;
        }

        public Criteria andTicketTypeNameLike(String value) {
            addCriterion("ticket_type_name like", value, "ticketTypeName");
            return (Criteria) this;
        }

        public Criteria andTicketTypeNameNotLike(String value) {
            addCriterion("ticket_type_name not like", value, "ticketTypeName");
            return (Criteria) this;
        }

        public Criteria andTicketTypeNameIn(List<String> values) {
            addCriterion("ticket_type_name in", values, "ticketTypeName");
            return (Criteria) this;
        }

        public Criteria andTicketTypeNameNotIn(List<String> values) {
            addCriterion("ticket_type_name not in", values, "ticketTypeName");
            return (Criteria) this;
        }

        public Criteria andTicketTypeNameBetween(String value1, String value2) {
            addCriterion("ticket_type_name between", value1, value2, "ticketTypeName");
            return (Criteria) this;
        }

        public Criteria andTicketTypeNameNotBetween(String value1, String value2) {
            addCriterion("ticket_type_name not between", value1, value2, "ticketTypeName");
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