package modelo.pokemon;

import modelo.tipo.Tipo;

/**
 *
 * @author Leonardo Oliveira Moreira
 * 
 * Classe que representa a entidade produto
 */
public class Pokemon {
    
    private int id;
    private String nome;
    private Double preco;
    private Tipo tipo_1;
    private Tipo tipo_2;
    private Double avaliacao;
    private String descricao;
    private Double altura;
    private Double peso;
    private Boolean genero_m;
    private Boolean genero_f;
    private int quantidade;
    private String foto;
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Double getPreco() {
        return preco;
    }

    public void setPreco(Double preco) {
        this.preco = preco;
    }

    public Tipo getTipo_1() {
        return tipo_1;
    }

    public void setTipo_1(Tipo tipo) {
        this.tipo_1 = tipo;
    }

    public Tipo getTipo_2() {
        return tipo_2;
    }

    public void setTipo_2(Tipo tipo) {
        this.tipo_2 = tipo;
    }

    public Double getAvaliacao() {
        return avaliacao;
    }

    public void setAvaliacao(Double avaliacao) {
        this.avaliacao = avaliacao;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Double getAltura() {
        return altura;
    }

    public void setAltura(Double altura) {
        this.altura = altura;
    }

    public Double getPeso() {
        return peso;
    }

    public void setPeso(Double peso) {
        this.peso = peso;
    }

    public Boolean getGenero_m() {
        return genero_m;
    }

    public void setGenero_m(Boolean genero_m) {
        this.genero_m = genero_m;
    }

    public Boolean getGenero_f() {
        return genero_f;
    }

    public void setGenero_f(Boolean genero_f) {
        this.genero_f = genero_f;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    
}
