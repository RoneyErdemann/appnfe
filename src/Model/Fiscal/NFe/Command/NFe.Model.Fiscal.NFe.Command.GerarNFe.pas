unit NFe.Model.Fiscal.NFe.Command.GerarNFe;

interface

uses
  NFe.Model.Fiscal.NFe.Interfaces;

Type
  TModelFiscalNFeCommandGerarNFe = Class(TInterfacedObject, iCommand)
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

{ TModelFiscalNFeCommandGerarNFe }

constructor TModelFiscalNFeCommandGerarNFe.Create(Parent : iModelFiscalNFe);
begin
  FParent := Parent
end;

destructor TModelFiscalNFeCommandGerarNFe.Destroy;
begin

  inherited;
end;

function TModelFiscalNFeCommandGerarNFe.Execute: iCommand;
begin
  Result := Self;
  FParent.Component._this.NotasFiscais.GerarNFe;
end;

class function TModelFiscalNFeCommandGerarNFe.New(Parent : iModelFiscalNFe): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
