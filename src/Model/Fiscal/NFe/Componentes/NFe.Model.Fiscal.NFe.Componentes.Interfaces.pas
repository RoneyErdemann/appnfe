unit NFe.Model.Fiscal.NFe.Componentes.Interfaces;

interface

uses
  ACBrNFe,
  ACBrNFeNotasFiscais,
  pcnNFe;

type

  iModelFiscalNFeComponentes<T> = interface
    ['{EF53F7ED-F51F-412F-B14B-CB4B240FA534}']
    function _this : T;
    function AddNotaFiscal : NotaFiscal;
    function NotaFiscal : NotaFiscal;
    function AddProduto : TDetCollectionItem;
    function Produto : TDetCollectionItem;
    function AddDuplicata : TDupCollectionItem;
    function Duplicata : TDupCollectionItem;
  end;

  iModelFiscalNFeFactory = interface
    ['{271FEF67-00FA-4B80-BF69-F30B8CF863E2}']
    function ACBr : iModelFiscalNFeComponentes<TACBrNFe>;
  end;

implementation

end.
