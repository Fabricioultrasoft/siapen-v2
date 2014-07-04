unit PDFSplitMerge_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 41960 $
// File generated on 03/07/2014 13:24:43 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files (x86)\PDF Split Merge Component\PDFSplitMerge.dll (1)
// LIBID: {18441CDF-26A6-424C-9FCB-3435B5FA8C37}
// LCID: 0
// Helpfile: 
// HelpString: PDFSplitMerge 1.0 Type Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// Errors:
//   Error creating palette bitmap of (TCPDFSplitMergeObj) : Server C:\Program Files (x86)\PDF Split Merge Component\PDFSplitMerge.dll contains no icons
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Windows, ActiveX, Classes, Graphics, OleServer, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  PDFSplitMergeMajorVersion = 1;
  PDFSplitMergeMinorVersion = 0;

  LIBID_PDFSplitMerge: TGUID = '{18441CDF-26A6-424C-9FCB-3435B5FA8C37}';

  IID_IPDFSplitMerge: TGUID = '{49E9FF30-6AB9-4B64-A345-CA4B8F3F255F}';
  CLASS_CPDFSplitMergeObj: TGUID = '{50D41702-B618-41BA-8153-7AD7E8535574}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IPDFSplitMerge = interface;
  IPDFSplitMergeDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  CPDFSplitMergeObj = IPDFSplitMerge;


// *********************************************************************//
// Interface: IPDFSplitMerge
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {49E9FF30-6AB9-4B64-A345-CA4B8F3F255F}
// *********************************************************************//
  IPDFSplitMerge = interface(IDispatch)
    ['{49E9FF30-6AB9-4B64-A345-CA4B8F3F255F}']
    procedure Split(const strInPdf: WideString; const strSplit: WideString; 
                    const strOutPdf: WideString); safecall;
    procedure Merge(const strInFiles: WideString; const strOutFile: WideString); safecall;
    procedure SetCode(const strCode: WideString); safecall;
    function GetNumberOfPages(const strFile: WideString; const strPasswd: WideString): Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  IPDFSplitMergeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {49E9FF30-6AB9-4B64-A345-CA4B8F3F255F}
// *********************************************************************//
  IPDFSplitMergeDisp = dispinterface
    ['{49E9FF30-6AB9-4B64-A345-CA4B8F3F255F}']
    procedure Split(const strInPdf: WideString; const strSplit: WideString; 
                    const strOutPdf: WideString); dispid 1;
    procedure Merge(const strInFiles: WideString; const strOutFile: WideString); dispid 2;
    procedure SetCode(const strCode: WideString); dispid 19;
    function GetNumberOfPages(const strFile: WideString; const strPasswd: WideString): Integer; dispid 20;
  end;

// *********************************************************************//
// The Class CoCPDFSplitMergeObj provides a Create and CreateRemote method to          
// create instances of the default interface IPDFSplitMerge exposed by              
// the CoClass CPDFSplitMergeObj. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCPDFSplitMergeObj = class
    class function Create: IPDFSplitMerge;
    class function CreateRemote(const MachineName: string): IPDFSplitMerge;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCPDFSplitMergeObj
// Help String      : PDFSplitMerge Class
// Default Interface: IPDFSplitMerge
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TCPDFSplitMergeObj = class(TOleServer)
  private
    FIntf: IPDFSplitMerge;
    function GetDefaultInterface: IPDFSplitMerge;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IPDFSplitMerge);
    procedure Disconnect; override;
    procedure Split(const strInPdf: WideString; const strSplit: WideString; 
                    const strOutPdf: WideString);
    procedure Merge(const strInFiles: WideString; const strOutFile: WideString);
    procedure SetCode(const strCode: WideString);
    function GetNumberOfPages(const strFile: WideString; const strPasswd: WideString): Integer;
    property DefaultInterface: IPDFSplitMerge read GetDefaultInterface;
  published
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

class function CoCPDFSplitMergeObj.Create: IPDFSplitMerge;
begin
  Result := CreateComObject(CLASS_CPDFSplitMergeObj) as IPDFSplitMerge;
end;

class function CoCPDFSplitMergeObj.CreateRemote(const MachineName: string): IPDFSplitMerge;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CPDFSplitMergeObj) as IPDFSplitMerge;
end;

procedure TCPDFSplitMergeObj.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{50D41702-B618-41BA-8153-7AD7E8535574}';
    IntfIID:   '{49E9FF30-6AB9-4B64-A345-CA4B8F3F255F}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCPDFSplitMergeObj.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IPDFSplitMerge;
  end;
end;

procedure TCPDFSplitMergeObj.ConnectTo(svrIntf: IPDFSplitMerge);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TCPDFSplitMergeObj.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TCPDFSplitMergeObj.GetDefaultInterface: IPDFSplitMerge;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCPDFSplitMergeObj.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TCPDFSplitMergeObj.Destroy;
begin
  inherited Destroy;
end;

procedure TCPDFSplitMergeObj.Split(const strInPdf: WideString; const strSplit: WideString; 
                                   const strOutPdf: WideString);
begin
  DefaultInterface.Split(strInPdf, strSplit, strOutPdf);
end;

procedure TCPDFSplitMergeObj.Merge(const strInFiles: WideString; const strOutFile: WideString);
begin
  DefaultInterface.Merge(strInFiles, strOutFile);
end;

procedure TCPDFSplitMergeObj.SetCode(const strCode: WideString);
begin
  DefaultInterface.SetCode(strCode);
end;

function TCPDFSplitMergeObj.GetNumberOfPages(const strFile: WideString; const strPasswd: WideString): Integer;
begin
  Result := DefaultInterface.GetNumberOfPages(strFile, strPasswd);
end;

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TCPDFSplitMergeObj]);
end;

end.
