unit NFe.Model.Fiscal.NFe.Componentes.ACbr;

interface

uses
  System.SysUtils,
  System.Classes,
  ACBrBase,
  ACBrDFe,
  ACBrNFe,
  ACBrDFeReport,
  ACBrDFeDANFeReport,
  ACBrNFeDANFEClass,
  ACBrNFeDANFeRLClass,
  ACBrNFeNotasFiscais,
  NFe.Model.Fiscal.NFe.Componentes.Interfaces, pcnNFe;

type
  TdmACBrNFe = class(TDataModule, iModelFiscalNFeComponentes<TACBrNFe>)
    ACBrNFe: TACBrNFe;
    ACBrNFeDANFeRL: TACBrNFeDANFeRL;
  private
    { Private declarations }
    FNotaFiscal : NotaFiscal;
    FProduto : TDetCollectionItem;
  public
    { Public declarations }
    function _this : TACBrNFe;
    function AddNotaFiscal : NotaFiscal;
    function NotaFiscal : NotaFiscal;
    function AddProduto : TDetCollectionItem;
    function Produto : TDetCollectionItem;
    class function New : iModelFiscalNFeComponentes<TACBrNFe>;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmACBrNFe }

function TdmACBrNFe.AddNotaFiscal: NotaFiscal;
begin
  FNotaFiscal := ACBrNFe.NotasFiscais.Add;
  Result      := FNotaFiscal;
end;

function TdmACBrNFe.AddProduto: TDetCollectionItem;
begin
  FProduto := FNotaFiscal.NFe.Det.New;
  Result := FProduto;
end;

class function TdmACBrNFe.New: iModelFiscalNFeComponentes<TACBrNFe>;
begin
  Result := Self.Create(nil);
end;

function TdmACBrNFe.NotaFiscal: NotaFiscal;
begin
  Result := FNotaFiscal;
end;

function TdmACBrNFe.Produto: TDetCollectionItem;
begin
  Result := FProduto;
end;

function TdmACBrNFe._this: TACBrNFe;
begin
  Result := ACBrNFe;
end;

end.
