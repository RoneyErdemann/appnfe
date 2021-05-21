unit NFe.Model.Fiscal.NFe.RegrasFiscais.Interfaces;

interface

uses
  NFe.Model.Fiscal.NFe.Interfaces;

type

  iModelNFeRegras = interface
    ['{8CE114D5-3132-4F9D-A780-BFAF7FE1C650}']
    function ProdutoImpostoICMS: iModelNFeRegras;
  end;

  iVisitor = interface
    ['{F49276F6-0644-43E0-B553-94A4119A496A}']
    function Visit( Value: iModelFiscalNFe): iModelNFeRegras;
  end;

  iVisitable = interface
    ['{3978C1DB-555C-4591-A212-3EC9B06CE576}']
    function Accept(Value: iVisitor): iModelNFeRegras;
  end;

implementation

end.
