unit NFe.Model.Fiscal.NFe.Command.Pagamento;

interface

uses
  NFe.Model.Fiscal.NFe.Interfaces;

Type
  TModelFiscalNFeCommandPagamento = Class(TInterfacedObject, iCommand)
    private
      FParent : iModelFiscalNFe;
    public
      constructor Create(Parent : iModelFiscalNFe);
      destructor Destroy; override;
      class function New(Parent : iModelFiscalNFe): iCommand;
      function Execute : iCommand;
  end;

implementation

uses
  System.SysUtils,
  pcnConversao,
  pcnConversaoNFe;

{ TModelFiscalNFeCommandPagamento }

constructor TModelFiscalNFeCommandPagamento.Create(Parent : iModelFiscalNFe);
begin
  FParent := Parent
end;

destructor TModelFiscalNFeCommandPagamento.Destroy;
begin

  inherited;
end;

function TModelFiscalNFeCommandPagamento.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.AddPagamento;
  FParent.Component.Pagamento.indPag := ipVista;
  FParent.Component.Pagamento.tPag   := fpDinheiro;
  FParent.Component.Pagamento.vPag   := 100;
end;

class function TModelFiscalNFeCommandPagamento.New(Parent : iModelFiscalNFe): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
