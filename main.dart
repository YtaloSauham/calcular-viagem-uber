void main() {
  
  Map <String , String> historico = new Map();
  
  var pessoa1 = new Viagem("Xupewell",2,20);
  
  historico[pessoa1.nome] = pessoa1.valorViagem();
  
  print(historico);
  

  
}



class Viagem{
  static const preco_base = 2;
  static const preco_km = 1.40 ; 
  static const preco_tempo = 0.26;
  static const valor_minimo = 4.0 ;
  double km;
  double tempo;
  String _nome;
  
  String get nome {
  return _nome;
  }
  
  
  Viagem(this._nome,this.km,this.tempo);
  
  
  String valorViagem () {
    
    
    double calc = preco_base + (preco_km * km) + (preco_tempo * tempo);
    
    if(calc < valor_minimo){
      return "O valor da Viagem é $valor_minimo";
      
    } else {
      
      return  "O valor da Viagem é $calc";
    
    }
       

  }
  
  
  
}