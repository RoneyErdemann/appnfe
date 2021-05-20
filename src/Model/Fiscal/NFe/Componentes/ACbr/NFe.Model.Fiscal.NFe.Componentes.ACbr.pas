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
  NFe.Model.Fiscal.NFe.Componentes.Interfaces,
  pcnNFe;

type
  TdmACBrNFe = class(TDataModule, iModelFiscalNFeComponentes<TACBrNFe>)
    ACBrNFe: TACBrNFe;
    ACBrNFeDANFeRL: TACBrNFeDANFeRL;
  private
    { Private declarations }
    FNotaFiscal : NotaFiscal;
    FProduto    : TDetCollectionItem;
    FDuplicata  : TDupCollectionItem;
    FObsComp    : TObsContCollectionItem;
    FObsFisco   : TObsFiscoCollectionItem;
    FPagamento  : TPagCollectionItem;
    FTranspVol  : TVolCollectionItem;
  public
    { Public declarations }
    function _this : TACBrNFe;
    function AddNotaFiscal : NotaFiscal;
    function NotaFiscal : NotaFiscal;
    function AddProduto : TDetCollectionItem;
    function Produto : TDetCollectionItem;
    function AddDuplicata : TDupCollectionItem;
    function Duplicata : TDupCollectionItem;
    function AddObsComp : TObsContCollectionItem;
    function ObsComp : TObsContCollectionItem;
    function AddObsFisco : TObsFiscoCollectionItem;
    function ObsFisco : TObsFiscoCollectionItem;
    function AddPagamento : TPagCollectionItem;
    function Pagamento : TPagCollectionItem;
    function AddTranspVol : TVolCollectionItem;
    function TranspVol : TVolCollectionItem;
    class function New : iModelFiscalNFeComponentes<TACBrNFe>;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmACBrNFe }

function TdmACBrNFe.AddDuplicata: TDupCollectionItem;
begin
  FDuplicata := FNotaFiscal.NFe.Cobr.Dup.New;
  Result := FDuplicata;
end;

function TdmACBrNFe.AddNotaFiscal: NotaFiscal;
begin
  FNotaFiscal := ACBrNFe.NotasFiscais.Add;
  Result      := FNotaFiscal;
end;

function TdmACBrNFe.AddObsComp: TObsContCollectionItem;
begin
  FObsComp := FNotaFiscal.NFe.InfAdic.obsCont.New;
  Result   := FObsComp;
end;

function TdmACBrNFe.AddObsFisco: TObsFiscoCollectionItem;
begin
  FObsFisco := FNotaFiscal.NFe.InfAdic.obsFisco.New;
  Result    := FObsFisco;
end;

function TdmACBrNFe.AddPagamento: TPagCollectionItem;
begin
  FPagamento := FNotaFiscal.NFe.pag.New;
  Result     := FPagamento;
end;

function TdmACBrNFe.AddProduto: TDetCollectionItem;
begin
  FProduto := FNotaFiscal.NFe.Det.New;
  Result := FProduto;
end;

function TdmACBrNFe.AddTranspVol: TVolCollectionItem;
begin
  FTranspVol := NotaFiscal.NFe.Transp.Vol.New;
  Result     := FTranspVol;
end;

function TdmACBrNFe.Duplicata: TDupCollectionItem;
begin
  Result := FDuplicata;
end;

class function TdmACBrNFe.New: iModelFiscalNFeComponentes<TACBrNFe>;
begin
  Result := Self.Create(nil);
end;

function TdmACBrNFe.NotaFiscal: NotaFiscal;
begin
  Result := FNotaFiscal;
end;

function TdmACBrNFe.ObsComp: TObsContCollectionItem;
begin
  Result := FObsComp;
end;

function TdmACBrNFe.ObsFisco: TObsFiscoCollectionItem;
begin
  Result := FObsFisco;
end;

function TdmACBrNFe.Pagamento: TPagCollectionItem;
begin
  Result := FPagamento;
end;

function TdmACBrNFe.Produto: TDetCollectionItem;
begin
  Result := FProduto;
end;

function TdmACBrNFe.TranspVol: TVolCollectionItem;
begin
  Result := FTranspVol;
end;

function TdmACBrNFe._this: TACBrNFe;
begin
  Result := ACBrNFe;
end;

end.
