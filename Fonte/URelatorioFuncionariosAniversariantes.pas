unit URelatorioFuncionariosAniversariantes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPrincipal, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Data.DB, Vcl.Grids,
  Vcl.DBGrids, ppPrnabl, ppClass, ppCtrls, ppBands, ppCache, ppDesignLayer, ppParameter, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, ppVar;

type
  TfrmRelatorioFuncionariosAniversariantes = class(TfrmPrincipal)
    edtDiaMesInicial: TMaskEdit;
    edtDiaMesFinal: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    cbListaTodosFuncionariosAniversariantes: TCheckBox;
    dbgRelatorioFuncionariosAniversariantes: TDBGrid;
    Button1: TButton;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    btnImprimirFuncionariosAniversariantes: TButton;
    ppLabel1: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel6: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    procedure Button1Click(Sender: TObject);
    procedure btnImprimirFuncionariosAniversariantesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioFuncionariosAniversariantes: TfrmRelatorioFuncionariosAniversariantes;

implementation

{$R *.dfm}

uses UFuncionarioDAO, UDM_3LM;

procedure TfrmRelatorioFuncionariosAniversariantes.btnImprimirFuncionariosAniversariantesClick(Sender: TObject);
begin
  inherited;
  ppDBPipeline1.DataSource := DataModule1.DataSource2;
  ppReport1.DataPipeline := ppDBPipeline1;
  ppReport1.PreviewFormSettings.ZoomPercentage := 100;
  ppReport1.Print;
end;

procedure TfrmRelatorioFuncionariosAniversariantes.Button1Click(Sender: TObject);
var
  funcionario: TFuncionarioDAO;
  diaInicial, diaFinal, mesInicial, mesFinal: string;
  
begin
  inherited;
  diaInicial := Copy(edtDiaMesInicial.Text,1,2);
  diaFinal   := Copy(edtDiaMesFinal.Text,1,2);

  mesInicial := Copy(edtDiaMesInicial.Text,4,2);
  mesFinal   := Copy(edtDiaMesFinal.Text,4,2);  

  try
    funcionario := TFuncionarioDAO.Create;

    if (cbListaTodosFuncionariosAniversariantes.Checked = False) then
      funcionario.RelatorioFuncionariosAniversariantes(diaInicial,
                                                       diaFinal,
                                                       mesInicial,
                                                       mesFinal,
                                                       False)
    else
      funcionario.RelatorioFuncionariosAniversariantes(diaInicial,
                                                       diaFinal,
                                                       mesInicial,
                                                       mesFinal,
                                                       True);

    dbgRelatorioFuncionariosAniversariantes.DataSource := DataModule1.DataSource2;    
  finally
    FreeAndNil(funcionario);
  end;

end;

end.
