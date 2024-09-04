(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption = {
  key_source : string prop option; [@option]
  key_vault_key_id : string prop;
  user_assigned_identity_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption) -> ()

let yojson_of_encryption =
  (function
   | {
       key_source = v_key_source;
       key_vault_key_id = v_key_vault_key_id;
       user_assigned_identity_id = v_user_assigned_identity_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_assigned_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_assigned_identity_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_vault_key_id
         in
         ("key_vault_key_id", arg) :: bnds
       in
       let bnds =
         match v_key_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_source", arg in
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

type private_endpoint_connection = {
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : private_endpoint_connection) -> ()

let yojson_of_private_endpoint_connection =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : private_endpoint_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_endpoint_connection

[@@@deriving.end]

type azurerm_automation_account = {
  id : string prop option; [@option]
  local_authentication_enabled : bool prop option; [@option]
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  sku_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  encryption : encryption list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_automation_account) -> ()

let yojson_of_azurerm_automation_account =
  (function
   | {
       id = v_id;
       local_authentication_enabled = v_local_authentication_enabled;
       location = v_location;
       name = v_name;
       public_network_access_enabled =
         v_public_network_access_enabled;
       resource_group_name = v_resource_group_name;
       sku_name = v_sku_name;
       tags = v_tags;
       encryption = v_encryption;
       identity = v_identity;
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
         match v_public_network_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_access_enabled", arg in
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
         match v_local_authentication_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "local_authentication_enabled", arg in
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
    : azurerm_automation_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_automation_account

[@@@deriving.end]

let encryption ?key_source ?user_assigned_identity_id
    ~key_vault_key_id () : encryption =
  { key_source; key_vault_key_id; user_assigned_identity_id }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_account ?id ?local_authentication_enabled
    ?public_network_access_enabled ?tags ?(encryption = [])
    ?(identity = []) ?timeouts ~location ~name ~resource_group_name
    ~sku_name () : azurerm_automation_account =
  {
    id;
    local_authentication_enabled;
    location;
    name;
    public_network_access_enabled;
    resource_group_name;
    sku_name;
    tags;
    encryption;
    identity;
    timeouts;
  }

type t = {
  tf_name : string;
  dsc_primary_access_key : string prop;
  dsc_secondary_access_key : string prop;
  dsc_server_endpoint : string prop;
  hybrid_service_url : string prop;
  id : string prop;
  local_authentication_enabled : bool prop;
  location : string prop;
  name : string prop;
  private_endpoint_connection :
    private_endpoint_connection list prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?id ?local_authentication_enabled
    ?public_network_access_enabled ?tags ?(encryption = [])
    ?(identity = []) ?timeouts ~location ~name ~resource_group_name
    ~sku_name __id =
  let __type = "azurerm_automation_account" in
  let __attrs =
    ({
       tf_name = __id;
       dsc_primary_access_key =
         Prop.computed __type __id "dsc_primary_access_key";
       dsc_secondary_access_key =
         Prop.computed __type __id "dsc_secondary_access_key";
       dsc_server_endpoint =
         Prop.computed __type __id "dsc_server_endpoint";
       hybrid_service_url =
         Prop.computed __type __id "hybrid_service_url";
       id = Prop.computed __type __id "id";
       local_authentication_enabled =
         Prop.computed __type __id "local_authentication_enabled";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       private_endpoint_connection =
         Prop.computed __type __id "private_endpoint_connection";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_account
        (azurerm_automation_account ?id ?local_authentication_enabled
           ?public_network_access_enabled ?tags ~encryption ~identity
           ?timeouts ~location ~name ~resource_group_name ~sku_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?local_authentication_enabled
    ?public_network_access_enabled ?tags ?(encryption = [])
    ?(identity = []) ?timeouts ~location ~name ~resource_group_name
    ~sku_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?local_authentication_enabled
      ?public_network_access_enabled ?tags ~encryption ~identity
      ?timeouts ~location ~name ~resource_group_name ~sku_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
