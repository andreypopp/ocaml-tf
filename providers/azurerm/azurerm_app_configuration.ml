(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption = {
  identity_client_id : string prop option; [@option]
  key_vault_key_identifier : string prop option; [@option]
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
         match v_key_vault_key_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_key_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identity_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_client_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encryption -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption

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

type replica = { location : string prop; name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : replica) -> ()

let yojson_of_replica =
  (function
   | { location = v_location; name = v_name } ->
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
       `Assoc bnds
    : replica -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replica

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
  local_auth_enabled : bool prop option; [@option]
  location : string prop;
  name : string prop;
  public_network_access : string prop option; [@option]
  purge_protection_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  sku : string prop option; [@option]
  soft_delete_retention_days : float prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  encryption : encryption list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  replica : replica list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_app_configuration) -> ()

let yojson_of_azurerm_app_configuration =
  (function
   | {
       id = v_id;
       local_auth_enabled = v_local_auth_enabled;
       location = v_location;
       name = v_name;
       public_network_access = v_public_network_access;
       purge_protection_enabled = v_purge_protection_enabled;
       resource_group_name = v_resource_group_name;
       sku = v_sku;
       soft_delete_retention_days = v_soft_delete_retention_days;
       tags = v_tags;
       encryption = v_encryption;
       identity = v_identity;
       replica = v_replica;
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
         if Stdlib.( = ) [] v_replica then bnds
         else
           let arg = (yojson_of_list yojson_of_replica) v_replica in
           let bnd = "replica", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity) v_identity
           in
           let bnd = "identity", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_encryption then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encryption) v_encryption
           in
           let bnd = "encryption", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_soft_delete_retention_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "soft_delete_retention_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sku with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_purge_protection_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "purge_protection_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_network_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_network_access", arg in
             bnd :: bnds
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
         match v_local_auth_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "local_auth_enabled", arg in
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
       `Assoc bnds
    : azurerm_app_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_app_configuration

[@@@deriving.end]

let encryption ?identity_client_id ?key_vault_key_identifier () :
    encryption =
  { identity_client_id; key_vault_key_identifier }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let replica ~location ~name () : replica = { location; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_app_configuration ?id ?local_auth_enabled
    ?public_network_access ?purge_protection_enabled ?sku
    ?soft_delete_retention_days ?tags ?(encryption = [])
    ?(identity = []) ?timeouts ~location ~name ~resource_group_name
    ~replica () : azurerm_app_configuration =
  {
    id;
    local_auth_enabled;
    location;
    name;
    public_network_access;
    purge_protection_enabled;
    resource_group_name;
    sku;
    soft_delete_retention_days;
    tags;
    encryption;
    identity;
    replica;
    timeouts;
  }

type t = {
  tf_name : string;
  endpoint : string prop;
  id : string prop;
  local_auth_enabled : bool prop;
  location : string prop;
  name : string prop;
  primary_read_key : primary_read_key list prop;
  primary_write_key : primary_write_key list prop;
  public_network_access : string prop;
  purge_protection_enabled : bool prop;
  resource_group_name : string prop;
  secondary_read_key : secondary_read_key list prop;
  secondary_write_key : secondary_write_key list prop;
  sku : string prop;
  soft_delete_retention_days : float prop;
  tags : string Tf_core.assoc prop;
}

let make ?id ?local_auth_enabled ?public_network_access
    ?purge_protection_enabled ?sku ?soft_delete_retention_days ?tags
    ?(encryption = []) ?(identity = []) ?timeouts ~location ~name
    ~resource_group_name ~replica __id =
  let __type = "azurerm_app_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
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
       purge_protection_enabled =
         Prop.computed __type __id "purge_protection_enabled";
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
        (azurerm_app_configuration ?id ?local_auth_enabled
           ?public_network_access ?purge_protection_enabled ?sku
           ?soft_delete_retention_days ?tags ~encryption ~identity
           ?timeouts ~location ~name ~resource_group_name ~replica ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?local_auth_enabled
    ?public_network_access ?purge_protection_enabled ?sku
    ?soft_delete_retention_days ?tags ?(encryption = [])
    ?(identity = []) ?timeouts ~location ~name ~resource_group_name
    ~replica __id =
  let (r : _ Tf_core.resource) =
    make ?id ?local_auth_enabled ?public_network_access
      ?purge_protection_enabled ?sku ?soft_delete_retention_days
      ?tags ~encryption ~identity ?timeouts ~location ~name
      ~resource_group_name ~replica __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
