(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_log_analytics_workspace = {
  allow_resource_only_permissions : bool prop option; [@option]
  cmk_for_query_forced : bool prop option; [@option]
  daily_quota_gb : float prop option; [@option]
  data_collection_rule_id : string prop option; [@option]
  id : string prop option; [@option]
  immediate_data_purge_on_30_days_enabled : bool prop option;
      [@option]
  internet_ingestion_enabled : bool prop option; [@option]
  internet_query_enabled : bool prop option; [@option]
  local_authentication_disabled : bool prop option; [@option]
  location : string prop;
  name : string prop;
  reservation_capacity_in_gb_per_day : float prop option; [@option]
  resource_group_name : string prop;
  retention_in_days : float prop option; [@option]
  sku : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_log_analytics_workspace) -> ()

let yojson_of_azurerm_log_analytics_workspace =
  (function
   | {
       allow_resource_only_permissions =
         v_allow_resource_only_permissions;
       cmk_for_query_forced = v_cmk_for_query_forced;
       daily_quota_gb = v_daily_quota_gb;
       data_collection_rule_id = v_data_collection_rule_id;
       id = v_id;
       immediate_data_purge_on_30_days_enabled =
         v_immediate_data_purge_on_30_days_enabled;
       internet_ingestion_enabled = v_internet_ingestion_enabled;
       internet_query_enabled = v_internet_query_enabled;
       local_authentication_disabled =
         v_local_authentication_disabled;
       location = v_location;
       name = v_name;
       reservation_capacity_in_gb_per_day =
         v_reservation_capacity_in_gb_per_day;
       resource_group_name = v_resource_group_name;
       retention_in_days = v_retention_in_days;
       sku = v_sku;
       tags = v_tags;
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
         match v_sku with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retention_in_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_in_days", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_reservation_capacity_in_gb_per_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "reservation_capacity_in_gb_per_day", arg in
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
         match v_local_authentication_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "local_authentication_disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_internet_query_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "internet_query_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_internet_ingestion_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "internet_ingestion_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_immediate_data_purge_on_30_days_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "immediate_data_purge_on_30_days_enabled", arg
             in
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
         match v_data_collection_rule_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_collection_rule_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_daily_quota_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "daily_quota_gb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cmk_for_query_forced with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cmk_for_query_forced", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_resource_only_permissions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_resource_only_permissions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_log_analytics_workspace ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_log_analytics_workspace

[@@@deriving.end]

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_log_analytics_workspace ?allow_resource_only_permissions
    ?cmk_for_query_forced ?daily_quota_gb ?data_collection_rule_id
    ?id ?immediate_data_purge_on_30_days_enabled
    ?internet_ingestion_enabled ?internet_query_enabled
    ?local_authentication_disabled
    ?reservation_capacity_in_gb_per_day ?retention_in_days ?sku ?tags
    ?(identity = []) ?timeouts ~location ~name ~resource_group_name
    () : azurerm_log_analytics_workspace =
  {
    allow_resource_only_permissions;
    cmk_for_query_forced;
    daily_quota_gb;
    data_collection_rule_id;
    id;
    immediate_data_purge_on_30_days_enabled;
    internet_ingestion_enabled;
    internet_query_enabled;
    local_authentication_disabled;
    location;
    name;
    reservation_capacity_in_gb_per_day;
    resource_group_name;
    retention_in_days;
    sku;
    tags;
    identity;
    timeouts;
  }

type t = {
  tf_name : string;
  allow_resource_only_permissions : bool prop;
  cmk_for_query_forced : bool prop;
  daily_quota_gb : float prop;
  data_collection_rule_id : string prop;
  id : string prop;
  immediate_data_purge_on_30_days_enabled : bool prop;
  internet_ingestion_enabled : bool prop;
  internet_query_enabled : bool prop;
  local_authentication_disabled : bool prop;
  location : string prop;
  name : string prop;
  primary_shared_key : string prop;
  reservation_capacity_in_gb_per_day : float prop;
  resource_group_name : string prop;
  retention_in_days : float prop;
  secondary_shared_key : string prop;
  sku : string prop;
  tags : string Tf_core.assoc prop;
  workspace_id : string prop;
}

let make ?allow_resource_only_permissions ?cmk_for_query_forced
    ?daily_quota_gb ?data_collection_rule_id ?id
    ?immediate_data_purge_on_30_days_enabled
    ?internet_ingestion_enabled ?internet_query_enabled
    ?local_authentication_disabled
    ?reservation_capacity_in_gb_per_day ?retention_in_days ?sku ?tags
    ?(identity = []) ?timeouts ~location ~name ~resource_group_name
    __id =
  let __type = "azurerm_log_analytics_workspace" in
  let __attrs =
    ({
       tf_name = __id;
       allow_resource_only_permissions =
         Prop.computed __type __id "allow_resource_only_permissions";
       cmk_for_query_forced =
         Prop.computed __type __id "cmk_for_query_forced";
       daily_quota_gb = Prop.computed __type __id "daily_quota_gb";
       data_collection_rule_id =
         Prop.computed __type __id "data_collection_rule_id";
       id = Prop.computed __type __id "id";
       immediate_data_purge_on_30_days_enabled =
         Prop.computed __type __id
           "immediate_data_purge_on_30_days_enabled";
       internet_ingestion_enabled =
         Prop.computed __type __id "internet_ingestion_enabled";
       internet_query_enabled =
         Prop.computed __type __id "internet_query_enabled";
       local_authentication_disabled =
         Prop.computed __type __id "local_authentication_disabled";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       primary_shared_key =
         Prop.computed __type __id "primary_shared_key";
       reservation_capacity_in_gb_per_day =
         Prop.computed __type __id
           "reservation_capacity_in_gb_per_day";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       retention_in_days =
         Prop.computed __type __id "retention_in_days";
       secondary_shared_key =
         Prop.computed __type __id "secondary_shared_key";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_log_analytics_workspace
        (azurerm_log_analytics_workspace
           ?allow_resource_only_permissions ?cmk_for_query_forced
           ?daily_quota_gb ?data_collection_rule_id ?id
           ?immediate_data_purge_on_30_days_enabled
           ?internet_ingestion_enabled ?internet_query_enabled
           ?local_authentication_disabled
           ?reservation_capacity_in_gb_per_day ?retention_in_days
           ?sku ?tags ~identity ?timeouts ~location ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_resource_only_permissions
    ?cmk_for_query_forced ?daily_quota_gb ?data_collection_rule_id
    ?id ?immediate_data_purge_on_30_days_enabled
    ?internet_ingestion_enabled ?internet_query_enabled
    ?local_authentication_disabled
    ?reservation_capacity_in_gb_per_day ?retention_in_days ?sku ?tags
    ?(identity = []) ?timeouts ~location ~name ~resource_group_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?allow_resource_only_permissions ?cmk_for_query_forced
      ?daily_quota_gb ?data_collection_rule_id ?id
      ?immediate_data_purge_on_30_days_enabled
      ?internet_ingestion_enabled ?internet_query_enabled
      ?local_authentication_disabled
      ?reservation_capacity_in_gb_per_day ?retention_in_days ?sku
      ?tags ~identity ?timeouts ~location ~name ~resource_group_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
