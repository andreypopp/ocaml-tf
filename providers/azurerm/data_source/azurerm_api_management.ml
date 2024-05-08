(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type additional_location = {
  capacity : float prop;
  gateway_regional_url : string prop;
  location : string prop;
  private_ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  public_ip_address_id : string prop;
  public_ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  zones : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : additional_location) -> ()

let yojson_of_additional_location =
  (function
   | {
       capacity = v_capacity;
       gateway_regional_url = v_gateway_regional_url;
       location = v_location;
       private_ip_addresses = v_private_ip_addresses;
       public_ip_address_id = v_public_ip_address_id;
       public_ip_addresses = v_public_ip_addresses;
       zones = v_zones;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_zones then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_zones
           in
           let bnd = "zones", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_public_ip_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_public_ip_addresses
           in
           let bnd = "public_ip_addresses", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_public_ip_address_id
         in
         ("public_ip_address_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_private_ip_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_private_ip_addresses
           in
           let bnd = "private_ip_addresses", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_gateway_regional_url
         in
         ("gateway_regional_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_capacity in
         ("capacity", arg) :: bnds
       in
       `Assoc bnds
    : additional_location -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_additional_location

[@@@deriving.end]

type hostname_configuration__scm = {
  host_name : string prop;
  key_vault_id : string prop;
  negotiate_client_certificate : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hostname_configuration__scm) -> ()

let yojson_of_hostname_configuration__scm =
  (function
   | {
       host_name = v_host_name;
       key_vault_id = v_key_vault_id;
       negotiate_client_certificate = v_negotiate_client_certificate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_negotiate_client_certificate
         in
         ("negotiate_client_certificate", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_vault_id in
         ("key_vault_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_name in
         ("host_name", arg) :: bnds
       in
       `Assoc bnds
    : hostname_configuration__scm ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hostname_configuration__scm

[@@@deriving.end]

type hostname_configuration__proxy = {
  default_ssl_binding : bool prop;
  host_name : string prop;
  key_vault_id : string prop;
  negotiate_client_certificate : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hostname_configuration__proxy) -> ()

let yojson_of_hostname_configuration__proxy =
  (function
   | {
       default_ssl_binding = v_default_ssl_binding;
       host_name = v_host_name;
       key_vault_id = v_key_vault_id;
       negotiate_client_certificate = v_negotiate_client_certificate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_negotiate_client_certificate
         in
         ("negotiate_client_certificate", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_vault_id in
         ("key_vault_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_name in
         ("host_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_default_ssl_binding
         in
         ("default_ssl_binding", arg) :: bnds
       in
       `Assoc bnds
    : hostname_configuration__proxy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hostname_configuration__proxy

[@@@deriving.end]

type hostname_configuration__portal = {
  host_name : string prop;
  key_vault_id : string prop;
  negotiate_client_certificate : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hostname_configuration__portal) -> ()

let yojson_of_hostname_configuration__portal =
  (function
   | {
       host_name = v_host_name;
       key_vault_id = v_key_vault_id;
       negotiate_client_certificate = v_negotiate_client_certificate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_negotiate_client_certificate
         in
         ("negotiate_client_certificate", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_vault_id in
         ("key_vault_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_name in
         ("host_name", arg) :: bnds
       in
       `Assoc bnds
    : hostname_configuration__portal ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hostname_configuration__portal

[@@@deriving.end]

type hostname_configuration__management = {
  host_name : string prop;
  key_vault_id : string prop;
  negotiate_client_certificate : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hostname_configuration__management) -> ()

let yojson_of_hostname_configuration__management =
  (function
   | {
       host_name = v_host_name;
       key_vault_id = v_key_vault_id;
       negotiate_client_certificate = v_negotiate_client_certificate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_negotiate_client_certificate
         in
         ("negotiate_client_certificate", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_vault_id in
         ("key_vault_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_name in
         ("host_name", arg) :: bnds
       in
       `Assoc bnds
    : hostname_configuration__management ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hostname_configuration__management

[@@@deriving.end]

type hostname_configuration__developer_portal = {
  host_name : string prop;
  key_vault_id : string prop;
  negotiate_client_certificate : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hostname_configuration__developer_portal) -> ()

let yojson_of_hostname_configuration__developer_portal =
  (function
   | {
       host_name = v_host_name;
       key_vault_id = v_key_vault_id;
       negotiate_client_certificate = v_negotiate_client_certificate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_negotiate_client_certificate
         in
         ("negotiate_client_certificate", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_vault_id in
         ("key_vault_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_name in
         ("host_name", arg) :: bnds
       in
       `Assoc bnds
    : hostname_configuration__developer_portal ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hostname_configuration__developer_portal

[@@@deriving.end]

type hostname_configuration = {
  developer_portal : hostname_configuration__developer_portal list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  management : hostname_configuration__management list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  portal : hostname_configuration__portal list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  proxy : hostname_configuration__proxy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  scm : hostname_configuration__scm list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_scm then bnds
         else
           let arg =
             (yojson_of_list yojson_of_hostname_configuration__scm)
               v_scm
           in
           let bnd = "scm", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_proxy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_hostname_configuration__proxy)
               v_proxy
           in
           let bnd = "proxy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_portal then bnds
         else
           let arg =
             (yojson_of_list yojson_of_hostname_configuration__portal)
               v_portal
           in
           let bnd = "portal", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_management then bnds
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
         if Stdlib.( = ) [] v_developer_portal then bnds
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
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  principal_id : string prop;
  tenant_id : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | {
       identity_ids = v_identity_ids;
       principal_id = v_principal_id;
       tenant_id = v_tenant_id;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_identity_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_identity_ids
           in
           let bnd = "identity_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type tenant_access = {
  enabled : bool prop;
  primary_key : string prop;
  secondary_key : string prop;
  tenant_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tenant_access) -> ()

let yojson_of_tenant_access =
  (function
   | {
       enabled = v_enabled;
       primary_key = v_primary_key;
       secondary_key = v_secondary_key;
       tenant_id = v_tenant_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secondary_key in
         ("secondary_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_primary_key in
         ("primary_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : tenant_access -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tenant_access

[@@@deriving.end]

type azurerm_api_management = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_api_management) -> ()

let yojson_of_azurerm_api_management =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_api_management -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_api_management ?id ?tags ?timeouts ~name
    ~resource_group_name () : azurerm_api_management =
  { id; name; resource_group_name; tags; timeouts }

type t = {
  tf_name : string;
  additional_location : additional_location list prop;
  developer_portal_url : string prop;
  gateway_regional_url : string prop;
  gateway_url : string prop;
  hostname_configuration : hostname_configuration list prop;
  id : string prop;
  identity : identity list prop;
  location : string prop;
  management_api_url : string prop;
  name : string prop;
  notification_sender_email : string prop;
  portal_url : string prop;
  private_ip_addresses : string list prop;
  public_ip_address_id : string prop;
  public_ip_addresses : string list prop;
  publisher_email : string prop;
  publisher_name : string prop;
  resource_group_name : string prop;
  scm_url : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  tenant_access : tenant_access list prop;
}

let make ?id ?tags ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_api_management" in
  let __attrs =
    ({
       tf_name = __id;
       additional_location =
         Prop.computed __type __id "additional_location";
       developer_portal_url =
         Prop.computed __type __id "developer_portal_url";
       gateway_regional_url =
         Prop.computed __type __id "gateway_regional_url";
       gateway_url = Prop.computed __type __id "gateway_url";
       hostname_configuration =
         Prop.computed __type __id "hostname_configuration";
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       location = Prop.computed __type __id "location";
       management_api_url =
         Prop.computed __type __id "management_api_url";
       name = Prop.computed __type __id "name";
       notification_sender_email =
         Prop.computed __type __id "notification_sender_email";
       portal_url = Prop.computed __type __id "portal_url";
       private_ip_addresses =
         Prop.computed __type __id "private_ip_addresses";
       public_ip_address_id =
         Prop.computed __type __id "public_ip_address_id";
       public_ip_addresses =
         Prop.computed __type __id "public_ip_addresses";
       publisher_email = Prop.computed __type __id "publisher_email";
       publisher_name = Prop.computed __type __id "publisher_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scm_url = Prop.computed __type __id "scm_url";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
       tenant_access = Prop.computed __type __id "tenant_access";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management
        (azurerm_api_management ?id ?tags ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
