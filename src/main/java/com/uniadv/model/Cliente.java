package com.uniadv.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity(name = "clientes")
public class Cliente {

	public Cliente() {

	}

	public Cliente(Integer id) {
		this.id = id;
	}

	public Cliente(Integer id, String nome) {
		this.id = id;
		this.nome = nome;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@NotNull
	@Size(min = 2, max = 50, message = "O tamanho deve ser entre {min} e {max}")
	private String nome;

	@NotNull
	@Size(min = 11, max = 11, message = "Campo deve ter {min} números")
	private String cpf;

	@NotNull
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date data;

	@NotNull
	private String estadoCivil;

	@NotNull
	private String numeroRg;

	@NotNull
	private String profissao;

	@NotNull
	private String naturalidade;

	@NotNull
	private String nacionalidade;

	@NotNull
	private Date dataExpedicaoRg;

	@NotNull
	private String orgaoExpedicaoRg;

	@NotNull
	@Size(max = 2, message = "Campo deve ter {max} caracteres")
	private String estadoExpedicaoRg;

	@NotNull
	private String numeroCtps;

	@NotNull
	private String serieCtps;

	@NotNull
	@Size(max = 2, message = "Campo deve ter {max} caracteres")
	private String estadoExpedicaoCtps;

	@NotNull
	private String rua;

	@NotNull
	private String numero;

	@NotNull
	private String bairro;

	@NotNull
	private String complemento;

	@NotNull
	@Size(min = 5, max = 100, message = "O tamanho deve ser entre {min} e {max}")
	private String email;
	
	

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public String getEstadoCivil() {
		return estadoCivil;
	}

	public void setEstadoCivil(String estadoCivil) {
		this.estadoCivil = estadoCivil;
	}

	public String getNumeroRg() {
		return numeroRg;
	}

	public void setNumeroRg(String numeroRg) {
		this.numeroRg = numeroRg;
	}

	public String getProfissao() {
		return profissao;
	}

	public void setProfissao(String profissao) {
		this.profissao = profissao;
	}

	public String getNaturalidade() {
		return naturalidade;
	}

	public void setNaturalidade(String naturalidade) {
		this.naturalidade = naturalidade;
	}

	public String getNacionalidade() {
		return nacionalidade;
	}

	public void setNacionalidade(String nacionalidade) {
		this.nacionalidade = nacionalidade;
	}

	public Date getDataExpedicaoRg() {
		return dataExpedicaoRg;
	}

	public void setDataExpedicaoRg(Date dataExpedicaoRg) {
		this.dataExpedicaoRg = dataExpedicaoRg;
	}

	public String getOrgaoExpedicaoRg() {
		return orgaoExpedicaoRg;
	}

	public void setOrgaoExpedicaoRg(String orgaoExpedicaoRg) {
		this.orgaoExpedicaoRg = orgaoExpedicaoRg;
	}

	public String getEstadoExpedicaoRg() {
		return estadoExpedicaoRg;
	}

	public void setEstadoExpedicaoRg(String estadoExpedicaoRg) {
		this.estadoExpedicaoRg = estadoExpedicaoRg;
	}

	public String getNumeroCtps() {
		return numeroCtps;
	}

	public void setNumeroCtps(String numeroCtps) {
		this.numeroCtps = numeroCtps;
	}

	public String getSerieCtps() {
		return serieCtps;
	}

	public void setSerieCtps(String serieCtps) {
		this.serieCtps = serieCtps;
	}

	public String getEstadoExpedicaoCtps() {
		return estadoExpedicaoCtps;
	}

	public void setEstadoExpedicaoCtps(String estadoExpedicaoCtps) {
		this.estadoExpedicaoCtps = estadoExpedicaoCtps;
	}

	public String getRua() {
		return rua;
	}

	public void setRua(String rua) {
		this.rua = rua;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Cliente [id=" + id + ", nome=" + nome + "";
	}

}
