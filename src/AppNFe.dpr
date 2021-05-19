program AppNFe;

uses
  Vcl.Forms,
  NFe.View.Main in 'View\Pages\NFe.View.Main.pas' {Form1},
  NFe.Model.Fiscal.NFe.Componentes.ACbr in 'Model\Fiscal\NFe\Componentes\ACbr\NFe.Model.Fiscal.NFe.Componentes.ACbr.pas' {dmACBrNFe: TDataModule},
  NFe.Model.Fiscal.NFe.Componentes.Interfaces in 'Model\Fiscal\NFe\Componentes\NFe.Model.Fiscal.NFe.Componentes.Interfaces.pas',
  NFe.Model.Fiscal.NFe.Componentes.Factory in 'Model\Fiscal\NFe\Componentes\NFe.Model.Fiscal.NFe.Componentes.Factory.pas';

{$R *.res}

begin
  Application.Initialize;
  {$IFDEF DEBUG}
    ReportMemoryLeaksOnShutdown := True;
  {$ENDIF}
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
