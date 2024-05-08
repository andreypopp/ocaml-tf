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

type encryption = {
  identity_client_id : string prop;
  key_vault_key_identifier : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption) -> ()

let yojson_of_encryption =
  (function
   | {
       identity_client_id = v_identity_client_id;
       key_vault_key_identifier = v_key_vault_key_identifier;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_vault_key_identifier
         in
         ("key_vault_key_identifier", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_identity_client_id
         in
         ("identity_client_id", arg) :: bnds
       in
       `Assoc bnds
    : encryption -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption

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

type primary_read_key = {
  connection_string : string prop;
  id : string prop;
  secret : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : primary_read_key) -> ()

let yojson_of_primary_read_key =
  (function
   | {
       connection_string = v_connection_string;
       id = v_id;
       secret = v_secret;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret in
         ("secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_string
         in
         ("connection_string", arg) :: bnds
       in
       `Assoc bnds
    : primary_read_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_primary_read_key

[@@@deriving.end]

type primary_write_key = {
  connection_string : string prop;
  id : string prop;
  secret : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : primary_write_key) -> ()

let yojson_of_primary_write_key =
  (function
   | {
       connection_string = v_connection_string;
       id = v_id;
       secret = v_secret;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret in
         ("secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_string
         in
         ("connection_string", arg) :: bnds
       in
       `Assoc bnds
    : primary_write_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_primary_write_key

[@@@deriving.end]

type replica = {
  endpoint : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : replica) -> ()

let yojson_of_replica =
  (function
   | {
       endpoint = v_endpoint;
       id = v_id;
       location = v_location;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       `Assoc bnds
    : replica -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replica

[@@@deriving.end]

type secondary_read_key = {
  connection_string : string prop;
  id : string prop;
  secret : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secondary_read_key) -> ()

let yojson_of_secondary_read_key =
  (function
   | {
       connection_string = v_connection_string;
       id = v_id;
       secret = v_secret;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret in
         ("secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_string
         in
         ("connection_string", arg) :: bnds
       in
       `Assoc bnds
    : secondary_read_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secondary_read_key

[@@@deriving.end]

type secondary_write_key = {
  connection_string : string prop;
  id : string prop;
  secret : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secondary_write_key) -> ()

let yojson_of_secondary_write_key =
  (function
   | {
       connection_string = v_connection_string;
       id = v_id;
       secret = v_secret;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret in
         ("secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_string
         in
         ("connection_string", arg) :: bnds
       in
       `Assoc bnds
    : secondary_write_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secondary_write_key

[@@@deriving.end]

type azurerm_app_configuration = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_app_configuration) -> ()

let yojson_of_azurerm_app_configuration =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
    : azurerm_app_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_app_configuration

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_app_configuration ?id ?timeouts ~name
    ~resource_group_name () : azurerm_app_configuration =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  encryption : encryption list prop;
  endpoint : string prop;
  id : string prop;
  identity : identity list prop;
  local_auth_enabled : bool prop;
  location : string prop;
  name : string prop;
  primary_read_key : primary_read_key list prop;
  primary_write_key : primary_write_key list prop;
  public_network_access : string prop;
  public_network_access_enabled : bool prop;
  purge_protection_enabled : bool prop;
  replica : replica list prop;
  resource_group_name : string prop;
  secondary_read_key : secondary_read_key list prop;
  secondary_write_key : secondary_write_key list prop;
  sku : string prop;
  soft_delete_retention_days : float prop;
  tags : (string * string) list prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_app_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       encryption = Prop.computed __type __id "encryption";
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       local_auth_enabled =
         Prop.computed __type __id "local_auth_enabled";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       primary_read_key =
         Prop.computed __type __id "primary_read_key";
       primary_write_key =
         Prop.computed __type __id "primary_write_key";
       public_network_access =
         Prop.computed __type __id "public_network_access";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       purge_protection_enabled =
         Prop.computed __type __id "purge_protection_enabled";
       replica = Prop.computed __type __id "replica";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_read_key =
         Prop.computed __type __id "secondary_read_key";
       secondary_write_key =
         Prop.computed __type __id "secondary_write_key";
       sku = Prop.computed __type __id "sku";
       soft_delete_retention_days =
         Prop.computed __type __id "soft_delete_retention_days";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_configuration
        (azurerm_app_configuration ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
