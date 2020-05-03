package beans;

import java.io.Serializable;
import java.sql.Date;

import javax.xml.bind.annotation.XmlSeeAlso;
@XmlSeeAlso({CardPayment.class,OnlinePayment.class,PaypalPayment.class})
public   class Payment implements Serializable {

	private double amount;

	private Date paymentDate;

	private boolean refunded;
	private Date refundedDate;
	private int appointmentId;
	private double refundAmount;

	public Payment(double amount, Date paymentDate, boolean refunded, Date refundedDate, int appointmentId,double refundAmount) {
		super();
		this.amount = amount;
		this.paymentDate = paymentDate;
		this.refunded = refunded;
		this.refundedDate = refundedDate;
		this.appointmentId = appointmentId;
		this.refundAmount=refundAmount;
	}

	public Payment() {
		super();
	}

	public double getRefundAmount() {
		return refundAmount;
	}

	public void setRefundAmount(double refundAmount) {
		this.refundAmount = refundAmount;
	}

	public int getAppointmentId() {
		return appointmentId;
	}

	public void setAppointmentId(int appointmentId) {
		this.appointmentId = appointmentId;
	}

	public Date getRefundedDate() {
		return refundedDate;
	}

	public void setRefundedDate(Date refundedDate) {
		this.refundedDate = refundedDate;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public Date getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = paymentDate;
	}

	public boolean isRefunded() {
		return refunded;
	}

	public void setRefunded(boolean refunded) {
		this.refunded = refunded;
	}
}
