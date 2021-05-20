unit NFe.Model.Fiscal.NFe.Command.InfAdicObsComp;

interface

Uses
  NFe.Model.Fiscal.NFe.Interfaces;

Type
  TModelFiscalNFeCommandInfAdicObsComp = Class(TInterfacedObject, iCommand)
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

{ TModelFiscalNFeCommandInfAdicObsComp }

constructor TModelFiscalNFeCommandInfAdicObsComp.Create(Parent : iModelFiscalNFe);
begin
  FParent := Parent
end;

destructor TModelFiscalNFeCommandInfAdicObsComp.Destroy;
begin

  inherited;
end;

function TModelFiscalNFeCommandInfAdicObsComp.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.AddObsComp;
  FParent.Component.ObsComp.xCampo := 'ObsCont';
  FParent.Component.ObsComp.xTexto := 'Texto';
end;

class function TModelFiscalNFeCommandInfAdicObsComp.New(Parent : iModelFiscalNFe): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
