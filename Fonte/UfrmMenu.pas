unit UfrmMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPrincipal, Vcl.Menus;

type
  TfrmMenu = class(TfrmPrincipal)
    MainMenu1: TMainMenu;
    mntCadastros: TMenuItem;
    mntCadastroFunces: TMenuItem;
    mntCadastroFuncionrios: TMenuItem;
    mntRelatorios: TMenuItem;
    mntRelatorioFuncoes: TMenuItem;
    mntRelatorioFuncionarios: TMenuItem;
    mntRelatorioFuncionarioPorFuncao: TMenuItem;
    mntRelatorioFuncionarioAniversariantes: TMenuItem;
    mntSair: TMenuItem;
    procedure mntCadastroFuncesClick(Sender: TObject);
    procedure mntSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

uses UCadastroFuncoes;

procedure TfrmMenu.mntCadastroFuncesClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TfrmCadastroFuncoes, frmCadastroFuncoes);
    frmCadastroFuncoes.ShowModal;
  finally
    FreeAndNil(frmCadastroFuncoes);
  end;
end;

procedure TfrmMenu.mntSairClick(Sender: TObject);
begin
  inherited;
  Application.Terminate;
end;

end.
