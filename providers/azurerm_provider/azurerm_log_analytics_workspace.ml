(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_log_analytics_workspace__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_workspace__identity *)

type azurerm_log_analytics_workspace__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_workspace__timeouts *)

type azurerm_log_analytics_workspace = {
  allow_resource_only_permissions : bool option; [@option]
      (** allow_resource_only_permissions *)
  cmk_for_query_forced : bool option; [@option]
      (** cmk_for_query_forced *)
  daily_quota_gb : float option; [@option]  (** daily_quota_gb *)
  data_collection_rule_id : string option; [@option]
      (** data_collection_rule_id *)
  immediate_data_purge_on_30_days_enabled : bool option; [@option]
      (** immediate_data_purge_on_30_days_enabled *)
  internet_ingestion_enabled : bool option; [@option]
      (** internet_ingestion_enabled *)
  internet_query_enabled : bool option; [@option]
      (** internet_query_enabled *)
  local_authentication_disabled : bool option; [@option]
      (** local_authentication_disabled *)
  location : string;  (** location *)
  name : string;  (** name *)
  reservation_capacity_in_gb_per_day : float option; [@option]
      (** reservation_capacity_in_gb_per_day *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  identity : azurerm_log_analytics_workspace__identity list;
  timeouts : azurerm_log_analytics_workspace__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_workspace *)

let azurerm_log_analytics_workspace ?allow_resource_only_permissions
    ?cmk_for_query_forced ?daily_quota_gb ?data_collection_rule_id
    ?immediate_data_purge_on_30_days_enabled
    ?internet_ingestion_enabled ?internet_query_enabled
    ?local_authentication_disabled
    ?reservation_capacity_in_gb_per_day ?tags ?timeouts ~location
    ~name ~resource_group_name ~identity __resource_id =
  let __resource_type = "azurerm_log_analytics_workspace" in
  let __resource =
    {
      allow_resource_only_permissions;
      cmk_for_query_forced;
      daily_quota_gb;
      data_collection_rule_id;
      immediate_data_purge_on_30_days_enabled;
      internet_ingestion_enabled;
      internet_query_enabled;
      local_authentication_disabled;
      location;
      name;
      reservation_capacity_in_gb_per_day;
      resource_group_name;
      tags;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_log_analytics_workspace __resource);
  ()
