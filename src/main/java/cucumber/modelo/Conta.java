package cucumber.modelo;

public class Conta {

	private String dono;
	private Integer numero;
	private Double saldo;
	private Double limite;
	
	
	public Conta(String dono, Integer numero, Double saldo, Double limite) {
		super();
		this.dono = dono;
		this.numero = numero;
		this.saldo = saldo;
		this.limite = limite;
	}
	
	public boolean sacar(Double valor) {
		boolean permisao = false;
		if(saldo > valor) {
			//autoriza saque
			permisao = true;
			saldo -= valor;
		}
		
		//retorna a permisão
		return permisao;
	}
	
	public boolean depositar(Double quantidade) {
		boolean permisao = false;
		if(limite > quantidade + saldo) {
			permisao = true;
			saldo += quantidade;
		}
		
		return permisao;
	}
	
	public String getDono() {
		return dono;
	}
	public void setDono(String dono) {
		this.dono = dono;
	}
	public Integer getNumero() {
		return numero;
	}
	public void setNumero(Integer numero) {
		this.numero = numero;
	}
	public Double getSaldo() {
		return saldo;
	}
	public void setSaldo(Double saldo) {
		this.saldo = saldo;
	}
	public Double getLimite() {
		return limite;
	}
	public void setLimite(Double limite) {
		this.limite = limite;
	}
	
	
}
