object Principal: TPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu principal'
  ClientHeight = 159
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Central: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 159
    Align = alClient
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 472
    Top = 16
    object Cadastrodeordemdeservio1: TMenuItem
      Caption = 'Cadastros'
      object Cadastrodeordemdeservio2: TMenuItem
        Caption = 'Cliente'
        OnClick = Cadastrodeordemdeservio2Click
      end
      object Ordemdeservio3: TMenuItem
        Caption = 'Ordem de servi'#231'o'
        OnClick = Ordemdeservio3Click
      end
    end
    object Consultas1: TMenuItem
      Caption = 'Consultas'
      object Ordemdeservio1: TMenuItem
        Caption = 'Ordem de servi'#231'o'
        OnClick = Ordemdeservio1Click
      end
    end
    object Relatrio1: TMenuItem
      Caption = 'Relat'#243'rio'
      object Ordemdeservio2: TMenuItem
        Caption = 'Ordem de servi'#231'o'
      end
    end
    object Movimentao1: TMenuItem
      Caption = 'Movimenta'#231#227'o'
      object CalculodeSLA1: TMenuItem
        Caption = 'Calculo de SLA'
      end
    end
  end
end
