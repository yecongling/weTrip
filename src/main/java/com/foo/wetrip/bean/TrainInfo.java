package com.foo.wetrip.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.sql.Date;
import java.util.List;
import java.util.Objects;

public class TrainInfo implements Serializable {
    private String trainName;

    private String ticketFrom;

    private String ticketTo;

    private Integer trainId;

    private String ticketTypea;

    private String ticketTypeb;

    private String ticketTypec;

    private Integer ticketaNumber;

    private Integer ticketbNumber;

    private Integer ticketcNumber;

    private String ticketaPrice;

    private String ticketbPrice;

    private String ticketcPrice;

    private String fromTime;

    private String toTime;

    List<TrainInfo> trainInfoList = new ArrayList<>();
    public TrainInfo() {
    }

    public TrainInfo(String trainName, String ticketFrom, String ticketTo, Integer trainId, String ticketTypea, String ticketTypeb, String ticketTypec, Integer ticketaNumber, Integer ticketbNumber, Integer ticketcNumber, String ticketaPrice, String ticketbPrice, String ticketcPrice, String fromTime, String toTime) {
        this.trainName = trainName;
        this.ticketFrom = ticketFrom;
        this.ticketTo = ticketTo;
        this.trainId = trainId;
        this.ticketTypea = ticketTypea;
        this.ticketTypeb = ticketTypeb;
        this.ticketTypec = ticketTypec;
        this.ticketaNumber = ticketaNumber;
        this.ticketbNumber = ticketbNumber;
        this.ticketcNumber = ticketcNumber;
        this.ticketaPrice = ticketaPrice;
        this.ticketbPrice = ticketbPrice;
        this.ticketcPrice = ticketcPrice;
        this.fromTime = fromTime;
        this.toTime = toTime;
    }

    public String getTrainName() {
        return trainName;
    }

    public void setTrainName(String trainName) {
        this.trainName = trainName;
    }

    public String getTicketFrom() {
        return ticketFrom;
    }

    public void setTicketFrom(String ticketFrom) {
        this.ticketFrom = ticketFrom;
    }

    public String getTicketTo() {
        return ticketTo;
    }

    public void setTicketTo(String ticketTo) {
        this.ticketTo = ticketTo;
    }

    public Integer getTrainId() {
        return trainId;
    }

    public void setTrainId(Integer trainId) {
        this.trainId = trainId;
    }

    public String getTicketTypea() {
        return ticketTypea;
    }

    public void setTicketTypea(String ticketTypea) {
        this.ticketTypea = ticketTypea;
    }

    public String getTicketTypeb() {
        return ticketTypeb;
    }

    public void setTicketTypeb(String ticketTypeb) {
        this.ticketTypeb = ticketTypeb;
    }

    public String getTicketTypec() {
        return ticketTypec;
    }

    public void setTicketTypec(String ticketTypec) {
        this.ticketTypec = ticketTypec;
    }

    public Integer getTicketaNumber() {
        return ticketaNumber;
    }

    public void setTicketaNumber(Integer ticketaNumber) {
        this.ticketaNumber = ticketaNumber;
    }

    public Integer getTicketbNumber() {
        return ticketbNumber;
    }

    public void setTicketbNumber(Integer ticketbNumber) {
        this.ticketbNumber = ticketbNumber;
    }

    public Integer getTicketcNumber() {
        return ticketcNumber;
    }

    public void setTicketcNumber(Integer ticketcNumber) {
        this.ticketcNumber = ticketcNumber;
    }

    public String getTicketaPrice() {
        return ticketaPrice;
    }

    public void setTicketaPrice(String ticketaPrice) {
        this.ticketaPrice = ticketaPrice;
    }

    public String getTicketbPrice() {
        return ticketbPrice;
    }

    public void setTicketbPrice(String ticketbPrice) {
        this.ticketbPrice = ticketbPrice;
    }

    public String getTicketcPrice() {
        return ticketcPrice;
    }

    public void setTicketcPrice(String ticketcPrice) {
        this.ticketcPrice = ticketcPrice;
    }

    public String getFromTime() {
        return fromTime;
    }

    public void setFromTime(String fromTime) {
        this.fromTime = fromTime;
    }

    public String getToTime() {
        return toTime;
    }

    public void setToTime(String toTime) {
        this.toTime = toTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof TrainInfo)) return false;
        TrainInfo trainInfo = (TrainInfo) o;
        return Objects.equals(getTrainName(), trainInfo.getTrainName()) &&
                Objects.equals(getTicketFrom(), trainInfo.getTicketFrom()) &&
                Objects.equals(getTicketTo(), trainInfo.getTicketTo()) &&
                Objects.equals(getTrainId(), trainInfo.getTrainId()) &&
                Objects.equals(getTicketTypea(), trainInfo.getTicketTypea()) &&
                Objects.equals(getTicketTypeb(), trainInfo.getTicketTypeb()) &&
                Objects.equals(getTicketTypec(), trainInfo.getTicketTypec()) &&
                Objects.equals(getTicketaNumber(), trainInfo.getTicketaNumber()) &&
                Objects.equals(getTicketbNumber(), trainInfo.getTicketbNumber()) &&
                Objects.equals(getTicketcNumber(), trainInfo.getTicketcNumber()) &&
                Objects.equals(getTicketaPrice(), trainInfo.getTicketaPrice()) &&
                Objects.equals(getTicketbPrice(), trainInfo.getTicketbPrice()) &&
                Objects.equals(getTicketcPrice(), trainInfo.getTicketcPrice()) &&
                Objects.equals(getFromTime(), trainInfo.getFromTime()) &&
                Objects.equals(getToTime(), trainInfo.getToTime());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getTrainName(), getTicketFrom(), getTicketTo(), getTrainId(), getTicketTypea(), getTicketTypeb(), getTicketTypec(), getTicketaNumber(), getTicketbNumber(), getTicketcNumber(), getTicketaPrice(), getTicketbPrice(), getTicketcPrice(), getFromTime(), getToTime());
    }
}
