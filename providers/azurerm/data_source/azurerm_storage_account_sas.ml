(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type permissions = {
  add : bool prop;
  create : bool prop;
  delete : bool prop;
  filter : bool prop;
  list_ : bool prop; [@key "list"]
  process : bool prop;
  read : bool prop;
  tag : bool prop;
  update : bool prop;
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
       filter = v_filter;
       list_ = v_list_;
       process = v_process;
       read = v_read;
       tag = v_tag;
       update = v_update;
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
         let arg = yojson_of_prop yojson_of_bool v_update in
         ("update", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_tag in
         ("tag", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_read in
         ("read", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_process in
         ("process", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_list_ in
         ("list", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_filter in
         ("filter", arg) :: bnds
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

type resource_types = {
  container : bool prop;
  object_ : bool prop; [@key "object"]
  service : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resource_types) -> ()

let yojson_of_resource_types =
  (function
   | {
       container = v_container;
       object_ = v_object_;
       service = v_service;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_object_ in
         ("object", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_container in
         ("container", arg) :: bnds
       in
       `Assoc bnds
    : resource_types -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resource_types

[@@@deriving.end]

type services = {
  blob : bool prop;
  file : bool prop;
  queue : bool prop;
  table : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : services) -> ()

let yojson_of_services =
  (function
   | {
       blob = v_blob;
       file = v_file;
       queue = v_queue;
       table = v_table;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_table in
         ("table", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_queue in
         ("queue", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_file in
         ("file", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_blob in
         ("blob", arg) :: bnds
       in
       `Assoc bnds
    : services -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_services

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

type azurerm_storage_account_sas = {
  connection_string : string prop;
  expiry : string prop;
  https_only : bool prop option; [@option]
  id : string prop option; [@option]
  ip_addresses : string prop option; [@option]
  signed_version : string prop option; [@option]
  start : string prop;
  permissions : permissions list;
  resource_types : resource_types list;
  services : services list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_account_sas) -> ()

let yojson_of_azurerm_storage_account_sas =
  (function
   | {
       connection_string = v_connection_string;
       expiry = v_expiry;
       https_only = v_https_only;
       id = v_id;
       ip_addresses = v_ip_addresses;
       signed_version = v_signed_version;
       start = v_start;
       permissions = v_permissions;
       resource_types = v_resource_types;
       services = v_services;
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
         let arg = yojson_of_list yojson_of_services v_services in
         ("services", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_resource_types v_resource_types
         in
         ("resource_types", arg) :: bnds
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
         match v_signed_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "signed_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_addresses", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_connection_string
         in
         ("connection_string", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_storage_account_sas ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_account_sas

[@@@deriving.end]

let permissions ~add ~create ~delete ~filter ~list_ ~process ~read
    ~tag ~update ~write () : permissions =
  {
    add;
    create;
    delete;
    filter;
    list_;
    process;
    read;
    tag;
    update;
    write;
  }

let resource_types ~container ~object_ ~service () : resource_types =
  { container; object_; service }

let services ~blob ~file ~queue ~table () : services =
  { blob; file; queue; table }

let timeouts ?read () : timeouts = { read }

let azurerm_storage_account_sas ?https_only ?id ?ip_addresses
    ?signed_version ?timeouts ~connection_string ~expiry ~start
    ~permissions ~resource_types ~services () :
    azurerm_storage_account_sas =
  {
    connection_string;
    expiry;
    https_only;
    id;
    ip_addresses;
    signed_version;
    start;
    permissions;
    resource_types;
    services;
    timeouts;
  }

type t = {
  connection_string : string prop;
  expiry : string prop;
  https_only : bool prop;
  id : string prop;
  ip_addresses : string prop;
  sas : string prop;
  signed_version : string prop;
  start : string prop;
}

let make ?https_only ?id ?ip_addresses ?signed_version ?timeouts
    ~connection_string ~expiry ~start ~permissions ~resource_types
    ~services __id =
  let __type = "azurerm_storage_account_sas" in
  let __attrs =
    ({
       connection_string =
         Prop.computed __type __id "connection_string";
       expiry = Prop.computed __type __id "expiry";
       https_only = Prop.computed __type __id "https_only";
       id = Prop.computed __type __id "id";
       ip_addresses = Prop.computed __type __id "ip_addresses";
       sas = Prop.computed __type __id "sas";
       signed_version = Prop.computed __type __id "signed_version";
       start = Prop.computed __type __id "start";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_account_sas
        (azurerm_storage_account_sas ?https_only ?id ?ip_addresses
           ?signed_version ?timeouts ~connection_string ~expiry
           ~start ~permissions ~resource_types ~services ());
    attrs = __attrs;
  }

let register ?tf_module ?https_only ?id ?ip_addresses ?signed_version
    ?timeouts ~connection_string ~expiry ~start ~permissions
    ~resource_types ~services __id =
  let (r : _ Tf_core.resource) =
    make ?https_only ?id ?ip_addresses ?signed_version ?timeouts
      ~connection_string ~expiry ~start ~permissions ~resource_types
      ~services __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
