inherited frmCadastroFuncionario: TfrmCadastroFuncionario
  Caption = 'Cadastro de Funcion'#225'rios'
  ClientHeight = 491
  ClientWidth = 862
  OnShow = FormShow
  ExplicitWidth = 878
  ExplicitHeight = 530
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 48
    Width = 43
    Height = 18
    Caption = 'C'#243'digo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 75
    Width = 39
    Height = 18
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 102
    Width = 41
    Height = 18
    Caption = 'Sal'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 129
    Width = 76
    Height = 18
    Caption = 'Nascimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 156
    Width = 44
    Height = 18
    Caption = 'fun'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtCodigoFuncionario: TEdit
    Left = 104
    Top = 45
    Width = 41
    Height = 21
    TabOrder = 0
    OnChange = edtCodigoFuncionarioChange
  end
  object edtNomeFuncionario: TEdit
    Left = 104
    Top = 72
    Width = 329
    Height = 21
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 232
    Width = 838
    Height = 251
    DataSource = DataModule1.DataSource2
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 41
    Align = alTop
    Caption = 'Cadastro de Funcion'#225'rios'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 7
  end
  object btnCadastrarFuncionario: TButton
    Left = 16
    Top = 192
    Width = 89
    Height = 25
    Caption = 'Cadastrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btnCadastrarFuncionarioClick
  end
  object edtNascimentoFuncionario: TMaskEdit
    Left = 104
    Top = 126
    Width = 120
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
  end
  object edtSalarioFuncionario: TMaskEdit
    Left = 104
    Top = 99
    Width = 121
    Height = 21
    TabOrder = 2
    Text = ''
  end
  object cmbFuncaoFuncionario: TDBLookupComboBox
    Left = 98
    Top = 153
    Width = 329
    Height = 21
    KeyField = 'CODIGO'
    ListField = 'DESCRICAO'
    ListSource = DataModule1.DataSource1
    TabOrder = 4
  end
  object btnAlterarFuncionario: TButton
    Left = 110
    Top = 192
    Width = 89
    Height = 25
    Caption = 'Alterar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = btnAlterarFuncionarioClick
  end
  object btnExcluirFuncionario: TButton
    Left = 207
    Top = 192
    Width = 89
    Height = 25
    Caption = 'Excluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = btnExcluirFuncionarioClick
  end
  object btnMudarCadastroFuncoes: TButton
    Left = 306
    Top = 192
    Width = 121
    Height = 25
    Caption = 'Alterar Fun'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = btnMudarCadastroFuncoesClick
  end
end