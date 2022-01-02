object MD5_FILE_GENRATOR: TMD5_FILE_GENRATOR
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'MD5_FILE_GENRATOR'
  ClientHeight = 232
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 554
    Height = 41
    Align = alTop
    Caption = 'File Name to generate MD5 CheckSum'
    TabOrder = 0
    object FileName_edt: TEdit
      Left = 2
      Top = 15
      Width = 407
      Height = 24
      Align = alLeft
      TabOrder = 0
      Text = 'FileName_edt'
      ExplicitHeight = 21
    end
    object Browse_btn: TButton
      Left = 409
      Top = 15
      Width = 143
      Height = 24
      Align = alClient
      Caption = 'Browse'
      TabOrder = 1
      OnClick = Browse_btnClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 47
    Width = 554
    Height = 185
    Align = alBottom
    Caption = 'MD5 Calculation'
    TabOrder = 1
    object MemLog: TMemo
      Left = 2
      Top = 15
      Width = 550
      Height = 168
      Align = alClient
      Lines.Strings = (
        '')
      TabOrder = 0
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 360
    Top = 72
  end
end
