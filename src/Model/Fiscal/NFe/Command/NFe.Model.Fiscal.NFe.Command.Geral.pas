unit NFe.Model.Fiscal.NFe.Command.Geral;

interface

Uses
  NFe.Model.Fiscal.NFe.Interfaces;

Type
  TModelFiscalNFeCommandGeral = Class(TInterfacedObject, iCommand)
    private
      FParent : iModelFiscalNFe;
    public
      constructor Create(Parent : iModelFiscalNFe);
      destructor Destroy; override;
      class function New(Parent : iModelFiscalNFe): iCommand;
      function Execute: iCommand;
  end;

implementation

uses
  pcnConversaoNFe;

{ TModelFiscalNFeCommandGeral }

constructor TModelFiscalNFeCommandGeral.Create(Parent : iModelFiscalNFe);
begin
  FParent := Parent;
end;

destructor TModelFiscalNFeCommandGeral.Destroy;
begin

  inherited;
end;

function TModelFiscalNFeCommandGeral.Execute: iCommand;
begin
  Result := Self;
  FParent.Component._this.Configuracoes.Geral.ModeloDF := moNFe;
  FParent.Component._this.Configuracoes.Geral.VersaoDF := ve400;
end;

class function TModelFiscalNFeCommandGeral.New(Parent : iModelFiscalNFe): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
