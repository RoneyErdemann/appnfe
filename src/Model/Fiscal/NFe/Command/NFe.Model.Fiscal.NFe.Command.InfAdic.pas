unit NFe.Model.Fiscal.NFe.Command.InfAdic;

interface

Uses
  NFe.Model.Fiscal.NFe.Interfaces;

Type
  TModelFiscalNFeCommandInfAdic = Class(TInterfacedObject, iCommand)
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

{ TModelFiscalNFeCommandInfAdic }

constructor TModelFiscalNFeCommandInfAdic.Create(Parent : iModelFiscalNFe);
begin
  FParent := Parent
end;

destructor TModelFiscalNFeCommandInfAdic.Destroy;
begin

  inherited;
end;

function TModelFiscalNFeCommandInfAdic.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.NotaFiscal.NFe.InfAdic.infCpl := 'Informações complementares';
end;

class function TModelFiscalNFeCommandInfAdic.New(Parent : iModelFiscalNFe): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
