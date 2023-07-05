object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  ClientHeight = 519
  ClientWidth = 982
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 982
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 872
      Top = 8
      Width = 23
      Height = 22
    end
    object JvSpeedButton1: TJvSpeedButton
      Left = 672
      Top = 0
      Width = 25
      Height = 25
      HintColor = clLime
      HotTrack = True
      HotTrackOptions.Enabled = True
      HotTrackOptions.FrameVisible = True
      HotTrackOptions.FrameColor = clLime
    end
  end
end
