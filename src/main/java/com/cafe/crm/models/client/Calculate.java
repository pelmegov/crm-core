package com.cafe.crm.models.client;

import javax.persistence.*;
import java.time.LocalTime;
import java.util.Set;

@Entity
@Table(name = "calculations")
public class Calculate {
	@Id
	@GeneratedValue
	@Column(name = "id")
	private Long id;

	private String description = "Нет описания";

	private String descriptionCheck;

	private boolean state = true;

	private Double spend = 0.0;

	private Long discount = 0L;

	private Long calculateNumber = 0L;

	private Double allPrice = 0.0;

	private LocalTime passedTime = LocalTime.of(0,0);

	private Double priceMenu = 0.0;

	private Double priceTime = 0.0;

	private Long round = 0L;

	private Double payWithCard = 0.0;

	private Long clientId;

	private Long totalNumber = 0L;

	@OneToMany(fetch = FetchType.EAGER, targetEntity = Client.class)
	@JoinTable(name = "clients_calculations",
			joinColumns = {@JoinColumn(name = "calculate_id")},
			inverseJoinColumns = {@JoinColumn(name = "client_id")})
	private Set<Client> client;

	@ManyToOne(fetch = FetchType.EAGER, targetEntity = Board.class)
	private Board board;

	@ManyToOne(fetch = FetchType.EAGER, targetEntity = Card.class)
	private Card card;

	public Calculate() {
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || getClass() != o.getClass()) return false;

		Calculate calculate = (Calculate) o;

		if (id != null ? !id.equals(calculate.id) : calculate.id != null) return false;
		return description != null ? description.equals(calculate.description) : calculate.description == null;
	}

	@Override
	public int hashCode() {
		int result = id != null ? id.hashCode() : 0;
		result = 31 * result + (description != null ? description.hashCode() : 0);
		return result;
	}

	public String getDescriptionCheck() {
		return descriptionCheck;
	}

	public Long getTotalNumber() {
		return totalNumber;
	}

	public void setTotalNumber(Long totalNumber) {
		this.totalNumber = totalNumber;
	}

	public void setDescriptionCheck(String descriptionCheck) {
		this.descriptionCheck = descriptionCheck;
	}

	public void setClientId(Long clientId) {
		this.clientId = clientId;
	}

	public Long getClientId() {
		return clientId;
	}

	public Long getId() {
		return id;
	}

	public String getDescription() {
		return description;
	}

	public boolean isState() {
		return state;
	}

	public Double getSpend() {
		return spend;
	}

	public Long getDiscount() {
		return discount;
	}

	public Long getCalculateNumber() {
		return calculateNumber;
	}

	public Double getAllPrice() {
		return allPrice;
	}

	public LocalTime getPassedTime() {
		return passedTime;
	}

	public Double getPriceMenu() {
		return priceMenu;
	}

	public Double getPriceTime() {
		return priceTime;
	}

	public Long getRound() {
		return round;
	}

	public Double getPayWithCard() {
		return payWithCard;
	}

	public Set<Client> getClient() {
		return client;
	}

	public Board getBoard() {
		return board;
	}

	public Card getCard() {
		return card;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setState(boolean state) {
		this.state = state;
	}

	public void setSpend(Double spend) {
		this.spend = spend;
	}

	public void setDiscount(Long discount) {
		this.discount = discount;
	}

	public void setCalculateNumber(Long calculateNumber) {
		this.calculateNumber = calculateNumber;
	}

	public void setAllPrice(Double allPrice) {
		this.allPrice = allPrice;
	}

	public void setPassedTime(LocalTime passedTime) {
		this.passedTime = passedTime;
	}

	public void setPriceMenu(Double priceMenu) {
		this.priceMenu = priceMenu;
	}

	public void setPriceTime(Double priceTime) {
		this.priceTime = priceTime;
	}

	public void setRound(Long round) {
		this.round = round;
	}

	public void setPayWithCard(Double payWithCard) {
		this.payWithCard = payWithCard;
	}

	public void setClient(Set<Client> client) {
		this.client = client;
	}

	public void setBoard(Board board) {
		this.board = board;
	}

	public void setCard(Card card) {
		this.card = card;
	}
}
