unit NFe.Model.Fiscal.NFe.Invoker;

interface

Uses
  System.Generics.Collections,
  NFe.Model.Fiscal.NFe.Interfaces;

Type
  TModelFiscalNFeInvoker = Class(TInterfacedObject, iInvoker)
    private
      FList : TList<iCommand>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iInvoker;
      function Add( Value: iCommand ): iInvoker;
      function Execute : iInvoker;
  end;

implementation

uses
  System.SysUtils;

{ TModelFiscalNFeInvoker }

function TModelFiscalNFeInvoker.Add( Value: iCommand ): iInvoker;
begin
  Result := Self;
  FList.Add(Value);
end;

constructor TModelFiscalNFeInvoker.Create;
begin
  FList := TList<iCommand>.Create;
end;

destructor TModelFiscalNFeInvoker.Destroy;
begin
  FreeAndNil(FList);
  inherited;
end;

function TModelFiscalNFeInvoker.Execute: iInvoker;
var
  FCommand : iCommand;
begin
  for FCommand in FList do
    FCommand.Execute;
end;

class function TModelFiscalNFeInvoker.New: iInvoker;
begin
  Result := Self.Create;
end;

end.
