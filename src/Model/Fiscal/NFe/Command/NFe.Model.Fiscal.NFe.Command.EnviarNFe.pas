unit NFe.Model.Fiscal.NFe.Command.EnviarNFe;

interface

Uses
  NFe.Model.Fiscal.NFe.Interfaces;

Type
  TModelFiscalNFeCommandEnviarNFe = Class(TInterfacedObject, iCommand)
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

{ TModelFiscalNFeCommandEnviarNFe }

constructor TModelFiscalNFeCommandEnviarNFe.Create(Parent : iModelFiscalNFe);
begin
  FParent := Parent;
end;

destructor TModelFiscalNFeCommandEnviarNFe.Destroy;
begin

  inherited;
end;

function TModelFiscalNFeCommandEnviarNFe.Execute: iCommand;
begin
  Result := Self;
  FParent.Component._this.Enviar(1, true);
end;

class function TModelFiscalNFeCommandEnviarNFe.New(Parent : iModelFiscalNFe): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
