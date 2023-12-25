package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "user_roles")
public class UserRole {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@ManyToOne
	@JoinColumn(name = "user_id")
	private UserApp user;

	@ManyToOne
	@JoinColumn(name = "role_id")
	private RoleApp role;

	public UserRole() {
		super();
		// TODO 自動生成されたコンストラクター・スタブ
	}

	public UserRole(Long id, UserApp user, RoleApp role) {
		super();
		this.id = id;
		this.user = user;
		this.role = role;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public UserApp getUser() {
		return user;
	}

	public void setUser(UserApp user) {
		this.user = user;
	}

	public RoleApp getRole() {
		return role;
	}

	public void setRole(RoleApp role) {
		this.role = role;
	}

}
