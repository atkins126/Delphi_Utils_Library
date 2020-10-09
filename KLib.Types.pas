unit KLib.Types;

interface

uses
  Vcl.Graphics, IdFTPCommon;

type

  TCredentials = record
    username: string;
    password: string;
  end;

  TFTPCredentials = record
    credentials: TCredentials;
    server: string;
    pathFTPDir: string;
    transferType: TIdFTPTransferType;
  end;

  TDownloadInfo = record
    link: string;
    fileName: string;
    typeFile: string;
    md5: string;
  end;

  TDownloadOptions = record
    forceOverwrite: boolean;
    useIndy: boolean;
  end;

  TArrayOfDownloadInfo = array of TDownloadInfo;

  TPIDCredentials = record
    ownerUserName: string;
    domain: string;
  end;

  TColorButtom = record
    enabled: TColor;
    disabled: TColor;
  end;

  TPosition = record
    top: integer;
    bottom: integer;
    left: integer;
    right: integer;
  end;

  TSize = record
    width: integer;
    height: integer;
  end;

  TResource = record
    name: string;
    _type: string;
  end;

  TTypeOfProcedure = (_procedure, _method, _anonymousMethod);

  TAnonymousMethod = reference to procedure;
  TArrayOfAnonymousMethods = array of TAnonymousMethod;

  TMethod = procedure of object;
  TArrayOfMethods = array of TMethod;

  TProcedure = procedure;
  TArrayOfProcedures = array of TProcedure;

  TCallBack = reference to procedure(msg: String = '');

  TCallBacks = record
    resolve: TCallBack;
    reject: TCallBack;
  end;

  TAsyncifyProcedureReply = record
    handle: THandle;
    msg_resolve: Cardinal;
    msg_reject: Cardinal;
  end;

implementation

end.
