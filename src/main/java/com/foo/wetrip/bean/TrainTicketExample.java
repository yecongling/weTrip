package com.foo.wetrip.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class TrainTicketExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TrainTicketExample() {
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

        protected void addCriterionForJDBCTime(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Time(value.getTime()), property);
        }

        protected void addCriterionForJDBCTime(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Time> timeList = new ArrayList<java.sql.Time>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                timeList.add(new java.sql.Time(iter.next().getTime()));
            }
            addCriterion(condition, timeList, property);
        }

        protected void addCriterionForJDBCTime(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Time(value1.getTime()), new java.sql.Time(value2.getTime()), property);
        }

        public Criteria andTicketIdIsNull() {
            addCriterion("ticket_id is null");
            return (Criteria) this;
        }

        public Criteria andTicketIdIsNotNull() {
            addCriterion("ticket_id is not null");
            return (Criteria) this;
        }

        public Criteria andTicketIdEqualTo(Integer value) {
            addCriterion("ticket_id =", value, "ticketId");
            return (Criteria) this;
        }

        public Criteria andTicketIdNotEqualTo(Integer value) {
            addCriterion("ticket_id <>", value, "ticketId");
            return (Criteria) this;
        }

        public Criteria andTicketIdGreaterThan(Integer value) {
            addCriterion("ticket_id >", value, "ticketId");
            return (Criteria) this;
        }

        public Criteria andTicketIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("ticket_id >=", value, "ticketId");
            return (Criteria) this;
        }

        public Criteria andTicketIdLessThan(Integer value) {
            addCriterion("ticket_id <", value, "ticketId");
            return (Criteria) this;
        }

        public Criteria andTicketIdLessThanOrEqualTo(Integer value) {
            addCriterion("ticket_id <=", value, "ticketId");
            return (Criteria) this;
        }

        public Criteria andTicketIdIn(List<Integer> values) {
            addCriterion("ticket_id in", values, "ticketId");
            return (Criteria) this;
        }

        public Criteria andTicketIdNotIn(List<Integer> values) {
            addCriterion("ticket_id not in", values, "ticketId");
            return (Criteria) this;
        }

        public Criteria andTicketIdBetween(Integer value1, Integer value2) {
            addCriterion("ticket_id between", value1, value2, "ticketId");
            return (Criteria) this;
        }

        public Criteria andTicketIdNotBetween(Integer value1, Integer value2) {
            addCriterion("ticket_id not between", value1, value2, "ticketId");
            return (Criteria) this;
        }

        public Criteria andTicketFromIsNull() {
            addCriterion("ticket_from is null");
            return (Criteria) this;
        }

        public Criteria andTicketFromIsNotNull() {
            addCriterion("ticket_from is not null");
            return (Criteria) this;
        }

        public Criteria andTicketFromEqualTo(String value) {
            addCriterion("ticket_from =", value, "ticketFrom");
            return (Criteria) this;
        }

        public Criteria andTicketFromNotEqualTo(String value) {
            addCriterion("ticket_from <>", value, "ticketFrom");
            return (Criteria) this;
        }

        public Criteria andTicketFromGreaterThan(String value) {
            addCriterion("ticket_from >", value, "ticketFrom");
            return (Criteria) this;
        }

        public Criteria andTicketFromGreaterThanOrEqualTo(String value) {
            addCriterion("ticket_from >=", value, "ticketFrom");
            return (Criteria) this;
        }

        public Criteria andTicketFromLessThan(String value) {
            addCriterion("ticket_from <", value, "ticketFrom");
            return (Criteria) this;
        }

        public Criteria andTicketFromLessThanOrEqualTo(String value) {
            addCriterion("ticket_from <=", value, "ticketFrom");
            return (Criteria) this;
        }

        public Criteria andTicketFromLike(String value) {
            addCriterion("ticket_from like", value, "ticketFrom");
            return (Criteria) this;
        }

        public Criteria andTicketFromNotLike(String value) {
            addCriterion("ticket_from not like", value, "ticketFrom");
            return (Criteria) this;
        }

        public Criteria andTicketFromIn(List<String> values) {
            addCriterion("ticket_from in", values, "ticketFrom");
            return (Criteria) this;
        }

        public Criteria andTicketFromNotIn(List<String> values) {
            addCriterion("ticket_from not in", values, "ticketFrom");
            return (Criteria) this;
        }

        public Criteria andTicketFromBetween(String value1, String value2) {
            addCriterion("ticket_from between", value1, value2, "ticketFrom");
            return (Criteria) this;
        }

        public Criteria andTicketFromNotBetween(String value1, String value2) {
            addCriterion("ticket_from not between", value1, value2, "ticketFrom");
            return (Criteria) this;
        }

        public Criteria andTicketToIsNull() {
            addCriterion("ticket_to is null");
            return (Criteria) this;
        }

        public Criteria andTicketToIsNotNull() {
            addCriterion("ticket_to is not null");
            return (Criteria) this;
        }

        public Criteria andTicketToEqualTo(String value) {
            addCriterion("ticket_to =", value, "ticketTo");
            return (Criteria) this;
        }

        public Criteria andTicketToNotEqualTo(String value) {
            addCriterion("ticket_to <>", value, "ticketTo");
            return (Criteria) this;
        }

        public Criteria andTicketToGreaterThan(String value) {
            addCriterion("ticket_to >", value, "ticketTo");
            return (Criteria) this;
        }

        public Criteria andTicketToGreaterThanOrEqualTo(String value) {
            addCriterion("ticket_to >=", value, "ticketTo");
            return (Criteria) this;
        }

        public Criteria andTicketToLessThan(String value) {
            addCriterion("ticket_to <", value, "ticketTo");
            return (Criteria) this;
        }

        public Criteria andTicketToLessThanOrEqualTo(String value) {
            addCriterion("ticket_to <=", value, "ticketTo");
            return (Criteria) this;
        }

        public Criteria andTicketToLike(String value) {
            addCriterion("ticket_to like", value, "ticketTo");
            return (Criteria) this;
        }

        public Criteria andTicketToNotLike(String value) {
            addCriterion("ticket_to not like", value, "ticketTo");
            return (Criteria) this;
        }

        public Criteria andTicketToIn(List<String> values) {
            addCriterion("ticket_to in", values, "ticketTo");
            return (Criteria) this;
        }

        public Criteria andTicketToNotIn(List<String> values) {
            addCriterion("ticket_to not in", values, "ticketTo");
            return (Criteria) this;
        }

        public Criteria andTicketToBetween(String value1, String value2) {
            addCriterion("ticket_to between", value1, value2, "ticketTo");
            return (Criteria) this;
        }

        public Criteria andTicketToNotBetween(String value1, String value2) {
            addCriterion("ticket_to not between", value1, value2, "ticketTo");
            return (Criteria) this;
        }

        public Criteria andTrainIdIsNull() {
            addCriterion("train_id is null");
            return (Criteria) this;
        }

        public Criteria andTrainIdIsNotNull() {
            addCriterion("train_id is not null");
            return (Criteria) this;
        }

        public Criteria andTrainIdEqualTo(Integer value) {
            addCriterion("train_id =", value, "trainId");
            return (Criteria) this;
        }

        public Criteria andTrainIdNotEqualTo(Integer value) {
            addCriterion("train_id <>", value, "trainId");
            return (Criteria) this;
        }

        public Criteria andTrainIdGreaterThan(Integer value) {
            addCriterion("train_id >", value, "trainId");
            return (Criteria) this;
        }

        public Criteria andTrainIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("train_id >=", value, "trainId");
            return (Criteria) this;
        }

        public Criteria andTrainIdLessThan(Integer value) {
            addCriterion("train_id <", value, "trainId");
            return (Criteria) this;
        }

        public Criteria andTrainIdLessThanOrEqualTo(Integer value) {
            addCriterion("train_id <=", value, "trainId");
            return (Criteria) this;
        }

        public Criteria andTrainIdIn(List<Integer> values) {
            addCriterion("train_id in", values, "trainId");
            return (Criteria) this;
        }

        public Criteria andTrainIdNotIn(List<Integer> values) {
            addCriterion("train_id not in", values, "trainId");
            return (Criteria) this;
        }

        public Criteria andTrainIdBetween(Integer value1, Integer value2) {
            addCriterion("train_id between", value1, value2, "trainId");
            return (Criteria) this;
        }

        public Criteria andTrainIdNotBetween(Integer value1, Integer value2) {
            addCriterion("train_id not between", value1, value2, "trainId");
            return (Criteria) this;
        }

        public Criteria andTicketTypeaIsNull() {
            addCriterion("ticket_typea is null");
            return (Criteria) this;
        }

        public Criteria andTicketTypeaIsNotNull() {
            addCriterion("ticket_typea is not null");
            return (Criteria) this;
        }

        public Criteria andTicketTypeaEqualTo(String value) {
            addCriterion("ticket_typea =", value, "ticketTypea");
            return (Criteria) this;
        }

        public Criteria andTicketTypeaNotEqualTo(String value) {
            addCriterion("ticket_typea <>", value, "ticketTypea");
            return (Criteria) this;
        }

        public Criteria andTicketTypeaGreaterThan(String value) {
            addCriterion("ticket_typea >", value, "ticketTypea");
            return (Criteria) this;
        }

        public Criteria andTicketTypeaGreaterThanOrEqualTo(String value) {
            addCriterion("ticket_typea >=", value, "ticketTypea");
            return (Criteria) this;
        }

        public Criteria andTicketTypeaLessThan(String value) {
            addCriterion("ticket_typea <", value, "ticketTypea");
            return (Criteria) this;
        }

        public Criteria andTicketTypeaLessThanOrEqualTo(String value) {
            addCriterion("ticket_typea <=", value, "ticketTypea");
            return (Criteria) this;
        }

        public Criteria andTicketTypeaLike(String value) {
            addCriterion("ticket_typea like", value, "ticketTypea");
            return (Criteria) this;
        }

        public Criteria andTicketTypeaNotLike(String value) {
            addCriterion("ticket_typea not like", value, "ticketTypea");
            return (Criteria) this;
        }

        public Criteria andTicketTypeaIn(List<String> values) {
            addCriterion("ticket_typea in", values, "ticketTypea");
            return (Criteria) this;
        }

        public Criteria andTicketTypeaNotIn(List<String> values) {
            addCriterion("ticket_typea not in", values, "ticketTypea");
            return (Criteria) this;
        }

        public Criteria andTicketTypeaBetween(String value1, String value2) {
            addCriterion("ticket_typea between", value1, value2, "ticketTypea");
            return (Criteria) this;
        }

        public Criteria andTicketTypeaNotBetween(String value1, String value2) {
            addCriterion("ticket_typea not between", value1, value2, "ticketTypea");
            return (Criteria) this;
        }

        public Criteria andTicketTypebIsNull() {
            addCriterion("ticket_typeb is null");
            return (Criteria) this;
        }

        public Criteria andTicketTypebIsNotNull() {
            addCriterion("ticket_typeb is not null");
            return (Criteria) this;
        }

        public Criteria andTicketTypebEqualTo(String value) {
            addCriterion("ticket_typeb =", value, "ticketTypeb");
            return (Criteria) this;
        }

        public Criteria andTicketTypebNotEqualTo(String value) {
            addCriterion("ticket_typeb <>", value, "ticketTypeb");
            return (Criteria) this;
        }

        public Criteria andTicketTypebGreaterThan(String value) {
            addCriterion("ticket_typeb >", value, "ticketTypeb");
            return (Criteria) this;
        }

        public Criteria andTicketTypebGreaterThanOrEqualTo(String value) {
            addCriterion("ticket_typeb >=", value, "ticketTypeb");
            return (Criteria) this;
        }

        public Criteria andTicketTypebLessThan(String value) {
            addCriterion("ticket_typeb <", value, "ticketTypeb");
            return (Criteria) this;
        }

        public Criteria andTicketTypebLessThanOrEqualTo(String value) {
            addCriterion("ticket_typeb <=", value, "ticketTypeb");
            return (Criteria) this;
        }

        public Criteria andTicketTypebLike(String value) {
            addCriterion("ticket_typeb like", value, "ticketTypeb");
            return (Criteria) this;
        }

        public Criteria andTicketTypebNotLike(String value) {
            addCriterion("ticket_typeb not like", value, "ticketTypeb");
            return (Criteria) this;
        }

        public Criteria andTicketTypebIn(List<String> values) {
            addCriterion("ticket_typeb in", values, "ticketTypeb");
            return (Criteria) this;
        }

        public Criteria andTicketTypebNotIn(List<String> values) {
            addCriterion("ticket_typeb not in", values, "ticketTypeb");
            return (Criteria) this;
        }

        public Criteria andTicketTypebBetween(String value1, String value2) {
            addCriterion("ticket_typeb between", value1, value2, "ticketTypeb");
            return (Criteria) this;
        }

        public Criteria andTicketTypebNotBetween(String value1, String value2) {
            addCriterion("ticket_typeb not between", value1, value2, "ticketTypeb");
            return (Criteria) this;
        }

        public Criteria andTicketTypecIsNull() {
            addCriterion("ticket_typec is null");
            return (Criteria) this;
        }

        public Criteria andTicketTypecIsNotNull() {
            addCriterion("ticket_typec is not null");
            return (Criteria) this;
        }

        public Criteria andTicketTypecEqualTo(String value) {
            addCriterion("ticket_typec =", value, "ticketTypec");
            return (Criteria) this;
        }

        public Criteria andTicketTypecNotEqualTo(String value) {
            addCriterion("ticket_typec <>", value, "ticketTypec");
            return (Criteria) this;
        }

        public Criteria andTicketTypecGreaterThan(String value) {
            addCriterion("ticket_typec >", value, "ticketTypec");
            return (Criteria) this;
        }

        public Criteria andTicketTypecGreaterThanOrEqualTo(String value) {
            addCriterion("ticket_typec >=", value, "ticketTypec");
            return (Criteria) this;
        }

        public Criteria andTicketTypecLessThan(String value) {
            addCriterion("ticket_typec <", value, "ticketTypec");
            return (Criteria) this;
        }

        public Criteria andTicketTypecLessThanOrEqualTo(String value) {
            addCriterion("ticket_typec <=", value, "ticketTypec");
            return (Criteria) this;
        }

        public Criteria andTicketTypecLike(String value) {
            addCriterion("ticket_typec like", value, "ticketTypec");
            return (Criteria) this;
        }

        public Criteria andTicketTypecNotLike(String value) {
            addCriterion("ticket_typec not like", value, "ticketTypec");
            return (Criteria) this;
        }

        public Criteria andTicketTypecIn(List<String> values) {
            addCriterion("ticket_typec in", values, "ticketTypec");
            return (Criteria) this;
        }

        public Criteria andTicketTypecNotIn(List<String> values) {
            addCriterion("ticket_typec not in", values, "ticketTypec");
            return (Criteria) this;
        }

        public Criteria andTicketTypecBetween(String value1, String value2) {
            addCriterion("ticket_typec between", value1, value2, "ticketTypec");
            return (Criteria) this;
        }

        public Criteria andTicketTypecNotBetween(String value1, String value2) {
            addCriterion("ticket_typec not between", value1, value2, "ticketTypec");
            return (Criteria) this;
        }

        public Criteria andTicketaNumberIsNull() {
            addCriterion("ticketa_number is null");
            return (Criteria) this;
        }

        public Criteria andTicketaNumberIsNotNull() {
            addCriterion("ticketa_number is not null");
            return (Criteria) this;
        }

        public Criteria andTicketaNumberEqualTo(Integer value) {
            addCriterion("ticketa_number =", value, "ticketaNumber");
            return (Criteria) this;
        }

        public Criteria andTicketaNumberNotEqualTo(Integer value) {
            addCriterion("ticketa_number <>", value, "ticketaNumber");
            return (Criteria) this;
        }

        public Criteria andTicketaNumberGreaterThan(Integer value) {
            addCriterion("ticketa_number >", value, "ticketaNumber");
            return (Criteria) this;
        }

        public Criteria andTicketaNumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("ticketa_number >=", value, "ticketaNumber");
            return (Criteria) this;
        }

        public Criteria andTicketaNumberLessThan(Integer value) {
            addCriterion("ticketa_number <", value, "ticketaNumber");
            return (Criteria) this;
        }

        public Criteria andTicketaNumberLessThanOrEqualTo(Integer value) {
            addCriterion("ticketa_number <=", value, "ticketaNumber");
            return (Criteria) this;
        }

        public Criteria andTicketaNumberIn(List<Integer> values) {
            addCriterion("ticketa_number in", values, "ticketaNumber");
            return (Criteria) this;
        }

        public Criteria andTicketaNumberNotIn(List<Integer> values) {
            addCriterion("ticketa_number not in", values, "ticketaNumber");
            return (Criteria) this;
        }

        public Criteria andTicketaNumberBetween(Integer value1, Integer value2) {
            addCriterion("ticketa_number between", value1, value2, "ticketaNumber");
            return (Criteria) this;
        }

        public Criteria andTicketaNumberNotBetween(Integer value1, Integer value2) {
            addCriterion("ticketa_number not between", value1, value2, "ticketaNumber");
            return (Criteria) this;
        }

        public Criteria andTicketbNumberIsNull() {
            addCriterion("ticketb_number is null");
            return (Criteria) this;
        }

        public Criteria andTicketbNumberIsNotNull() {
            addCriterion("ticketb_number is not null");
            return (Criteria) this;
        }

        public Criteria andTicketbNumberEqualTo(Integer value) {
            addCriterion("ticketb_number =", value, "ticketbNumber");
            return (Criteria) this;
        }

        public Criteria andTicketbNumberNotEqualTo(Integer value) {
            addCriterion("ticketb_number <>", value, "ticketbNumber");
            return (Criteria) this;
        }

        public Criteria andTicketbNumberGreaterThan(Integer value) {
            addCriterion("ticketb_number >", value, "ticketbNumber");
            return (Criteria) this;
        }

        public Criteria andTicketbNumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("ticketb_number >=", value, "ticketbNumber");
            return (Criteria) this;
        }

        public Criteria andTicketbNumberLessThan(Integer value) {
            addCriterion("ticketb_number <", value, "ticketbNumber");
            return (Criteria) this;
        }

        public Criteria andTicketbNumberLessThanOrEqualTo(Integer value) {
            addCriterion("ticketb_number <=", value, "ticketbNumber");
            return (Criteria) this;
        }

        public Criteria andTicketbNumberIn(List<Integer> values) {
            addCriterion("ticketb_number in", values, "ticketbNumber");
            return (Criteria) this;
        }

        public Criteria andTicketbNumberNotIn(List<Integer> values) {
            addCriterion("ticketb_number not in", values, "ticketbNumber");
            return (Criteria) this;
        }

        public Criteria andTicketbNumberBetween(Integer value1, Integer value2) {
            addCriterion("ticketb_number between", value1, value2, "ticketbNumber");
            return (Criteria) this;
        }

        public Criteria andTicketbNumberNotBetween(Integer value1, Integer value2) {
            addCriterion("ticketb_number not between", value1, value2, "ticketbNumber");
            return (Criteria) this;
        }

        public Criteria andTicketcNumberIsNull() {
            addCriterion("ticketc_number is null");
            return (Criteria) this;
        }

        public Criteria andTicketcNumberIsNotNull() {
            addCriterion("ticketc_number is not null");
            return (Criteria) this;
        }

        public Criteria andTicketcNumberEqualTo(Integer value) {
            addCriterion("ticketc_number =", value, "ticketcNumber");
            return (Criteria) this;
        }

        public Criteria andTicketcNumberNotEqualTo(Integer value) {
            addCriterion("ticketc_number <>", value, "ticketcNumber");
            return (Criteria) this;
        }

        public Criteria andTicketcNumberGreaterThan(Integer value) {
            addCriterion("ticketc_number >", value, "ticketcNumber");
            return (Criteria) this;
        }

        public Criteria andTicketcNumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("ticketc_number >=", value, "ticketcNumber");
            return (Criteria) this;
        }

        public Criteria andTicketcNumberLessThan(Integer value) {
            addCriterion("ticketc_number <", value, "ticketcNumber");
            return (Criteria) this;
        }

        public Criteria andTicketcNumberLessThanOrEqualTo(Integer value) {
            addCriterion("ticketc_number <=", value, "ticketcNumber");
            return (Criteria) this;
        }

        public Criteria andTicketcNumberIn(List<Integer> values) {
            addCriterion("ticketc_number in", values, "ticketcNumber");
            return (Criteria) this;
        }

        public Criteria andTicketcNumberNotIn(List<Integer> values) {
            addCriterion("ticketc_number not in", values, "ticketcNumber");
            return (Criteria) this;
        }

        public Criteria andTicketcNumberBetween(Integer value1, Integer value2) {
            addCriterion("ticketc_number between", value1, value2, "ticketcNumber");
            return (Criteria) this;
        }

        public Criteria andTicketcNumberNotBetween(Integer value1, Integer value2) {
            addCriterion("ticketc_number not between", value1, value2, "ticketcNumber");
            return (Criteria) this;
        }

        public Criteria andTicketaPriceIsNull() {
            addCriterion("ticketa_price is null");
            return (Criteria) this;
        }

        public Criteria andTicketaPriceIsNotNull() {
            addCriterion("ticketa_price is not null");
            return (Criteria) this;
        }

        public Criteria andTicketaPriceEqualTo(String value) {
            addCriterion("ticketa_price =", value, "ticketaPrice");
            return (Criteria) this;
        }

        public Criteria andTicketaPriceNotEqualTo(String value) {
            addCriterion("ticketa_price <>", value, "ticketaPrice");
            return (Criteria) this;
        }

        public Criteria andTicketaPriceGreaterThan(String value) {
            addCriterion("ticketa_price >", value, "ticketaPrice");
            return (Criteria) this;
        }

        public Criteria andTicketaPriceGreaterThanOrEqualTo(String value) {
            addCriterion("ticketa_price >=", value, "ticketaPrice");
            return (Criteria) this;
        }

        public Criteria andTicketaPriceLessThan(String value) {
            addCriterion("ticketa_price <", value, "ticketaPrice");
            return (Criteria) this;
        }

        public Criteria andTicketaPriceLessThanOrEqualTo(String value) {
            addCriterion("ticketa_price <=", value, "ticketaPrice");
            return (Criteria) this;
        }

        public Criteria andTicketaPriceLike(String value) {
            addCriterion("ticketa_price like", value, "ticketaPrice");
            return (Criteria) this;
        }

        public Criteria andTicketaPriceNotLike(String value) {
            addCriterion("ticketa_price not like", value, "ticketaPrice");
            return (Criteria) this;
        }

        public Criteria andTicketaPriceIn(List<String> values) {
            addCriterion("ticketa_price in", values, "ticketaPrice");
            return (Criteria) this;
        }

        public Criteria andTicketaPriceNotIn(List<String> values) {
            addCriterion("ticketa_price not in", values, "ticketaPrice");
            return (Criteria) this;
        }

        public Criteria andTicketaPriceBetween(String value1, String value2) {
            addCriterion("ticketa_price between", value1, value2, "ticketaPrice");
            return (Criteria) this;
        }

        public Criteria andTicketaPriceNotBetween(String value1, String value2) {
            addCriterion("ticketa_price not between", value1, value2, "ticketaPrice");
            return (Criteria) this;
        }

        public Criteria andTicketbPriceIsNull() {
            addCriterion("ticketb_price is null");
            return (Criteria) this;
        }

        public Criteria andTicketbPriceIsNotNull() {
            addCriterion("ticketb_price is not null");
            return (Criteria) this;
        }

        public Criteria andTicketbPriceEqualTo(String value) {
            addCriterion("ticketb_price =", value, "ticketbPrice");
            return (Criteria) this;
        }

        public Criteria andTicketbPriceNotEqualTo(String value) {
            addCriterion("ticketb_price <>", value, "ticketbPrice");
            return (Criteria) this;
        }

        public Criteria andTicketbPriceGreaterThan(String value) {
            addCriterion("ticketb_price >", value, "ticketbPrice");
            return (Criteria) this;
        }

        public Criteria andTicketbPriceGreaterThanOrEqualTo(String value) {
            addCriterion("ticketb_price >=", value, "ticketbPrice");
            return (Criteria) this;
        }

        public Criteria andTicketbPriceLessThan(String value) {
            addCriterion("ticketb_price <", value, "ticketbPrice");
            return (Criteria) this;
        }

        public Criteria andTicketbPriceLessThanOrEqualTo(String value) {
            addCriterion("ticketb_price <=", value, "ticketbPrice");
            return (Criteria) this;
        }

        public Criteria andTicketbPriceLike(String value) {
            addCriterion("ticketb_price like", value, "ticketbPrice");
            return (Criteria) this;
        }

        public Criteria andTicketbPriceNotLike(String value) {
            addCriterion("ticketb_price not like", value, "ticketbPrice");
            return (Criteria) this;
        }

        public Criteria andTicketbPriceIn(List<String> values) {
            addCriterion("ticketb_price in", values, "ticketbPrice");
            return (Criteria) this;
        }

        public Criteria andTicketbPriceNotIn(List<String> values) {
            addCriterion("ticketb_price not in", values, "ticketbPrice");
            return (Criteria) this;
        }

        public Criteria andTicketbPriceBetween(String value1, String value2) {
            addCriterion("ticketb_price between", value1, value2, "ticketbPrice");
            return (Criteria) this;
        }

        public Criteria andTicketbPriceNotBetween(String value1, String value2) {
            addCriterion("ticketb_price not between", value1, value2, "ticketbPrice");
            return (Criteria) this;
        }

        public Criteria andTicketcPriceIsNull() {
            addCriterion("ticketc_price is null");
            return (Criteria) this;
        }

        public Criteria andTicketcPriceIsNotNull() {
            addCriterion("ticketc_price is not null");
            return (Criteria) this;
        }

        public Criteria andTicketcPriceEqualTo(String value) {
            addCriterion("ticketc_price =", value, "ticketcPrice");
            return (Criteria) this;
        }

        public Criteria andTicketcPriceNotEqualTo(String value) {
            addCriterion("ticketc_price <>", value, "ticketcPrice");
            return (Criteria) this;
        }

        public Criteria andTicketcPriceGreaterThan(String value) {
            addCriterion("ticketc_price >", value, "ticketcPrice");
            return (Criteria) this;
        }

        public Criteria andTicketcPriceGreaterThanOrEqualTo(String value) {
            addCriterion("ticketc_price >=", value, "ticketcPrice");
            return (Criteria) this;
        }

        public Criteria andTicketcPriceLessThan(String value) {
            addCriterion("ticketc_price <", value, "ticketcPrice");
            return (Criteria) this;
        }

        public Criteria andTicketcPriceLessThanOrEqualTo(String value) {
            addCriterion("ticketc_price <=", value, "ticketcPrice");
            return (Criteria) this;
        }

        public Criteria andTicketcPriceLike(String value) {
            addCriterion("ticketc_price like", value, "ticketcPrice");
            return (Criteria) this;
        }

        public Criteria andTicketcPriceNotLike(String value) {
            addCriterion("ticketc_price not like", value, "ticketcPrice");
            return (Criteria) this;
        }

        public Criteria andTicketcPriceIn(List<String> values) {
            addCriterion("ticketc_price in", values, "ticketcPrice");
            return (Criteria) this;
        }

        public Criteria andTicketcPriceNotIn(List<String> values) {
            addCriterion("ticketc_price not in", values, "ticketcPrice");
            return (Criteria) this;
        }

        public Criteria andTicketcPriceBetween(String value1, String value2) {
            addCriterion("ticketc_price between", value1, value2, "ticketcPrice");
            return (Criteria) this;
        }

        public Criteria andTicketcPriceNotBetween(String value1, String value2) {
            addCriterion("ticketc_price not between", value1, value2, "ticketcPrice");
            return (Criteria) this;
        }

        public Criteria andFromTimeIsNull() {
            addCriterion("from_time is null");
            return (Criteria) this;
        }

        public Criteria andFromTimeIsNotNull() {
            addCriterion("from_time is not null");
            return (Criteria) this;
        }

        public Criteria andFromTimeEqualTo(Date value) {
            addCriterionForJDBCTime("from_time =", value, "fromTime");
            return (Criteria) this;
        }

        public Criteria andFromTimeNotEqualTo(Date value) {
            addCriterionForJDBCTime("from_time <>", value, "fromTime");
            return (Criteria) this;
        }

        public Criteria andFromTimeGreaterThan(Date value) {
            addCriterionForJDBCTime("from_time >", value, "fromTime");
            return (Criteria) this;
        }

        public Criteria andFromTimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCTime("from_time >=", value, "fromTime");
            return (Criteria) this;
        }

        public Criteria andFromTimeLessThan(Date value) {
            addCriterionForJDBCTime("from_time <", value, "fromTime");
            return (Criteria) this;
        }

        public Criteria andFromTimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCTime("from_time <=", value, "fromTime");
            return (Criteria) this;
        }

        public Criteria andFromTimeIn(List<Date> values) {
            addCriterionForJDBCTime("from_time in", values, "fromTime");
            return (Criteria) this;
        }

        public Criteria andFromTimeNotIn(List<Date> values) {
            addCriterionForJDBCTime("from_time not in", values, "fromTime");
            return (Criteria) this;
        }

        public Criteria andFromTimeBetween(Date value1, Date value2) {
            addCriterionForJDBCTime("from_time between", value1, value2, "fromTime");
            return (Criteria) this;
        }

        public Criteria andFromTimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCTime("from_time not between", value1, value2, "fromTime");
            return (Criteria) this;
        }

        public Criteria andToTimeIsNull() {
            addCriterion("to_time is null");
            return (Criteria) this;
        }

        public Criteria andToTimeIsNotNull() {
            addCriterion("to_time is not null");
            return (Criteria) this;
        }

        public Criteria andToTimeEqualTo(Date value) {
            addCriterionForJDBCTime("to_time =", value, "toTime");
            return (Criteria) this;
        }

        public Criteria andToTimeNotEqualTo(Date value) {
            addCriterionForJDBCTime("to_time <>", value, "toTime");
            return (Criteria) this;
        }

        public Criteria andToTimeGreaterThan(Date value) {
            addCriterionForJDBCTime("to_time >", value, "toTime");
            return (Criteria) this;
        }

        public Criteria andToTimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCTime("to_time >=", value, "toTime");
            return (Criteria) this;
        }

        public Criteria andToTimeLessThan(Date value) {
            addCriterionForJDBCTime("to_time <", value, "toTime");
            return (Criteria) this;
        }

        public Criteria andToTimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCTime("to_time <=", value, "toTime");
            return (Criteria) this;
        }

        public Criteria andToTimeIn(List<Date> values) {
            addCriterionForJDBCTime("to_time in", values, "toTime");
            return (Criteria) this;
        }

        public Criteria andToTimeNotIn(List<Date> values) {
            addCriterionForJDBCTime("to_time not in", values, "toTime");
            return (Criteria) this;
        }

        public Criteria andToTimeBetween(Date value1, Date value2) {
            addCriterionForJDBCTime("to_time between", value1, value2, "toTime");
            return (Criteria) this;
        }

        public Criteria andToTimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCTime("to_time not between", value1, value2, "toTime");
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