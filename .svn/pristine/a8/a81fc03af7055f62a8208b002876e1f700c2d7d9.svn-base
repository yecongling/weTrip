package com.foo.wetrip.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class TeamTicketExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TeamTicketExample() {
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

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andLinkNameIsNull() {
            addCriterion("link_name is null");
            return (Criteria) this;
        }

        public Criteria andLinkNameIsNotNull() {
            addCriterion("link_name is not null");
            return (Criteria) this;
        }

        public Criteria andLinkNameEqualTo(String value) {
            addCriterion("link_name =", value, "linkName");
            return (Criteria) this;
        }

        public Criteria andLinkNameNotEqualTo(String value) {
            addCriterion("link_name <>", value, "linkName");
            return (Criteria) this;
        }

        public Criteria andLinkNameGreaterThan(String value) {
            addCriterion("link_name >", value, "linkName");
            return (Criteria) this;
        }

        public Criteria andLinkNameGreaterThanOrEqualTo(String value) {
            addCriterion("link_name >=", value, "linkName");
            return (Criteria) this;
        }

        public Criteria andLinkNameLessThan(String value) {
            addCriterion("link_name <", value, "linkName");
            return (Criteria) this;
        }

        public Criteria andLinkNameLessThanOrEqualTo(String value) {
            addCriterion("link_name <=", value, "linkName");
            return (Criteria) this;
        }

        public Criteria andLinkNameLike(String value) {
            addCriterion("link_name like", value, "linkName");
            return (Criteria) this;
        }

        public Criteria andLinkNameNotLike(String value) {
            addCriterion("link_name not like", value, "linkName");
            return (Criteria) this;
        }

        public Criteria andLinkNameIn(List<String> values) {
            addCriterion("link_name in", values, "linkName");
            return (Criteria) this;
        }

        public Criteria andLinkNameNotIn(List<String> values) {
            addCriterion("link_name not in", values, "linkName");
            return (Criteria) this;
        }

        public Criteria andLinkNameBetween(String value1, String value2) {
            addCriterion("link_name between", value1, value2, "linkName");
            return (Criteria) this;
        }

        public Criteria andLinkNameNotBetween(String value1, String value2) {
            addCriterion("link_name not between", value1, value2, "linkName");
            return (Criteria) this;
        }

        public Criteria andLinkPhoneIsNull() {
            addCriterion("link_phone is null");
            return (Criteria) this;
        }

        public Criteria andLinkPhoneIsNotNull() {
            addCriterion("link_phone is not null");
            return (Criteria) this;
        }

        public Criteria andLinkPhoneEqualTo(String value) {
            addCriterion("link_phone =", value, "linkPhone");
            return (Criteria) this;
        }

        public Criteria andLinkPhoneNotEqualTo(String value) {
            addCriterion("link_phone <>", value, "linkPhone");
            return (Criteria) this;
        }

        public Criteria andLinkPhoneGreaterThan(String value) {
            addCriterion("link_phone >", value, "linkPhone");
            return (Criteria) this;
        }

        public Criteria andLinkPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("link_phone >=", value, "linkPhone");
            return (Criteria) this;
        }

        public Criteria andLinkPhoneLessThan(String value) {
            addCriterion("link_phone <", value, "linkPhone");
            return (Criteria) this;
        }

        public Criteria andLinkPhoneLessThanOrEqualTo(String value) {
            addCriterion("link_phone <=", value, "linkPhone");
            return (Criteria) this;
        }

        public Criteria andLinkPhoneLike(String value) {
            addCriterion("link_phone like", value, "linkPhone");
            return (Criteria) this;
        }

        public Criteria andLinkPhoneNotLike(String value) {
            addCriterion("link_phone not like", value, "linkPhone");
            return (Criteria) this;
        }

        public Criteria andLinkPhoneIn(List<String> values) {
            addCriterion("link_phone in", values, "linkPhone");
            return (Criteria) this;
        }

        public Criteria andLinkPhoneNotIn(List<String> values) {
            addCriterion("link_phone not in", values, "linkPhone");
            return (Criteria) this;
        }

        public Criteria andLinkPhoneBetween(String value1, String value2) {
            addCriterion("link_phone between", value1, value2, "linkPhone");
            return (Criteria) this;
        }

        public Criteria andLinkPhoneNotBetween(String value1, String value2) {
            addCriterion("link_phone not between", value1, value2, "linkPhone");
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

        public Criteria andTrainNumIsNull() {
            addCriterion("train_num is null");
            return (Criteria) this;
        }

        public Criteria andTrainNumIsNotNull() {
            addCriterion("train_num is not null");
            return (Criteria) this;
        }

        public Criteria andTrainNumEqualTo(String value) {
            addCriterion("train_num =", value, "trainNum");
            return (Criteria) this;
        }

        public Criteria andTrainNumNotEqualTo(String value) {
            addCriterion("train_num <>", value, "trainNum");
            return (Criteria) this;
        }

        public Criteria andTrainNumGreaterThan(String value) {
            addCriterion("train_num >", value, "trainNum");
            return (Criteria) this;
        }

        public Criteria andTrainNumGreaterThanOrEqualTo(String value) {
            addCriterion("train_num >=", value, "trainNum");
            return (Criteria) this;
        }

        public Criteria andTrainNumLessThan(String value) {
            addCriterion("train_num <", value, "trainNum");
            return (Criteria) this;
        }

        public Criteria andTrainNumLessThanOrEqualTo(String value) {
            addCriterion("train_num <=", value, "trainNum");
            return (Criteria) this;
        }

        public Criteria andTrainNumLike(String value) {
            addCriterion("train_num like", value, "trainNum");
            return (Criteria) this;
        }

        public Criteria andTrainNumNotLike(String value) {
            addCriterion("train_num not like", value, "trainNum");
            return (Criteria) this;
        }

        public Criteria andTrainNumIn(List<String> values) {
            addCriterion("train_num in", values, "trainNum");
            return (Criteria) this;
        }

        public Criteria andTrainNumNotIn(List<String> values) {
            addCriterion("train_num not in", values, "trainNum");
            return (Criteria) this;
        }

        public Criteria andTrainNumBetween(String value1, String value2) {
            addCriterion("train_num between", value1, value2, "trainNum");
            return (Criteria) this;
        }

        public Criteria andTrainNumNotBetween(String value1, String value2) {
            addCriterion("train_num not between", value1, value2, "trainNum");
            return (Criteria) this;
        }

        public Criteria andTrainSeatIsNull() {
            addCriterion("train_seat is null");
            return (Criteria) this;
        }

        public Criteria andTrainSeatIsNotNull() {
            addCriterion("train_seat is not null");
            return (Criteria) this;
        }

        public Criteria andTrainSeatEqualTo(String value) {
            addCriterion("train_seat =", value, "trainSeat");
            return (Criteria) this;
        }

        public Criteria andTrainSeatNotEqualTo(String value) {
            addCriterion("train_seat <>", value, "trainSeat");
            return (Criteria) this;
        }

        public Criteria andTrainSeatGreaterThan(String value) {
            addCriterion("train_seat >", value, "trainSeat");
            return (Criteria) this;
        }

        public Criteria andTrainSeatGreaterThanOrEqualTo(String value) {
            addCriterion("train_seat >=", value, "trainSeat");
            return (Criteria) this;
        }

        public Criteria andTrainSeatLessThan(String value) {
            addCriterion("train_seat <", value, "trainSeat");
            return (Criteria) this;
        }

        public Criteria andTrainSeatLessThanOrEqualTo(String value) {
            addCriterion("train_seat <=", value, "trainSeat");
            return (Criteria) this;
        }

        public Criteria andTrainSeatLike(String value) {
            addCriterion("train_seat like", value, "trainSeat");
            return (Criteria) this;
        }

        public Criteria andTrainSeatNotLike(String value) {
            addCriterion("train_seat not like", value, "trainSeat");
            return (Criteria) this;
        }

        public Criteria andTrainSeatIn(List<String> values) {
            addCriterion("train_seat in", values, "trainSeat");
            return (Criteria) this;
        }

        public Criteria andTrainSeatNotIn(List<String> values) {
            addCriterion("train_seat not in", values, "trainSeat");
            return (Criteria) this;
        }

        public Criteria andTrainSeatBetween(String value1, String value2) {
            addCriterion("train_seat between", value1, value2, "trainSeat");
            return (Criteria) this;
        }

        public Criteria andTrainSeatNotBetween(String value1, String value2) {
            addCriterion("train_seat not between", value1, value2, "trainSeat");
            return (Criteria) this;
        }

        public Criteria andGoTimeIsNull() {
            addCriterion("go_time is null");
            return (Criteria) this;
        }

        public Criteria andGoTimeIsNotNull() {
            addCriterion("go_time is not null");
            return (Criteria) this;
        }

        public Criteria andGoTimeEqualTo(Date value) {
            addCriterionForJDBCDate("go_time =", value, "goTime");
            return (Criteria) this;
        }

        public Criteria andGoTimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("go_time <>", value, "goTime");
            return (Criteria) this;
        }

        public Criteria andGoTimeGreaterThan(Date value) {
            addCriterionForJDBCDate("go_time >", value, "goTime");
            return (Criteria) this;
        }

        public Criteria andGoTimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("go_time >=", value, "goTime");
            return (Criteria) this;
        }

        public Criteria andGoTimeLessThan(Date value) {
            addCriterionForJDBCDate("go_time <", value, "goTime");
            return (Criteria) this;
        }

        public Criteria andGoTimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("go_time <=", value, "goTime");
            return (Criteria) this;
        }

        public Criteria andGoTimeIn(List<Date> values) {
            addCriterionForJDBCDate("go_time in", values, "goTime");
            return (Criteria) this;
        }

        public Criteria andGoTimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("go_time not in", values, "goTime");
            return (Criteria) this;
        }

        public Criteria andGoTimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("go_time between", value1, value2, "goTime");
            return (Criteria) this;
        }

        public Criteria andGoTimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("go_time not between", value1, value2, "goTime");
            return (Criteria) this;
        }

        public Criteria andGoPersonIsNull() {
            addCriterion("go_person is null");
            return (Criteria) this;
        }

        public Criteria andGoPersonIsNotNull() {
            addCriterion("go_person is not null");
            return (Criteria) this;
        }

        public Criteria andGoPersonEqualTo(String value) {
            addCriterion("go_person =", value, "goPerson");
            return (Criteria) this;
        }

        public Criteria andGoPersonNotEqualTo(String value) {
            addCriterion("go_person <>", value, "goPerson");
            return (Criteria) this;
        }

        public Criteria andGoPersonGreaterThan(String value) {
            addCriterion("go_person >", value, "goPerson");
            return (Criteria) this;
        }

        public Criteria andGoPersonGreaterThanOrEqualTo(String value) {
            addCriterion("go_person >=", value, "goPerson");
            return (Criteria) this;
        }

        public Criteria andGoPersonLessThan(String value) {
            addCriterion("go_person <", value, "goPerson");
            return (Criteria) this;
        }

        public Criteria andGoPersonLessThanOrEqualTo(String value) {
            addCriterion("go_person <=", value, "goPerson");
            return (Criteria) this;
        }

        public Criteria andGoPersonLike(String value) {
            addCriterion("go_person like", value, "goPerson");
            return (Criteria) this;
        }

        public Criteria andGoPersonNotLike(String value) {
            addCriterion("go_person not like", value, "goPerson");
            return (Criteria) this;
        }

        public Criteria andGoPersonIn(List<String> values) {
            addCriterion("go_person in", values, "goPerson");
            return (Criteria) this;
        }

        public Criteria andGoPersonNotIn(List<String> values) {
            addCriterion("go_person not in", values, "goPerson");
            return (Criteria) this;
        }

        public Criteria andGoPersonBetween(String value1, String value2) {
            addCriterion("go_person between", value1, value2, "goPerson");
            return (Criteria) this;
        }

        public Criteria andGoPersonNotBetween(String value1, String value2) {
            addCriterion("go_person not between", value1, value2, "goPerson");
            return (Criteria) this;
        }

        public Criteria andStatesIsNull() {
            addCriterion("states is null");
            return (Criteria) this;
        }

        public Criteria andStatesIsNotNull() {
            addCriterion("states is not null");
            return (Criteria) this;
        }

        public Criteria andStatesEqualTo(Byte value) {
            addCriterion("states =", value, "states");
            return (Criteria) this;
        }

        public Criteria andStatesNotEqualTo(Byte value) {
            addCriterion("states <>", value, "states");
            return (Criteria) this;
        }

        public Criteria andStatesGreaterThan(Byte value) {
            addCriterion("states >", value, "states");
            return (Criteria) this;
        }

        public Criteria andStatesGreaterThanOrEqualTo(Byte value) {
            addCriterion("states >=", value, "states");
            return (Criteria) this;
        }

        public Criteria andStatesLessThan(Byte value) {
            addCriterion("states <", value, "states");
            return (Criteria) this;
        }

        public Criteria andStatesLessThanOrEqualTo(Byte value) {
            addCriterion("states <=", value, "states");
            return (Criteria) this;
        }

        public Criteria andStatesIn(List<Byte> values) {
            addCriterion("states in", values, "states");
            return (Criteria) this;
        }

        public Criteria andStatesNotIn(List<Byte> values) {
            addCriterion("states not in", values, "states");
            return (Criteria) this;
        }

        public Criteria andStatesBetween(Byte value1, Byte value2) {
            addCriterion("states between", value1, value2, "states");
            return (Criteria) this;
        }

        public Criteria andStatesNotBetween(Byte value1, Byte value2) {
            addCriterion("states not between", value1, value2, "states");
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