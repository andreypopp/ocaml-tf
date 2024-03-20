(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_log_analytics_workspace = {
  allow_resource_only_permissions : bool prop option; [@option]
      (** allow_resource_only_permissions *)
  cmk_for_query_forced : bool prop option; [@option]
      (** cmk_for_query_forced *)
  daily_quota_gb : float prop option; [@option]
      (** daily_quota_gb *)
  data_collection_rule_id : string prop option; [@option]
      (** data_collection_rule_id *)
  id : string prop option; [@option]  (** id *)
  immediate_data_purge_on_30_days_enabled : bool prop option;
      [@option]
      (** immediate_data_purge_on_30_days_enabled *)
  internet_ingestion_enabled : bool prop option; [@option]
      (** internet_ingestion_enabled *)
  internet_query_enabled : bool prop option; [@option]
      (** internet_query_enabled *)
  local_authentication_disabled : bool prop option; [@option]
      (** local_authentication_disabled *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  reservation_capacity_in_gb_per_day : float prop option; [@option]
      (** reservation_capacity_in_gb_per_day *)
  resource_group_name : string prop;  (** resource_group_name *)
  retention_in_days : float prop option; [@option]
      (** retention_in_days *)
  sku : string prop option; [@option]  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_workspace *)

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
    ?timeouts ~location ~name ~resource_group_name ~identity () :
    azurerm_log_analytics_workspace =
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
  tags : (string * string) list prop;
  workspace_id : string prop;
}

let make ?allow_resource_only_permissions ?cmk_for_query_forced
    ?daily_quota_gb ?data_collection_rule_id ?id
    ?immediate_data_purge_on_30_days_enabled
    ?internet_ingestion_enabled ?internet_query_enabled
    ?local_authentication_disabled
    ?reservation_capacity_in_gb_per_day ?retention_in_days ?sku ?tags
    ?timeouts ~location ~name ~resource_group_name ~identity __id =
  let __type = "azurerm_log_analytics_workspace" in
  let __attrs =
    ({
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
           ?sku ?tags ?timeouts ~location ~name ~resource_group_name
           ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_resource_only_permissions
    ?cmk_for_query_forced ?daily_quota_gb ?data_collection_rule_id
    ?id ?immediate_data_purge_on_30_days_enabled
    ?internet_ingestion_enabled ?internet_query_enabled
    ?local_authentication_disabled
    ?reservation_capacity_in_gb_per_day ?retention_in_days ?sku ?tags
    ?timeouts ~location ~name ~resource_group_name ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?allow_resource_only_permissions ?cmk_for_query_forced
      ?daily_quota_gb ?data_collection_rule_id ?id
      ?immediate_data_purge_on_30_days_enabled
      ?internet_ingestion_enabled ?internet_query_enabled
      ?local_authentication_disabled
      ?reservation_capacity_in_gb_per_day ?retention_in_days ?sku
      ?tags ?timeouts ~location ~name ~resource_group_name ~identity
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
