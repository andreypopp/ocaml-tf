(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type developer_portal = {
  certificate : string prop option; [@option]
  certificate_password : string prop option; [@option]
  host_name : string prop;
  key_vault_id : string prop option; [@option]
  negotiate_client_certificate : bool prop option; [@option]
  ssl_keyvault_identity_client_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : developer_portal) -> ()

let yojson_of_developer_portal =
  (function
   | {
       certificate = v_certificate;
       certificate_password = v_certificate_password;
       host_name = v_host_name;
       key_vault_id = v_key_vault_id;
       negotiate_client_certificate = v_negotiate_client_certificate;
       ssl_keyvault_identity_client_id =
         v_ssl_keyvault_identity_client_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ssl_keyvault_identity_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl_keyvault_identity_client_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_negotiate_client_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negotiate_client_certificate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_vault_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_name in
         ("host_name", arg) :: bnds
       in
       let bnds =
         match v_certificate_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : developer_portal -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_developer_portal

[@@@deriving.end]

type gateway = {
  certificate : string prop option; [@option]
  certificate_password : string prop option; [@option]
  default_ssl_binding : bool prop option; [@option]
  host_name : string prop;
  key_vault_id : string prop option; [@option]
  negotiate_client_certificate : bool prop option; [@option]
  ssl_keyvault_identity_client_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : gateway) -> ()

let yojson_of_gateway =
  (function
   | {
       certificate = v_certificate;
       certificate_password = v_certificate_password;
       default_ssl_binding = v_default_ssl_binding;
       host_name = v_host_name;
       key_vault_id = v_key_vault_id;
       negotiate_client_certificate = v_negotiate_client_certificate;
       ssl_keyvault_identity_client_id =
         v_ssl_keyvault_identity_client_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ssl_keyvault_identity_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl_keyvault_identity_client_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_negotiate_client_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negotiate_client_certificate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_vault_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_name in
         ("host_name", arg) :: bnds
       in
       let bnds =
         match v_default_ssl_binding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "default_ssl_binding", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : gateway -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_gateway

[@@@deriving.end]

type management = {
  certificate : string prop option; [@option]
  certificate_password : string prop option; [@option]
  host_name : string prop;
  key_vault_id : string prop option; [@option]
  negotiate_client_certificate : bool prop option; [@option]
  ssl_keyvault_identity_client_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : management) -> ()

let yojson_of_management =
  (function
   | {
       certificate = v_certificate;
       certificate_password = v_certificate_password;
       host_name = v_host_name;
       key_vault_id = v_key_vault_id;
       negotiate_client_certificate = v_negotiate_client_certificate;
       ssl_keyvault_identity_client_id =
         v_ssl_keyvault_identity_client_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ssl_keyvault_identity_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl_keyvault_identity_client_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_negotiate_client_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negotiate_client_certificate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_vault_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_name in
         ("host_name", arg) :: bnds
       in
       let bnds =
         match v_certificate_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : management -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_management

[@@@deriving.end]

type portal = {
  certificate : string prop option; [@option]
  certificate_password : string prop option; [@option]
  host_name : string prop;
  key_vault_id : string prop option; [@option]
  negotiate_client_certificate : bool prop option; [@option]
  ssl_keyvault_identity_client_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : portal) -> ()

let yojson_of_portal =
  (function
   | {
       certificate = v_certificate;
       certificate_password = v_certificate_password;
       host_name = v_host_name;
       key_vault_id = v_key_vault_id;
       negotiate_client_certificate = v_negotiate_client_certificate;
       ssl_keyvault_identity_client_id =
         v_ssl_keyvault_identity_client_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ssl_keyvault_identity_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl_keyvault_identity_client_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_negotiate_client_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negotiate_client_certificate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_vault_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_name in
         ("host_name", arg) :: bnds
       in
       let bnds =
         match v_certificate_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : portal -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_portal

[@@@deriving.end]

type scm = {
  certificate : string prop option; [@option]
  certificate_password : string prop option; [@option]
  host_name : string prop;
  key_vault_id : string prop option; [@option]
  negotiate_client_certificate : bool prop option; [@option]
  ssl_keyvault_identity_client_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scm) -> ()

let yojson_of_scm =
  (function
   | {
       certificate = v_certificate;
       certificate_password = v_certificate_password;
       host_name = v_host_name;
       key_vault_id = v_key_vault_id;
       negotiate_client_certificate = v_negotiate_client_certificate;
       ssl_keyvault_identity_client_id =
         v_ssl_keyvault_identity_client_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ssl_keyvault_identity_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ssl_keyvault_identity_client_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_negotiate_client_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negotiate_client_certificate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_vault_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_name in
         ("host_name", arg) :: bnds
       in
       let bnds =
         match v_certificate_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : scm -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scm

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_api_management_custom_domain = {
  api_management_id : string prop;
  id : string prop option; [@option]
  developer_portal : developer_portal list;
  gateway : gateway list;
  management : management list;
  portal : portal list;
  scm : scm list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_api_management_custom_domain) -> ()

let yojson_of_azurerm_api_management_custom_domain =
  (function
   | {
       api_management_id = v_api_management_id;
       id = v_id;
       developer_portal = v_developer_portal;
       gateway = v_gateway;
       management = v_management;
       portal = v_portal;
       scm = v_scm;
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
         let arg = yojson_of_list yojson_of_scm v_scm in
         ("scm", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_portal v_portal in
         ("portal", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_management v_management
         in
         ("management", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_gateway v_gateway in
         ("gateway", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_developer_portal
             v_developer_portal
         in
         ("developer_portal", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_api_management_id
         in
         ("api_management_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_api_management_custom_domain ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management_custom_domain

[@@@deriving.end]

let developer_portal ?certificate ?certificate_password ?key_vault_id
    ?negotiate_client_certificate ?ssl_keyvault_identity_client_id
    ~host_name () : developer_portal =
  {
    certificate;
    certificate_password;
    host_name;
    key_vault_id;
    negotiate_client_certificate;
    ssl_keyvault_identity_client_id;
  }

let gateway ?certificate ?certificate_password ?default_ssl_binding
    ?key_vault_id ?negotiate_client_certificate
    ?ssl_keyvault_identity_client_id ~host_name () : gateway =
  {
    certificate;
    certificate_password;
    default_ssl_binding;
    host_name;
    key_vault_id;
    negotiate_client_certificate;
    ssl_keyvault_identity_client_id;
  }

let management ?certificate ?certificate_password ?key_vault_id
    ?negotiate_client_certificate ?ssl_keyvault_identity_client_id
    ~host_name () : management =
  {
    certificate;
    certificate_password;
    host_name;
    key_vault_id;
    negotiate_client_certificate;
    ssl_keyvault_identity_client_id;
  }

let portal ?certificate ?certificate_password ?key_vault_id
    ?negotiate_client_certificate ?ssl_keyvault_identity_client_id
    ~host_name () : portal =
  {
    certificate;
    certificate_password;
    host_name;
    key_vault_id;
    negotiate_client_certificate;
    ssl_keyvault_identity_client_id;
  }

let scm ?certificate ?certificate_password ?key_vault_id
    ?negotiate_client_certificate ?ssl_keyvault_identity_client_id
    ~host_name () : scm =
  {
    certificate;
    certificate_password;
    host_name;
    key_vault_id;
    negotiate_client_certificate;
    ssl_keyvault_identity_client_id;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_custom_domain ?id ?(developer_portal = [])
    ?(gateway = []) ?(management = []) ?(portal = []) ?(scm = [])
    ?timeouts ~api_management_id () :
    azurerm_api_management_custom_domain =
  {
    api_management_id;
    id;
    developer_portal;
    gateway;
    management;
    portal;
    scm;
    timeouts;
  }

type t = {
  tf_name : string;
  api_management_id : string prop;
  id : string prop;
}

let make ?id ?(developer_portal = []) ?(gateway = [])
    ?(management = []) ?(portal = []) ?(scm = []) ?timeouts
    ~api_management_id __id =
  let __type = "azurerm_api_management_custom_domain" in
  let __attrs =
    ({
       tf_name = __id;
       api_management_id =
         Prop.computed __type __id "api_management_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_custom_domain
        (azurerm_api_management_custom_domain ?id ~developer_portal
           ~gateway ~management ~portal ~scm ?timeouts
           ~api_management_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(developer_portal = []) ?(gateway = [])
    ?(management = []) ?(portal = []) ?(scm = []) ?timeouts
    ~api_management_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~developer_portal ~gateway ~management ~portal ~scm
      ?timeouts ~api_management_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
