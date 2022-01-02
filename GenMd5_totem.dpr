program GenMd5_totem;

uses
  Vcl.Forms,
  MD5_generator in 'MD5_generator.pas' {MD5_FILE_GENRATOR};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMD5_FILE_GENRATOR, MD5_FILE_GENRATOR);
  Application.Run;
end.
