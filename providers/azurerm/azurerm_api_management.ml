(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type additional_location__virtual_network_configuration = {
  subnet_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : additional_location__virtual_network_configuration) -> ()

let yojson_of_additional_location__virtual_network_configuration =
  (function
   | { subnet_id = v_subnet_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       `Assoc bnds
    : additional_location__virtual_network_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_additional_location__virtual_network_configuration

[@@@deriving.end]

type additional_location = {
  capacity : float prop option; [@option]
  gateway_disabled : bool prop option; [@option]
  location : string prop;
  public_ip_address_id : string prop option; [@option]
  zones : string prop list option; [@option]
  virtual_network_configuration :
    additional_location__virtual_network_configuration list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : additional_location) -> ()

let yojson_of_additional_location =
  (function
   | {
       capacity = v_capacity;
       gateway_disabled = v_gateway_disabled;
       location = v_location;
       public_ip_address_id = v_public_ip_address_id;
       zones = v_zones;
       virtual_network_configuration =
         v_virtual_network_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_virtual_network_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_additional_location__virtual_network_configuration)
               v_virtual_network_configuration
           in
           let bnd = "virtual_network_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zones with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "zones", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_ip_address_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_ip_address_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_gateway_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "gateway_disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "capacity", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : additional_location -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_additional_location

[@@@deriving.end]

type certificate = {
  certificate_password : string prop option; [@option]
  encoded_certificate : string prop;
  store_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate) -> ()

let yojson_of_certificate =
  (function
   | {
       certificate_password = v_certificate_password;
       encoded_certificate = v_encoded_certificate;
       store_name = v_store_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_store_name in
         ("store_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_encoded_certificate
         in
         ("encoded_certificate", arg) :: bnds
       in
       let bnds =
         match v_certificate_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_password", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate

[@@@deriving.end]

type delegation = {
  subscriptions_enabled : bool prop option; [@option]
  url : string prop option; [@option]
  user_registration_enabled : bool prop option; [@option]
  validation_key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : delegation) -> ()

let yojson_of_delegation =
  (function
   | {
       subscriptions_enabled = v_subscriptions_enabled;
       url = v_url;
       user_registration_enabled = v_user_registration_enabled;
       validation_key = v_validation_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_validation_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "validation_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_registration_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "user_registration_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subscriptions_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "subscriptions_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : delegation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_delegation

[@@@deriving.end]

type hostname_configuration__developer_portal = {
  certificate : string prop option; [@option]
  certificate_password : string prop option; [@option]
  host_name : string prop;
  key_vault_id : string prop option; [@option]
  negotiate_client_certificate : bool prop option; [@option]
  ssl_keyvault_identity_client_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hostname_configuration__developer_portal) -> ()

let yojson_of_hostname_configuration__developer_portal =
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
    : hostname_configuration__developer_portal ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hostname_configuration__developer_portal

[@@@deriving.end]

type hostname_configuration__management = {
  certificate : string prop option; [@option]
  certificate_password : string prop option; [@option]
  host_name : string prop;
  key_vault_id : string prop option; [@option]
  negotiate_client_certificate : bool prop option; [@option]
  ssl_keyvault_identity_client_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hostname_configuration__management) -> ()

let yojson_of_hostname_configuration__management =
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
    : hostname_configuration__management ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hostname_configuration__management

[@@@deriving.end]

type hostname_configuration__portal = {
  certificate : string prop option; [@option]
  certificate_password : string prop option; [@option]
  host_name : string prop;
  key_vault_id : string prop option; [@option]
  negotiate_client_certificate : bool prop option; [@option]
  ssl_keyvault_identity_client_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hostname_configuration__portal) -> ()

let yojson_of_hostname_configuration__portal =
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
    : hostname_configuration__portal ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hostname_configuration__portal

[@@@deriving.end]

type hostname_configuration__proxy = {
  certificate : string prop option; [@option]
  certificate_password : string prop option; [@option]
  default_ssl_binding : bool prop option; [@option]
  host_name : string prop;
  key_vault_id : string prop option; [@option]
  negotiate_client_certificate : bool prop option; [@option]
  ssl_keyvault_identity_client_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hostname_configuration__proxy) -> ()

let yojson_of_hostname_configuration__proxy =
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
    : hostname_configuration__proxy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hostname_configuration__proxy

[@@@deriving.end]

type hostname_configuration__scm = {
  certificate : string prop option; [@option]
  certificate_password : string prop option; [@option]
  host_name : string prop;
  key_vault_id : string prop option; [@option]
  negotiate_client_certificate : bool prop option; [@option]
  ssl_keyvault_identity_client_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hostname_configuration__scm) -> ()

let yojson_of_hostname_configuration__scm =
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
    : hostname_configuration__scm ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hostname_configuration__scm

[@@@deriving.end]

type hostname_configuration = {
  developer_portal : hostname_configuration__developer_portal list;
      [@default []] [@yojson_drop_default ( = )]
  management : hostname_configuration__management list;
      [@default []] [@yojson_drop_default ( = )]
  portal : hostname_configuration__portal list;
      [@default []] [@yojson_drop_default ( = )]
  proxy : hostname_configuration__proxy list;
      [@default []] [@yojson_drop_default ( = )]
  scm : hostname_configuration__scm list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hostname_configuration) -> ()

let yojson_of_hostname_configuration =
  (function
   | {
       developer_portal = v_developer_portal;
       management = v_management;
       portal = v_portal;
       proxy = v_proxy;
       scm = v_scm;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_scm then bnds
         else
           let arg =
             (yojson_of_list yojson_of_hostname_configuration__scm)
               v_scm
           in
           let bnd = "scm", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_proxy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_hostname_configuration__proxy)
               v_proxy
           in
           let bnd = "proxy", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_portal then bnds
         else
           let arg =
             (yojson_of_list yojson_of_hostname_configuration__portal)
               v_portal
           in
           let bnd = "portal", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_management then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_hostname_configuration__management)
               v_management
           in
           let bnd = "management", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_developer_portal then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_hostname_configuration__developer_portal)
               v_developer_portal
           in
           let bnd = "developer_portal", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : hostname_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hostname_configuration

[@@@deriving.end]

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type protocols = { enable_http2 : bool prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : protocols) -> ()

let yojson_of_protocols =
  (function
   | { enable_http2 = v_enable_http2 } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enable_http2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_http2", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : protocols -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_protocols

[@@@deriving.end]

type security = {
  enable_backend_ssl30 : bool prop option; [@option]
  enable_backend_tls10 : bool prop option; [@option]
  enable_backend_tls11 : bool prop option; [@option]
  enable_frontend_ssl30 : bool prop option; [@option]
  enable_frontend_tls10 : bool prop option; [@option]
  enable_frontend_tls11 : bool prop option; [@option]
  tls_ecdhe_ecdsa_with_aes128_cbc_sha_ciphers_enabled :
    bool prop option;
      [@option]
  tls_ecdhe_ecdsa_with_aes256_cbc_sha_ciphers_enabled :
    bool prop option;
      [@option]
  tls_ecdhe_rsa_with_aes128_cbc_sha_ciphers_enabled :
    bool prop option;
      [@option]
  tls_ecdhe_rsa_with_aes256_cbc_sha_ciphers_enabled :
    bool prop option;
      [@option]
  tls_rsa_with_aes128_cbc_sha256_ciphers_enabled : bool prop option;
      [@option]
  tls_rsa_with_aes128_cbc_sha_ciphers_enabled : bool prop option;
      [@option]
  tls_rsa_with_aes128_gcm_sha256_ciphers_enabled : bool prop option;
      [@option]
  tls_rsa_with_aes256_cbc_sha256_ciphers_enabled : bool prop option;
      [@option]
  tls_rsa_with_aes256_cbc_sha_ciphers_enabled : bool prop option;
      [@option]
  tls_rsa_with_aes256_gcm_sha384_ciphers_enabled : bool prop option;
      [@option]
  triple_des_ciphers_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : security) -> ()

let yojson_of_security =
  (function
   | {
       enable_backend_ssl30 = v_enable_backend_ssl30;
       enable_backend_tls10 = v_enable_backend_tls10;
       enable_backend_tls11 = v_enable_backend_tls11;
       enable_frontend_ssl30 = v_enable_frontend_ssl30;
       enable_frontend_tls10 = v_enable_frontend_tls10;
       enable_frontend_tls11 = v_enable_frontend_tls11;
       tls_ecdhe_ecdsa_with_aes128_cbc_sha_ciphers_enabled =
         v_tls_ecdhe_ecdsa_with_aes128_cbc_sha_ciphers_enabled;
       tls_ecdhe_ecdsa_with_aes256_cbc_sha_ciphers_enabled =
         v_tls_ecdhe_ecdsa_with_aes256_cbc_sha_ciphers_enabled;
       tls_ecdhe_rsa_with_aes128_cbc_sha_ciphers_enabled =
         v_tls_ecdhe_rsa_with_aes128_cbc_sha_ciphers_enabled;
       tls_ecdhe_rsa_with_aes256_cbc_sha_ciphers_enabled =
         v_tls_ecdhe_rsa_with_aes256_cbc_sha_ciphers_enabled;
       tls_rsa_with_aes128_cbc_sha256_ciphers_enabled =
         v_tls_rsa_with_aes128_cbc_sha256_ciphers_enabled;
       tls_rsa_with_aes128_cbc_sha_ciphers_enabled =
         v_tls_rsa_with_aes128_cbc_sha_ciphers_enabled;
       tls_rsa_with_aes128_gcm_sha256_ciphers_enabled =
         v_tls_rsa_with_aes128_gcm_sha256_ciphers_enabled;
       tls_rsa_with_aes256_cbc_sha256_ciphers_enabled =
         v_tls_rsa_with_aes256_cbc_sha256_ciphers_enabled;
       tls_rsa_with_aes256_cbc_sha_ciphers_enabled =
         v_tls_rsa_with_aes256_cbc_sha_ciphers_enabled;
       tls_rsa_with_aes256_gcm_sha384_ciphers_enabled =
         v_tls_rsa_with_aes256_gcm_sha384_ciphers_enabled;
       triple_des_ciphers_enabled = v_triple_des_ciphers_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_triple_des_ciphers_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "triple_des_ciphers_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tls_rsa_with_aes256_gcm_sha384_ciphers_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "tls_rsa_with_aes256_gcm_sha384_ciphers_enabled", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_tls_rsa_with_aes256_cbc_sha_ciphers_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "tls_rsa_with_aes256_cbc_sha_ciphers_enabled", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_tls_rsa_with_aes256_cbc_sha256_ciphers_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "tls_rsa_with_aes256_cbc_sha256_ciphers_enabled", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_tls_rsa_with_aes128_gcm_sha256_ciphers_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "tls_rsa_with_aes128_gcm_sha256_ciphers_enabled", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_tls_rsa_with_aes128_cbc_sha_ciphers_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "tls_rsa_with_aes128_cbc_sha_ciphers_enabled", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_tls_rsa_with_aes128_cbc_sha256_ciphers_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "tls_rsa_with_aes128_cbc_sha256_ciphers_enabled", arg
             in
             bnd :: bnds
       in
       let bnds =
         match
           v_tls_ecdhe_rsa_with_aes256_cbc_sha_ciphers_enabled
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               ( "tls_ecdhe_rsa_with_aes256_cbc_sha_ciphers_enabled",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match
           v_tls_ecdhe_rsa_with_aes128_cbc_sha_ciphers_enabled
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               ( "tls_ecdhe_rsa_with_aes128_cbc_sha_ciphers_enabled",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match
           v_tls_ecdhe_ecdsa_with_aes256_cbc_sha_ciphers_enabled
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               ( "tls_ecdhe_ecdsa_with_aes256_cbc_sha_ciphers_enabled",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match
           v_tls_ecdhe_ecdsa_with_aes128_cbc_sha_ciphers_enabled
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               ( "tls_ecdhe_ecdsa_with_aes128_cbc_sha_ciphers_enabled",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match v_enable_frontend_tls11 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_frontend_tls11", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_frontend_tls10 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_frontend_tls10", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_frontend_ssl30 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_frontend_ssl30", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_backend_tls11 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_backend_tls11", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_backend_tls10 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_backend_tls10", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_backend_ssl30 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_backend_ssl30", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : security -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security

[@@@deriving.end]

type sign_in = { enabled : bool prop } [@@deriving_inline yojson_of]

let _ = fun (_ : sign_in) -> ()

let yojson_of_sign_in =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : sign_in -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sign_in

[@@@deriving.end]

type sign_up__terms_of_service = {
  consent_required : bool prop;
  enabled : bool prop;
  text : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sign_up__terms_of_service) -> ()

let yojson_of_sign_up__terms_of_service =
  (function
   | {
       consent_required = v_consent_required;
       enabled = v_enabled;
       text = v_text;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_text with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "text", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_consent_required
         in
         ("consent_required", arg) :: bnds
       in
       `Assoc bnds
    : sign_up__terms_of_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sign_up__terms_of_service

[@@@deriving.end]

type sign_up = {
  enabled : bool prop;
  terms_of_service : sign_up__terms_of_service list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sign_up) -> ()

let yojson_of_sign_up =
  (function
   | { enabled = v_enabled; terms_of_service = v_terms_of_service }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_terms_of_service then bnds
         else
           let arg =
             (yojson_of_list yojson_of_sign_up__terms_of_service)
               v_terms_of_service
           in
           let bnd = "terms_of_service", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : sign_up -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sign_up

[@@@deriving.end]

type tenant_access = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : tenant_access) -> ()

let yojson_of_tenant_access =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : tenant_access -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tenant_access

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

type virtual_network_configuration = { subnet_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : virtual_network_configuration) -> ()

let yojson_of_virtual_network_configuration =
  (function
   | { subnet_id = v_subnet_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       `Assoc bnds
    : virtual_network_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_virtual_network_configuration

[@@@deriving.end]

type policy = { xml_content : string prop; xml_link : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : policy) -> ()

let yojson_of_policy =
  (function
   | { xml_content = v_xml_content; xml_link = v_xml_link } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_xml_link in
         ("xml_link", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_xml_content in
         ("xml_content", arg) :: bnds
       in
       `Assoc bnds
    : policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy

[@@@deriving.end]

type azurerm_api_management = {
  client_certificate_enabled : bool prop option; [@option]
  gateway_disabled : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  min_api_version : string prop option; [@option]
  name : string prop;
  notification_sender_email : string prop option; [@option]
  policy : policy list option; [@option]
  public_ip_address_id : string prop option; [@option]
  public_network_access_enabled : bool prop option; [@option]
  publisher_email : string prop;
  publisher_name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string prop) list option; [@option]
  virtual_network_type : string prop option; [@option]
  zones : string prop list option; [@option]
  additional_location : additional_location list;
      [@default []] [@yojson_drop_default ( = )]
  certificate : certificate list;
      [@default []] [@yojson_drop_default ( = )]
  delegation : delegation list;
      [@default []] [@yojson_drop_default ( = )]
  hostname_configuration : hostname_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default ( = )]
  protocols : protocols list;
      [@default []] [@yojson_drop_default ( = )]
  security : security list;
      [@default []] [@yojson_drop_default ( = )]
  sign_in : sign_in list; [@default []] [@yojson_drop_default ( = )]
  sign_up : sign_up list; [@default []] [@yojson_drop_default ( = )]
  tenant_access : tenant_access list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
  virtual_network_configuration : virtual_network_configuration list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_api_management) -> ()

let yojson_of_azurerm_api_management =
  (function
   | {
       client_certificate_enabled = v_client_certificate_enabled;
       gateway_disabled = v_gateway_disabled;
       id = v_id;
       location = v_location;
       min_api_version = v_min_api_version;
       name = v_name;
       notification_sender_email = v_notification_sender_email;
       policy = v_policy;
       public_ip_address_id = v_public_ip_address_id;
       public_network_access_enabled =
         v_public_network_access_enabled;
       publisher_email = v_publisher_email;
       publisher_name = v_publisher_name;
       resource_group_name = v_resource_group_name;
       sku_name = v_sku_name;
       tags = v_tags;
       virtual_network_type = v_virtual_network_type;
       zones = v_zones;
       additional_location = v_additional_location;
       certificate = v_certificate;
       delegation = v_delegation;
       hostname_configuration = v_hostname_configuration;
       identity = v_identity;
       protocols = v_protocols;
       security = v_security;
       sign_in = v_sign_in;
       sign_up = v_sign_up;
       tenant_access = v_tenant_access;
       timeouts = v_timeouts;
       virtual_network_configuration =
         v_virtual_network_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_virtual_network_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_virtual_network_configuration)
               v_virtual_network_configuration
           in
           let bnd = "virtual_network_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_tenant_access then bnds
         else
           let arg =
             (yojson_of_list yojson_of_tenant_access) v_tenant_access
           in
           let bnd = "tenant_access", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_sign_up then bnds
         else
           let arg = (yojson_of_list yojson_of_sign_up) v_sign_up in
           let bnd = "sign_up", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_sign_in then bnds
         else
           let arg = (yojson_of_list yojson_of_sign_in) v_sign_in in
           let bnd = "sign_in", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_security then bnds
         else
           let arg =
             (yojson_of_list yojson_of_security) v_security
           in
           let bnd = "security", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_protocols then bnds
         else
           let arg =
             (yojson_of_list yojson_of_protocols) v_protocols
           in
           let bnd = "protocols", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity) v_identity
           in
           let bnd = "identity", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_hostname_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_hostname_configuration)
               v_hostname_configuration
           in
           let bnd = "hostname_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_delegation then bnds
         else
           let arg =
             (yojson_of_list yojson_of_delegation) v_delegation
           in
           let bnd = "delegation", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_certificate then bnds
         else
           let arg =
             (yojson_of_list yojson_of_certificate) v_certificate
           in
           let bnd = "certificate", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_additional_location then bnds
         else
           let arg =
             (yojson_of_list yojson_of_additional_location)
               v_additional_location
           in
           let bnd = "additional_location", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zones with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "zones", arg in
             bnd :: bnds
       in
       let bnds =
         match v_virtual_network_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtual_network_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku_name in
         ("sku_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_publisher_name
         in
         ("publisher_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_publisher_email
         in
         ("publisher_email", arg) :: bnds
       in
       let bnds =
         match v_public_network_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_ip_address_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_ip_address_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_policy v in
             let bnd = "policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notification_sender_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notification_sender_email", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_min_api_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_api_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_gateway_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "gateway_disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_certificate_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "client_certificate_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_api_management -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management

[@@@deriving.end]

let additional_location__virtual_network_configuration ~subnet_id ()
    : additional_location__virtual_network_configuration =
  { subnet_id }

let additional_location ?capacity ?gateway_disabled
    ?public_ip_address_id ?zones
    ?(virtual_network_configuration = []) ~location () :
    additional_location =
  {
    capacity;
    gateway_disabled;
    location;
    public_ip_address_id;
    zones;
    virtual_network_configuration;
  }

let certificate ?certificate_password ~encoded_certificate
    ~store_name () : certificate =
  { certificate_password; encoded_certificate; store_name }

let delegation ?subscriptions_enabled ?url ?user_registration_enabled
    ?validation_key () : delegation =
  {
    subscriptions_enabled;
    url;
    user_registration_enabled;
    validation_key;
  }

let hostname_configuration__developer_portal ?certificate
    ?certificate_password ?key_vault_id ?negotiate_client_certificate
    ?ssl_keyvault_identity_client_id ~host_name () :
    hostname_configuration__developer_portal =
  {
    certificate;
    certificate_password;
    host_name;
    key_vault_id;
    negotiate_client_certificate;
    ssl_keyvault_identity_client_id;
  }

let hostname_configuration__management ?certificate
    ?certificate_password ?key_vault_id ?negotiate_client_certificate
    ?ssl_keyvault_identity_client_id ~host_name () :
    hostname_configuration__management =
  {
    certificate;
    certificate_password;
    host_name;
    key_vault_id;
    negotiate_client_certificate;
    ssl_keyvault_identity_client_id;
  }

let hostname_configuration__portal ?certificate ?certificate_password
    ?key_vault_id ?negotiate_client_certificate
    ?ssl_keyvault_identity_client_id ~host_name () :
    hostname_configuration__portal =
  {
    certificate;
    certificate_password;
    host_name;
    key_vault_id;
    negotiate_client_certificate;
    ssl_keyvault_identity_client_id;
  }

let hostname_configuration__proxy ?certificate ?certificate_password
    ?default_ssl_binding ?key_vault_id ?negotiate_client_certificate
    ?ssl_keyvault_identity_client_id ~host_name () :
    hostname_configuration__proxy =
  {
    certificate;
    certificate_password;
    default_ssl_binding;
    host_name;
    key_vault_id;
    negotiate_client_certificate;
    ssl_keyvault_identity_client_id;
  }

let hostname_configuration__scm ?certificate ?certificate_password
    ?key_vault_id ?negotiate_client_certificate
    ?ssl_keyvault_identity_client_id ~host_name () :
    hostname_configuration__scm =
  {
    certificate;
    certificate_password;
    host_name;
    key_vault_id;
    negotiate_client_certificate;
    ssl_keyvault_identity_client_id;
  }

let hostname_configuration ?(developer_portal = [])
    ?(management = []) ?(portal = []) ?(proxy = []) ?(scm = []) () :
    hostname_configuration =
  { developer_portal; management; portal; proxy; scm }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let protocols ?enable_http2 () : protocols = { enable_http2 }

let security ?enable_backend_ssl30 ?enable_backend_tls10
    ?enable_backend_tls11 ?enable_frontend_ssl30
    ?enable_frontend_tls10 ?enable_frontend_tls11
    ?tls_ecdhe_ecdsa_with_aes128_cbc_sha_ciphers_enabled
    ?tls_ecdhe_ecdsa_with_aes256_cbc_sha_ciphers_enabled
    ?tls_ecdhe_rsa_with_aes128_cbc_sha_ciphers_enabled
    ?tls_ecdhe_rsa_with_aes256_cbc_sha_ciphers_enabled
    ?tls_rsa_with_aes128_cbc_sha256_ciphers_enabled
    ?tls_rsa_with_aes128_cbc_sha_ciphers_enabled
    ?tls_rsa_with_aes128_gcm_sha256_ciphers_enabled
    ?tls_rsa_with_aes256_cbc_sha256_ciphers_enabled
    ?tls_rsa_with_aes256_cbc_sha_ciphers_enabled
    ?tls_rsa_with_aes256_gcm_sha384_ciphers_enabled
    ?triple_des_ciphers_enabled () : security =
  {
    enable_backend_ssl30;
    enable_backend_tls10;
    enable_backend_tls11;
    enable_frontend_ssl30;
    enable_frontend_tls10;
    enable_frontend_tls11;
    tls_ecdhe_ecdsa_with_aes128_cbc_sha_ciphers_enabled;
    tls_ecdhe_ecdsa_with_aes256_cbc_sha_ciphers_enabled;
    tls_ecdhe_rsa_with_aes128_cbc_sha_ciphers_enabled;
    tls_ecdhe_rsa_with_aes256_cbc_sha_ciphers_enabled;
    tls_rsa_with_aes128_cbc_sha256_ciphers_enabled;
    tls_rsa_with_aes128_cbc_sha_ciphers_enabled;
    tls_rsa_with_aes128_gcm_sha256_ciphers_enabled;
    tls_rsa_with_aes256_cbc_sha256_ciphers_enabled;
    tls_rsa_with_aes256_cbc_sha_ciphers_enabled;
    tls_rsa_with_aes256_gcm_sha384_ciphers_enabled;
    triple_des_ciphers_enabled;
  }

let sign_in ~enabled () : sign_in = { enabled }

let sign_up__terms_of_service ?text ~consent_required ~enabled () :
    sign_up__terms_of_service =
  { consent_required; enabled; text }

let sign_up ~enabled ~terms_of_service () : sign_up =
  { enabled; terms_of_service }

let tenant_access ~enabled () : tenant_access = { enabled }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let virtual_network_configuration ~subnet_id () :
    virtual_network_configuration =
  { subnet_id }

let azurerm_api_management ?client_certificate_enabled
    ?gateway_disabled ?id ?min_api_version ?notification_sender_email
    ?policy ?public_ip_address_id ?public_network_access_enabled
    ?tags ?virtual_network_type ?zones ?(additional_location = [])
    ?(certificate = []) ?(delegation = [])
    ?(hostname_configuration = []) ?(identity = []) ?(protocols = [])
    ?(security = []) ?(sign_in = []) ?(sign_up = [])
    ?(tenant_access = []) ?timeouts
    ?(virtual_network_configuration = []) ~location ~name
    ~publisher_email ~publisher_name ~resource_group_name ~sku_name
    () : azurerm_api_management =
  {
    client_certificate_enabled;
    gateway_disabled;
    id;
    location;
    min_api_version;
    name;
    notification_sender_email;
    policy;
    public_ip_address_id;
    public_network_access_enabled;
    publisher_email;
    publisher_name;
    resource_group_name;
    sku_name;
    tags;
    virtual_network_type;
    zones;
    additional_location;
    certificate;
    delegation;
    hostname_configuration;
    identity;
    protocols;
    security;
    sign_in;
    sign_up;
    tenant_access;
    timeouts;
    virtual_network_configuration;
  }

type t = {
  tf_name : string;
  client_certificate_enabled : bool prop;
  developer_portal_url : string prop;
  gateway_disabled : bool prop;
  gateway_regional_url : string prop;
  gateway_url : string prop;
  id : string prop;
  location : string prop;
  management_api_url : string prop;
  min_api_version : string prop;
  name : string prop;
  notification_sender_email : string prop;
  policy : policy list prop;
  portal_url : string prop;
  private_ip_addresses : string list prop;
  public_ip_address_id : string prop;
  public_ip_addresses : string list prop;
  public_network_access_enabled : bool prop;
  publisher_email : string prop;
  publisher_name : string prop;
  resource_group_name : string prop;
  scm_url : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  virtual_network_type : string prop;
  zones : string list prop;
}

let make ?client_certificate_enabled ?gateway_disabled ?id
    ?min_api_version ?notification_sender_email ?policy
    ?public_ip_address_id ?public_network_access_enabled ?tags
    ?virtual_network_type ?zones ?(additional_location = [])
    ?(certificate = []) ?(delegation = [])
    ?(hostname_configuration = []) ?(identity = []) ?(protocols = [])
    ?(security = []) ?(sign_in = []) ?(sign_up = [])
    ?(tenant_access = []) ?timeouts
    ?(virtual_network_configuration = []) ~location ~name
    ~publisher_email ~publisher_name ~resource_group_name ~sku_name
    __id =
  let __type = "azurerm_api_management" in
  let __attrs =
    ({
       tf_name = __id;
       client_certificate_enabled =
         Prop.computed __type __id "client_certificate_enabled";
       developer_portal_url =
         Prop.computed __type __id "developer_portal_url";
       gateway_disabled =
         Prop.computed __type __id "gateway_disabled";
       gateway_regional_url =
         Prop.computed __type __id "gateway_regional_url";
       gateway_url = Prop.computed __type __id "gateway_url";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       management_api_url =
         Prop.computed __type __id "management_api_url";
       min_api_version = Prop.computed __type __id "min_api_version";
       name = Prop.computed __type __id "name";
       notification_sender_email =
         Prop.computed __type __id "notification_sender_email";
       policy = Prop.computed __type __id "policy";
       portal_url = Prop.computed __type __id "portal_url";
       private_ip_addresses =
         Prop.computed __type __id "private_ip_addresses";
       public_ip_address_id =
         Prop.computed __type __id "public_ip_address_id";
       public_ip_addresses =
         Prop.computed __type __id "public_ip_addresses";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       publisher_email = Prop.computed __type __id "publisher_email";
       publisher_name = Prop.computed __type __id "publisher_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scm_url = Prop.computed __type __id "scm_url";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
       virtual_network_type =
         Prop.computed __type __id "virtual_network_type";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management
        (azurerm_api_management ?client_certificate_enabled
           ?gateway_disabled ?id ?min_api_version
           ?notification_sender_email ?policy ?public_ip_address_id
           ?public_network_access_enabled ?tags ?virtual_network_type
           ?zones ~additional_location ~certificate ~delegation
           ~hostname_configuration ~identity ~protocols ~security
           ~sign_in ~sign_up ~tenant_access ?timeouts
           ~virtual_network_configuration ~location ~name
           ~publisher_email ~publisher_name ~resource_group_name
           ~sku_name ());
    attrs = __attrs;
  }

let register ?tf_module ?client_certificate_enabled ?gateway_disabled
    ?id ?min_api_version ?notification_sender_email ?policy
    ?public_ip_address_id ?public_network_access_enabled ?tags
    ?virtual_network_type ?zones ?(additional_location = [])
    ?(certificate = []) ?(delegation = [])
    ?(hostname_configuration = []) ?(identity = []) ?(protocols = [])
    ?(security = []) ?(sign_in = []) ?(sign_up = [])
    ?(tenant_access = []) ?timeouts
    ?(virtual_network_configuration = []) ~location ~name
    ~publisher_email ~publisher_name ~resource_group_name ~sku_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?client_certificate_enabled ?gateway_disabled ?id
      ?min_api_version ?notification_sender_email ?policy
      ?public_ip_address_id ?public_network_access_enabled ?tags
      ?virtual_network_type ?zones ~additional_location ~certificate
      ~delegation ~hostname_configuration ~identity ~protocols
      ~security ~sign_in ~sign_up ~tenant_access ?timeouts
      ~virtual_network_configuration ~location ~name ~publisher_email
      ~publisher_name ~resource_group_name ~sku_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
