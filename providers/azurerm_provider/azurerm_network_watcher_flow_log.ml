(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_watcher_flow_log__retention_policy = {
  days : float;  (** days *)
  enabled : bool;  (** enabled *)
}
[@@deriving yojson_of]
(** azurerm_network_watcher_flow_log__retention_policy *)

type azurerm_network_watcher_flow_log__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_watcher_flow_log__timeouts *)

type azurerm_network_watcher_flow_log__traffic_analytics = {
  enabled : bool;  (** enabled *)
  interval_in_minutes : float option; [@option]
      (** interval_in_minutes *)
  workspace_id : string;  (** workspace_id *)
  workspace_region : string;  (** workspace_region *)
  workspace_resource_id : string;  (** workspace_resource_id *)
}
[@@deriving yojson_of]
(** azurerm_network_watcher_flow_log__traffic_analytics *)

type azurerm_network_watcher_flow_log = {
  enabled : bool;  (** enabled *)
  name : string;  (** name *)
  network_security_group_id : string;
      (** network_security_group_id *)
  network_watcher_name : string;  (** network_watcher_name *)
  resource_group_name : string;  (** resource_group_name *)
  storage_account_id : string;  (** storage_account_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  retention_policy :
    azurerm_network_watcher_flow_log__retention_policy list;
  timeouts : azurerm_network_watcher_flow_log__timeouts option;
  traffic_analytics :
    azurerm_network_watcher_flow_log__traffic_analytics list;
}
[@@deriving yojson_of]
(** azurerm_network_watcher_flow_log *)

let azurerm_network_watcher_flow_log ?tags ?timeouts ~enabled ~name
    ~network_security_group_id ~network_watcher_name
    ~resource_group_name ~storage_account_id ~retention_policy
    ~traffic_analytics __resource_id =
  let __resource_type = "azurerm_network_watcher_flow_log" in
  let __resource =
    {
      enabled;
      name;
      network_security_group_id;
      network_watcher_name;
      resource_group_name;
      storage_account_id;
      tags;
      retention_policy;
      timeouts;
      traffic_analytics;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_watcher_flow_log __resource);
  ()
