package com.foo.wetrip.bean;

import java.util.ArrayList;
import java.util.List;
import java.util.Date;

public class AnswerExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public AnswerExample() {
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

        public Criteria andAnswerIdIsNull() {
            addCriterion("answer_id is null");
            return (Criteria) this;
        }

        public Criteria andAnswerIdIsNotNull() {
            addCriterion("answer_id is not null");
            return (Criteria) this;
        }

        public Criteria andAnswerIdEqualTo(Integer value) {
            addCriterion("answer_id =", value, "answerId");
            return (Criteria) this;
        }

        public Criteria andAnswerIdNotEqualTo(Integer value) {
            addCriterion("answer_id <>", value, "answerId");
            return (Criteria) this;
        }

        public Criteria andAnswerIdGreaterThan(Integer value) {
            addCriterion("answer_id >", value, "answerId");
            return (Criteria) this;
        }

        public Criteria andAnswerIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("answer_id >=", value, "answerId");
            return (Criteria) this;
        }

        public Criteria andAnswerIdLessThan(Integer value) {
            addCriterion("answer_id <", value, "answerId");
            return (Criteria) this;
        }

        public Criteria andAnswerIdLessThanOrEqualTo(Integer value) {
            addCriterion("answer_id <=", value, "answerId");
            return (Criteria) this;
        }

        public Criteria andAnswerIdIn(List<Integer> values) {
            addCriterion("answer_id in", values, "answerId");
            return (Criteria) this;
        }

        public Criteria andAnswerIdNotIn(List<Integer> values) {
            addCriterion("answer_id not in", values, "answerId");
            return (Criteria) this;
        }

        public Criteria andAnswerIdBetween(Integer value1, Integer value2) {
            addCriterion("answer_id between", value1, value2, "answerId");
            return (Criteria) this;
        }

        public Criteria andAnswerIdNotBetween(Integer value1, Integer value2) {
            addCriterion("answer_id not between", value1, value2, "answerId");
            return (Criteria) this;
        }

        public Criteria andFeedbackIdIsNull() {
            addCriterion("feedback_id is null");
            return (Criteria) this;
        }

        public Criteria andFeedbackIdIsNotNull() {
            addCriterion("feedback_id is not null");
            return (Criteria) this;
        }

        public Criteria andFeedbackIdEqualTo(Integer value) {
            addCriterion("feedback_id =", value, "feedbackId");
            return (Criteria) this;
        }

        public Criteria andFeedbackIdNotEqualTo(Integer value) {
            addCriterion("feedback_id <>", value, "feedbackId");
            return (Criteria) this;
        }

        public Criteria andFeedbackIdGreaterThan(Integer value) {
            addCriterion("feedback_id >", value, "feedbackId");
            return (Criteria) this;
        }

        public Criteria andFeedbackIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("feedback_id >=", value, "feedbackId");
            return (Criteria) this;
        }

        public Criteria andFeedbackIdLessThan(Integer value) {
            addCriterion("feedback_id <", value, "feedbackId");
            return (Criteria) this;
        }

        public Criteria andFeedbackIdLessThanOrEqualTo(Integer value) {
            addCriterion("feedback_id <=", value, "feedbackId");
            return (Criteria) this;
        }

        public Criteria andFeedbackIdIn(List<Integer> values) {
            addCriterion("feedback_id in", values, "feedbackId");
            return (Criteria) this;
        }

        public Criteria andFeedbackIdNotIn(List<Integer> values) {
            addCriterion("feedback_id not in", values, "feedbackId");
            return (Criteria) this;
        }

        public Criteria andFeedbackIdBetween(Integer value1, Integer value2) {
            addCriterion("feedback_id between", value1, value2, "feedbackId");
            return (Criteria) this;
        }

        public Criteria andFeedbackIdNotBetween(Integer value1, Integer value2) {
            addCriterion("feedback_id not between", value1, value2, "feedbackId");
            return (Criteria) this;
        }


        public Criteria andAnswerIsNull() {
            addCriterion("answer is null");
            return (Criteria) this;
        }

        public Criteria andAnswerIsNotNull() {
            addCriterion("answer is not null");
            return (Criteria) this;
        }

        public Criteria andAnswerEqualTo(String value) {
            addCriterion("answer =", value, "answer");
            return (Criteria) this;
        }

        public Criteria andAnswerNotEqualTo(String value) {
            addCriterion("answer <>", value, "answer");
            return (Criteria) this;
        }

        public Criteria andAnswerGreaterThan(String value) {
            addCriterion("answer >", value, "answer");
            return (Criteria) this;
        }

        public Criteria andAnswerGreaterThanOrEqualTo(String value) {
            addCriterion("answer >=", value, "answer");
            return (Criteria) this;
        }

        public Criteria andAnswerLessThan(String value) {
            addCriterion("answer <", value, "answer");
            return (Criteria) this;
        }

        public Criteria andAnswerLessThanOrEqualTo(String value) {
            addCriterion("answer <=", value, "answer");
            return (Criteria) this;
        }

        public Criteria andAnswerLike(String value) {
            addCriterion("answer like", value, "answer");
            return (Criteria) this;
        }

        public Criteria andAnswerNotLike(String value) {
            addCriterion("answer not like", value, "answer");
            return (Criteria) this;
        }

        public Criteria andAnswerIn(List<String> values) {
            addCriterion("answer in", values, "answer");
            return (Criteria) this;
        }

        public Criteria andAnswerNotIn(List<String> values) {
            addCriterion("answer not in", values, "answer");
            return (Criteria) this;
        }

        public Criteria andAnswerBetween(String value1, String value2) {
            addCriterion("answer between", value1, value2, "answer");
            return (Criteria) this;
        }

        public Criteria andAnswerNotBetween(String value1, String value2) {
            addCriterion("answer not between", value1, value2, "answer");
            return (Criteria) this;
        }


        public Criteria andAnswerTimeIsNull() {
            addCriterion("answer_time is null");
            return (Criteria) this;
        }

        public Criteria andAnswerTimeTimeIsNotNull() {
            addCriterion("answer_time is not null");
            return (Criteria) this;
        }

        public Criteria andAnswerTimeEqualTo(Date value) {
            addCriterion("answer_time =", value, "answerTime");
            return (Criteria) this;
        }

        public Criteria andAnswerTimeNotEqualTo(Date value) {
            addCriterion("answer_time <>", value, "answerTime");
            return (Criteria) this;
        }

        public Criteria andAnswerTimeGreaterThan(Date value) {
            addCriterion("answer_time >", value, "answerTime");
            return (Criteria) this;
        }

        public Criteria andAnswerTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("answer_time >=", value, "answerTime");
            return (Criteria) this;
        }

        public Criteria andAnswerTimeLessThan(Date value) {
            addCriterion("answer_time <", value, "answerTime");
            return (Criteria) this;
        }

        public Criteria andAnswerTimeLessThanOrEqualTo(Date value) {
            addCriterion("answer_time <=", value, "answerTime");
            return (Criteria) this;
        }

        public Criteria andAnswerTimeIn(List<Date> values) {
            addCriterion("answer_time in", values, "answerTime");
            return (Criteria) this;
        }

        public Criteria andAnswerTimeNotIn(List<Date> values) {
            addCriterion("answer_time not in", values, "answerTime");
            return (Criteria) this;
        }

        public Criteria andAnswerTimeBetween(Date value1, Date value2) {
            addCriterion("answer_time between", value1, value2, "answerTime");
            return (Criteria) this;
        }

        public Criteria andAnswerTimeNotBetween(Date value1, Date value2) {
            addCriterion("answer_time not between", value1, value2, "answerTime");
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