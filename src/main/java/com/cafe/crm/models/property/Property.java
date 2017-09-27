package com.cafe.crm.models.property;


import com.cafe.crm.models.BaseEntity;
import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "property")
public class Property extends BaseEntity {

	@Id
	@GeneratedValue
	private Long id;

	@NotBlank(message = "Поле \"name\" не может быть пустым")
	private String name;

	@Min(value = 0, message = "Поле \"value\" должно быть цифрой большей 0!")
	@Max(value = Integer.MAX_VALUE, message = "Поле \"value\" должно быть цифрой меньшей 2147483647!")
	private double value;

	@NotNull
	private String unit;

	private Boolean enable;

	public Property() {
	}

	public Property(String name, Double value, String unit, Boolean enable) {
		this.name = name;
		this.value = value;
		this.unit = unit;
		this.enable = enable;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public Boolean getEnable() {
		return enable;
	}

	public void setEnable(Boolean enable) {
		this.enable = enable;
	}

	public void setEnabled(Boolean enabled) {
		enable = enabled;
	}

	public Double getValue() {

		return value;
	}

	public void setValue(Double value) {
		this.value = value;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || getClass() != o.getClass()) return false;

		Property property = (Property) o;

		if (Double.compare(property.value, value) != 0) return false;
		if (id != null ? !id.equals(property.id) : property.id != null) return false;
		if (name != null ? !name.equals(property.name) : property.name != null) return false;
		return enable != null ? enable.equals(property.enable) : property.enable == null;
	}

	@Override
	public int hashCode() {
		int result;
		long temp;
		result = id != null ? id.hashCode() : 0;
		result = 31 * result + (name != null ? name.hashCode() : 0);
		temp = Double.doubleToLongBits(value);
		result = 31 * result + (int) (temp ^ (temp >>> 32));
		result = 31 * result + (enable != null ? enable.hashCode() : 0);
		return result;
	}
}
