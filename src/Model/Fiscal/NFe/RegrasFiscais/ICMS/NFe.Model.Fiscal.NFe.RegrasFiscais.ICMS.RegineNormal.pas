unit NFe.Model.Fiscal.NFe.RegrasFiscais.ICMS.RegineNormal;

interface

Uses
  NFe.Model.Fiscal.NFe.RegrasFiscais.Interfaces,
  NFe.Model.Fiscal.NFe.Interfaces;

Type
  TModelFiscalNFeRegrasFiscaisICMSRegimeNormal = Class(TInterfacedObject, iModelNFeRegras, iVisitor)
    private
      FParent: iModelFiscalNFe;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iModelNFeRegras;
      function ProdutoImpostoICMS: iModelNFeRegras;
      function Visit( Value: iModelFiscalNFe): iModelNFeRegras;
  end;

implementation

uses
  pcnConversao;

{ TModelFiscalNFeRegrasFiscaisICMSRegimeNormal }

constructor TModelFiscalNFeRegrasFiscaisICMSRegimeNormal.Create;
begin

end;

destructor TModelFiscalNFeRegrasFiscaisICMSRegimeNormal.Destroy;
begin

  inherited;
end;

class function TModelFiscalNFeRegrasFiscaisICMSRegimeNormal.New: iModelNFeRegras;
begin
  Result := Self.Create;
end;

function TModelFiscalNFeRegrasFiscaisICMSRegimeNormal.ProdutoImpostoICMS: iModelNFeRegras;
begin
  FParent.Component.Produto.Imposto.vTotTrib     := 0.00;
  FParent.Component.Produto.Imposto.ICMS.CST     := cst00;
  FParent.Component.Produto.Imposto.ICMS.orig    := oeNacional;
  FParent.Component.Produto.Imposto.ICMS.modBC   := dbiValorOperacao;
  FParent.Component.Produto.Imposto.ICMS.vBC     := 100;
  FParent.Component.Produto.Imposto.ICMS.pICMS   := 18;
  FParent.Component.Produto.Imposto.ICMS.vICMS   := 18;
  FParent.Component.Produto.Imposto.ICMS.modBCST := dbisMargemValorAgregado;
  FParent.Component.Produto.Imposto.ICMS.pMVAST  := 0;
  FParent.Component.Produto.Imposto.ICMS.pRedBCST:= 0;
  FParent.Component.Produto.Imposto.ICMS.vBCST   := 0;
  FParent.Component.Produto.Imposto.ICMS.pICMSST := 0;
  FParent.Component.Produto.Imposto.ICMS.vICMSST := 0;
  FParent.Component.Produto.Imposto.ICMS.pRedBC  := 0;
end;

function TModelFiscalNFeRegrasFiscaisICMSRegimeNormal.Visit(
  Value: iModelFiscalNFe): iModelNFeRegras;
begin
  Result  := Self;
  FParent := Value;
end;

end.
