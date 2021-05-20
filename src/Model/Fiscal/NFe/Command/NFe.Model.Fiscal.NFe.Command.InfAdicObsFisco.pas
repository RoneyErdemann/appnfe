unit NFe.Model.Fiscal.NFe.Command.InfAdicObsFisco;

interface

Uses
  NFe.Model.Fiscal.NFe.Interfaces;

Type
  TModelFiscalNFeCommandInfAdicObsFisco = Class(TInterfacedObject, iCommand)
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

{ TModelFiscalNFeCommandInfAdicObsFisco }

constructor TModelFiscalNFeCommandInfAdicObsFisco.Create(Parent : iModelFiscalNFe);
begin
  FParent := Parent
end;

destructor TModelFiscalNFeCommandInfAdicObsFisco.Destroy;
begin

  inherited;
end;

function TModelFiscalNFeCommandInfAdicObsFisco.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.AddObsFisco;
  FParent.Component.ObsFisco.xCampo := 'ObsFisco';
  FParent.Component.ObsFisco.xTexto := 'Texto';
end;

class function TModelFiscalNFeCommandInfAdicObsFisco.New(Parent : iModelFiscalNFe): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
