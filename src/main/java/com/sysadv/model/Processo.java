package com.sysadv.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity(name = "processo")
public class Processo {

	public Processo() {

	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@NotNull
	@NotEmpty
	private String ano_processo;

	@NotNull
	@NotEmpty
	private String numero_processo;

	@NotNull
	@NotEmpty
	private String tipo_justica;

	@NotNull
	@NotEmpty
	private String tipo_processo;

	@NotNull
	@NotEmpty
	private String acao;

	@NotNull
	@NotEmpty
	private String estado_comarca;

	@NotNull
	@NotEmpty
	private String cidade_comarca;

	@NotNull
	@NotEmpty
	private String forum;

	@NotNull
	@NotEmpty
	private String vara_subsecao;

	@NotNull
	@NotEmpty
	private String procedimento;

	@NotNull
	@NotEmpty
	private String honorario;

	@NotNull
	@NotEmpty
	private String porcentagem_causa;

	@NotNull
	private String observacao;

	@ManyToOne
	private Cliente cliente;

	public Processo(Integer id) {
		this.id = id;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAno_processo() {
		return ano_processo;
	}

	public void setAno_processo(String ano_processo) {
		this.ano_processo = ano_processo;
	}

	public String getTipo_justica() {
		return tipo_justica;
	}

	public void setTipo_justica(String tipo_justica) {
		this.tipo_justica = tipo_justica;
	}

	public String getTipo_processo() {
		return tipo_processo;
	}

	public void setTipo_processo(String tipo_processo) {
		this.tipo_processo = tipo_processo;
	}

	public String getAcao() {
		return acao;
	}

	public void setAcao(String acao) {
		this.acao = acao;
	}

	public String getEstado_comarca() {
		return estado_comarca;
	}

	public void setEstado_comarca(String estado_comarca) {
		this.estado_comarca = estado_comarca;
	}

	public String getCidade_comarca() {
		return cidade_comarca;
	}

	public void setCidade_comarca(String cidade_comarca) {
		this.cidade_comarca = cidade_comarca;
	}

	public String getForum() {
		return forum;
	}

	public void setForum(String forum) {
		this.forum = forum;
	}

	public String getVara_subsecao() {
		return vara_subsecao;
	}

	public void setVara_subsecao(String vara_subsecao) {
		this.vara_subsecao = vara_subsecao;
	}

	public String getProcedimento() {
		return procedimento;
	}

	public void setProcedimento(String procedimento) {
		this.procedimento = procedimento;
	}

	public String getHonorario() {
		return honorario;
	}

	public void setHonorario(String honorario) {
		this.honorario = honorario;
	}

	public String getPorcentagem_causa() {
		return porcentagem_causa;
	}

	public void setPorcentagem_causa(String porcentagem_causa) {
		this.porcentagem_causa = porcentagem_causa;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

	public String getNumero_processo() {
		return numero_processo;
	}

	public void setNumero_processo(String numero_processo) {
		this.numero_processo = numero_processo;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

}
