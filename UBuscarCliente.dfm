object BuscarCliente: TBuscarCliente
  Left = 0
  Top = 0
  Caption = 'Buscar cliente'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 258
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitHeight = 241
    object GridCliente: TDBGrid
      Left = 1
      Top = 1
      Width = 633
      Height = 256
      Align = alClient
      DataSource = dsCliente
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOCUMENTO'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMAIL'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEFONE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATACADASTRO'
          Width = 89
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 258
    Width = 635
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 263
    object btnOK: TButton
      Left = 240
      Top = 9
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancelar: TButton
      Left = 321
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
    end
  end
  object dsCliente: TDataSource
    DataSet = DMPrincipal.FDCliente
    Left = 568
    Top = 136
  end
end
