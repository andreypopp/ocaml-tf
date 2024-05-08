(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption = {
  key_id : string prop;
  key_vault_id : string prop;
  user_assigned_identity_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption) -> ()

let yojson_of_encryption =
  (function
   | {
       key_id = v_key_id;
       key_vault_id = v_key_vault_id;
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
         let arg = yojson_of_prop yojson_of_string v_key_vault_id in
         ("key_vault_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_id in
         ("key_id", arg) :: bnds
       in
       `Assoc bnds
    : encryption -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption

[@@@deriving.end]

type feature_store = {
  computer_spark_runtime_version : string prop option; [@option]
  offline_connection_name : string prop option; [@option]
  online_connection_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : feature_store) -> ()

let yojson_of_feature_store =
  (function
   | {
       computer_spark_runtime_version =
         v_computer_spark_runtime_version;
       offline_connection_name = v_offline_connection_name;
       online_connection_name = v_online_connection_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_online_connection_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "online_connection_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_offline_connection_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "offline_connection_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_computer_spark_runtime_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "computer_spark_runtime_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : feature_store -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_feature_store

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

type managed_network = {
  isolation_mode : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : managed_network) -> ()

let yojson_of_managed_network =
  (function
   | { isolation_mode = v_isolation_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_isolation_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "isolation_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : managed_network -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_managed_network

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

type azurerm_machine_learning_workspace = {
  application_insights_id : string prop;
  container_registry_id : string prop option; [@option]
  description : string prop option; [@option]
  friendly_name : string prop option; [@option]
  high_business_impact : bool prop option; [@option]
  id : string prop option; [@option]
  image_build_compute_name : string prop option; [@option]
  key_vault_id : string prop;
  kind : string prop option; [@option]
  location : string prop;
  name : string prop;
  primary_user_assigned_identity : string prop option; [@option]
  public_access_behind_virtual_network_enabled : bool prop option;
      [@option]
  public_network_access_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  sku_name : string prop option; [@option]
  storage_account_id : string prop;
  tags : (string * string prop) list option; [@option]
  v1_legacy_mode_enabled : bool prop option; [@option]
  encryption : encryption list;
      [@default []] [@yojson_drop_default ( = )]
  feature_store : feature_store list;
      [@default []] [@yojson_drop_default ( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default ( = )]
  managed_network : managed_network list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_machine_learning_workspace) -> ()

let yojson_of_azurerm_machine_learning_workspace =
  (function
   | {
       application_insights_id = v_application_insights_id;
       container_registry_id = v_container_registry_id;
       description = v_description;
       friendly_name = v_friendly_name;
       high_business_impact = v_high_business_impact;
       id = v_id;
       image_build_compute_name = v_image_build_compute_name;
       key_vault_id = v_key_vault_id;
       kind = v_kind;
       location = v_location;
       name = v_name;
       primary_user_assigned_identity =
         v_primary_user_assigned_identity;
       public_access_behind_virtual_network_enabled =
         v_public_access_behind_virtual_network_enabled;
       public_network_access_enabled =
         v_public_network_access_enabled;
       resource_group_name = v_resource_group_name;
       sku_name = v_sku_name;
       storage_account_id = v_storage_account_id;
       tags = v_tags;
       v1_legacy_mode_enabled = v_v1_legacy_mode_enabled;
       encryption = v_encryption;
       feature_store = v_feature_store;
       identity = v_identity;
       managed_network = v_managed_network;
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
         if [] = v_managed_network then bnds
         else
           let arg =
             (yojson_of_list yojson_of_managed_network)
               v_managed_network
           in
           let bnd = "managed_network", arg in
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
         if [] = v_feature_store then bnds
         else
           let arg =
             (yojson_of_list yojson_of_feature_store) v_feature_store
           in
           let bnd = "feature_store", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_encryption then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encryption) v_encryption
           in
           let bnd = "encryption", arg in
           bnd :: bnds
       in
       let bnds =
         match v_v1_legacy_mode_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "v1_legacy_mode_enabled", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_id
         in
         ("storage_account_id", arg) :: bnds
       in
       let bnds =
         match v_sku_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku_name", arg in
             bnd :: bnds
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
         match v_public_access_behind_virtual_network_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "public_access_behind_virtual_network_enabled", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_primary_user_assigned_identity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "primary_user_assigned_identity", arg in
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
         match v_kind with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kind", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_vault_id in
         ("key_vault_id", arg) :: bnds
       in
       let bnds =
         match v_image_build_compute_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_build_compute_name", arg in
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
         match v_high_business_impact with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "high_business_impact", arg in
             bnd :: bnds
       in
       let bnds =
         match v_friendly_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "friendly_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_registry_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "container_registry_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_insights_id
         in
         ("application_insights_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_machine_learning_workspace ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_machine_learning_workspace

[@@@deriving.end]

let encryption ?user_assigned_identity_id ~key_id ~key_vault_id () :
    encryption =
  { key_id; key_vault_id; user_assigned_identity_id }

let feature_store ?computer_spark_runtime_version
    ?offline_connection_name ?online_connection_name () :
    feature_store =
  {
    computer_spark_runtime_version;
    offline_connection_name;
    online_connection_name;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let managed_network ?isolation_mode () : managed_network =
  { isolation_mode }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_machine_learning_workspace ?container_registry_id
    ?description ?friendly_name ?high_business_impact ?id
    ?image_build_compute_name ?kind ?primary_user_assigned_identity
    ?public_access_behind_virtual_network_enabled
    ?public_network_access_enabled ?sku_name ?tags
    ?v1_legacy_mode_enabled ?(encryption = []) ?(feature_store = [])
    ?(managed_network = []) ?timeouts ~application_insights_id
    ~key_vault_id ~location ~name ~resource_group_name
    ~storage_account_id ~identity () :
    azurerm_machine_learning_workspace =
  {
    application_insights_id;
    container_registry_id;
    description;
    friendly_name;
    high_business_impact;
    id;
    image_build_compute_name;
    key_vault_id;
    kind;
    location;
    name;
    primary_user_assigned_identity;
    public_access_behind_virtual_network_enabled;
    public_network_access_enabled;
    resource_group_name;
    sku_name;
    storage_account_id;
    tags;
    v1_legacy_mode_enabled;
    encryption;
    feature_store;
    identity;
    managed_network;
    timeouts;
  }

type t = {
  tf_name : string;
  application_insights_id : string prop;
  container_registry_id : string prop;
  description : string prop;
  discovery_url : string prop;
  friendly_name : string prop;
  high_business_impact : bool prop;
  id : string prop;
  image_build_compute_name : string prop;
  key_vault_id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  primary_user_assigned_identity : string prop;
  public_access_behind_virtual_network_enabled : bool prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku_name : string prop;
  storage_account_id : string prop;
  tags : (string * string) list prop;
  v1_legacy_mode_enabled : bool prop;
  workspace_id : string prop;
}

let make ?container_registry_id ?description ?friendly_name
    ?high_business_impact ?id ?image_build_compute_name ?kind
    ?primary_user_assigned_identity
    ?public_access_behind_virtual_network_enabled
    ?public_network_access_enabled ?sku_name ?tags
    ?v1_legacy_mode_enabled ?(encryption = []) ?(feature_store = [])
    ?(managed_network = []) ?timeouts ~application_insights_id
    ~key_vault_id ~location ~name ~resource_group_name
    ~storage_account_id ~identity __id =
  let __type = "azurerm_machine_learning_workspace" in
  let __attrs =
    ({
       tf_name = __id;
       application_insights_id =
         Prop.computed __type __id "application_insights_id";
       container_registry_id =
         Prop.computed __type __id "container_registry_id";
       description = Prop.computed __type __id "description";
       discovery_url = Prop.computed __type __id "discovery_url";
       friendly_name = Prop.computed __type __id "friendly_name";
       high_business_impact =
         Prop.computed __type __id "high_business_impact";
       id = Prop.computed __type __id "id";
       image_build_compute_name =
         Prop.computed __type __id "image_build_compute_name";
       key_vault_id = Prop.computed __type __id "key_vault_id";
       kind = Prop.computed __type __id "kind";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       primary_user_assigned_identity =
         Prop.computed __type __id "primary_user_assigned_identity";
       public_access_behind_virtual_network_enabled =
         Prop.computed __type __id
           "public_access_behind_virtual_network_enabled";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
       tags = Prop.computed __type __id "tags";
       v1_legacy_mode_enabled =
         Prop.computed __type __id "v1_legacy_mode_enabled";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_machine_learning_workspace
        (azurerm_machine_learning_workspace ?container_registry_id
           ?description ?friendly_name ?high_business_impact ?id
           ?image_build_compute_name ?kind
           ?primary_user_assigned_identity
           ?public_access_behind_virtual_network_enabled
           ?public_network_access_enabled ?sku_name ?tags
           ?v1_legacy_mode_enabled ~encryption ~feature_store
           ~managed_network ?timeouts ~application_insights_id
           ~key_vault_id ~location ~name ~resource_group_name
           ~storage_account_id ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?container_registry_id ?description
    ?friendly_name ?high_business_impact ?id
    ?image_build_compute_name ?kind ?primary_user_assigned_identity
    ?public_access_behind_virtual_network_enabled
    ?public_network_access_enabled ?sku_name ?tags
    ?v1_legacy_mode_enabled ?(encryption = []) ?(feature_store = [])
    ?(managed_network = []) ?timeouts ~application_insights_id
    ~key_vault_id ~location ~name ~resource_group_name
    ~storage_account_id ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?container_registry_id ?description ?friendly_name
      ?high_business_impact ?id ?image_build_compute_name ?kind
      ?primary_user_assigned_identity
      ?public_access_behind_virtual_network_enabled
      ?public_network_access_enabled ?sku_name ?tags
      ?v1_legacy_mode_enabled ~encryption ~feature_store
      ~managed_network ?timeouts ~application_insights_id
      ~key_vault_id ~location ~name ~resource_group_name
      ~storage_account_id ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
