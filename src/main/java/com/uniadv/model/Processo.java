package com.uniadv.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

@Entity(name = "processo")
public class Processo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@NotNull
	private String ano_processo;

	@NotNull
	private int id_tipo_justica;

	@NotNull
	private int id_tipo_processo;

	@NotNull
	private int id_acao;

	@NotNull
	private String tipo_tribunal;

	@NotNull
	private String numero_processo_justica;

	@NotNull
	private int id_estado_comarca;

	@NotNull
	private int id_cidade_comarca;

	@NotNull
	private int id_forum;

	@NotNull
	private String vara_subsecao;

	@NotNull
	private int id_advogado_analisar;

	@NotNull
	private int id_procedimento;

	@NotNull
	private String numero_processo_tribunal;

	@NotNull
	private int honorario;

	@NotNull
	private int porcentagem_causa;

	@NotNull
	private String observacao;

	public Processo() {

	}

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

	public int getId_tipo_justica() {
		return id_tipo_justica;
	}

	public void setId_tipo_justica(int id_tipo_justica) {
		this.id_tipo_justica = id_tipo_justica;
	}

	public int getId_tipo_processo() {
		return id_tipo_processo;
	}

	public void setId_tipo_processo(int id_tipo_processo) {
		this.id_tipo_processo = id_tipo_processo;
	}

	public int getId_acao() {
		return id_acao;
	}

	public void setId_acao(int id_acao) {
		this.id_acao = id_acao;
	}

	public String getTipo_tribunal() {
		return tipo_tribunal;
	}

	public void setTipo_tribunal(String tipo_tribunal) {
		this.tipo_tribunal = tipo_tribunal;
	}

	public String getNumero_processo_justica() {
		return numero_processo_justica;
	}

	public void setNumero_processo_justica(String numero_processo_justica) {
		this.numero_processo_justica = numero_processo_justica;
	}

	public int getId_estado_comarca() {
		return id_estado_comarca;
	}

	public void setId_estado_comarca(int id_estado_comarca) {
		this.id_estado_comarca = id_estado_comarca;
	}

	public int getId_cidade_comarca() {
		return id_cidade_comarca;
	}

	public void setId_cidade_comarca(int id_cidade_comarca) {
		this.id_cidade_comarca = id_cidade_comarca;
	}

	public int getId_forum() {
		return id_forum;
	}

	public void setId_forum(int id_forum) {
		this.id_forum = id_forum;
	}

	public String getVara_subsecao() {
		return vara_subsecao;
	}

	public void setVara_subsecao(String vara_subsecao) {
		this.vara_subsecao = vara_subsecao;
	}

	public int getId_advogado_analisar() {
		return id_advogado_analisar;
	}

	public void setId_advogado_analisar(int id_advogado_analisar) {
		this.id_advogado_analisar = id_advogado_analisar;
	}

	public int getId_procedimento() {
		return id_procedimento;
	}

	public void setId_procedimento(int id_procedimento) {
		this.id_procedimento = id_procedimento;
	}

	public String getNumero_processo_tribunal() {
		return numero_processo_tribunal;
	}

	public void setNumero_processo_tribunal(String numero_processo_tribunal) {
		this.numero_processo_tribunal = numero_processo_tribunal;
	}

	public int getHonorario() {
		return honorario;
	}

	public void setHonorario(int honorario) {
		this.honorario = honorario;
	}

	public int getPorcentagem_causa() {
		return porcentagem_causa;
	}

	public void setPorcentagem_causa(int porcentagem_causa) {
		this.porcentagem_causa = porcentagem_causa;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

}
