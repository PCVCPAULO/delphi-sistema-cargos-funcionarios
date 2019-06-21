program Project_3LM;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {frmPrincipal},
  UDM_3LM in 'UDM_3LM.pas' {DataModule1: TDataModule},
  UFuncoesModel in 'UFuncoesModel.pas',
  UCadastroFuncoes in 'UCadastroFuncoes.pas' {frmCadastroFuncoes},
  UFuncoesDAO in 'UFuncoesDAO.pas',
  UfrmMenu in 'UfrmMenu.pas' {frmMenu};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.Run;
end.
