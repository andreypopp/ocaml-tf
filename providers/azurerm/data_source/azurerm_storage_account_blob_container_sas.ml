(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type permissions = {
  add : bool prop;
  create : bool prop;
  delete : bool prop;
  list_ : bool prop; [@key "list"]
  read : bool prop;
  write : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : permissions) -> ()

let yojson_of_permissions =
  (function
   | {
       add = v_add;
       create = v_create;
       delete = v_delete;
       list_ = v_list_;
       read = v_read;
       write = v_write;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_write in
         ("write", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_read in
         ("read", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_list_ in
         ("list", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_delete in
         ("delete", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_create in
         ("create", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_add in
         ("add", arg) :: bnds
       in
       `Assoc bnds
    : permissions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_permissions

[@@@deriving.end]

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_storage_account_blob_container_sas = {
  cache_control : string prop option; [@option]
  connection_string : string prop;
  container_name : string prop;
  content_disposition : string prop option; [@option]
  content_encoding : string prop option; [@option]
  content_language : string prop option; [@option]
  content_type : string prop option; [@option]
  expiry : string prop;
  https_only : bool prop option; [@option]
  id : string prop option; [@option]
  ip_address : string prop option; [@option]
  start : string prop;
  permissions : permissions list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_account_blob_container_sas) -> ()

let yojson_of_azurerm_storage_account_blob_container_sas =
  (function
   | {
       cache_control = v_cache_control;
       connection_string = v_connection_string;
       container_name = v_container_name;
       content_disposition = v_content_disposition;
       content_encoding = v_content_encoding;
       content_language = v_content_language;
       content_type = v_content_type;
       expiry = v_expiry;
       https_only = v_https_only;
       id = v_id;
       ip_address = v_ip_address;
       start = v_start;
       permissions = v_permissions;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_permissions v_permissions
         in
         ("permissions", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start in
         ("start", arg) :: bnds
       in
       let bnds =
         match v_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_https_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "https_only", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expiry in
         ("expiry", arg) :: bnds
       in
       let bnds =
         match v_content_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_language with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_language", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_encoding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_encoding", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_disposition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_disposition", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_string
         in
         ("connection_string", arg) :: bnds
       in
       let bnds =
         match v_cache_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cache_control", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_storage_account_blob_container_sas ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_account_blob_container_sas

[@@@deriving.end]

let permissions ~add ~create ~delete ~list_ ~read ~write () :
    permissions =
  { add; create; delete; list_; read; write }

let timeouts ?read () : timeouts = { read }

let azurerm_storage_account_blob_container_sas ?cache_control
    ?content_disposition ?content_encoding ?content_language
    ?content_type ?https_only ?id ?ip_address ?timeouts
    ~connection_string ~container_name ~expiry ~start ~permissions ()
    : azurerm_storage_account_blob_container_sas =
  {
    cache_control;
    connection_string;
    container_name;
    content_disposition;
    content_encoding;
    content_language;
    content_type;
    expiry;
    https_only;
    id;
    ip_address;
    start;
    permissions;
    timeouts;
  }

type t = {
  cache_control : string prop;
  connection_string : string prop;
  container_name : string prop;
  content_disposition : string prop;
  content_encoding : string prop;
  content_language : string prop;
  content_type : string prop;
  expiry : string prop;
  https_only : bool prop;
  id : string prop;
  ip_address : string prop;
  sas : string prop;
  start : string prop;
}

let make ?cache_control ?content_disposition ?content_encoding
    ?content_language ?content_type ?https_only ?id ?ip_address
    ?timeouts ~connection_string ~container_name ~expiry ~start
    ~permissions __id =
  let __type = "azurerm_storage_account_blob_container_sas" in
  let __attrs =
    ({
       cache_control = Prop.computed __type __id "cache_control";
       connection_string =
         Prop.computed __type __id "connection_string";
       container_name = Prop.computed __type __id "container_name";
       content_disposition =
         Prop.computed __type __id "content_disposition";
       content_encoding =
         Prop.computed __type __id "content_encoding";
       content_language =
         Prop.computed __type __id "content_language";
       content_type = Prop.computed __type __id "content_type";
       expiry = Prop.computed __type __id "expiry";
       https_only = Prop.computed __type __id "https_only";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       sas = Prop.computed __type __id "sas";
       start = Prop.computed __type __id "start";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_account_blob_container_sas
        (azurerm_storage_account_blob_container_sas ?cache_control
           ?content_disposition ?content_encoding ?content_language
           ?content_type ?https_only ?id ?ip_address ?timeouts
           ~connection_string ~container_name ~expiry ~start
           ~permissions ());
    attrs = __attrs;
  }

let register ?tf_module ?cache_control ?content_disposition
    ?content_encoding ?content_language ?content_type ?https_only ?id
    ?ip_address ?timeouts ~connection_string ~container_name ~expiry
    ~start ~permissions __id =
  let (r : _ Tf_core.resource) =
    make ?cache_control ?content_disposition ?content_encoding
      ?content_language ?content_type ?https_only ?id ?ip_address
      ?timeouts ~connection_string ~container_name ~expiry ~start
      ~permissions __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
