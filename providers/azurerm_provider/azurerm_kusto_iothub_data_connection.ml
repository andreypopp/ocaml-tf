(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_kusto_iothub_data_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_kusto_iothub_data_connection__timeouts *)

type azurerm_kusto_iothub_data_connection = {
  cluster_name : string;  (** cluster_name *)
  consumer_group : string;  (** consumer_group *)
  data_format : string option; [@option]  (** data_format *)
  database_name : string;  (** database_name *)
  database_routing_type : string option; [@option]
      (** database_routing_type *)
  event_system_properties : string list option; [@option]
      (** event_system_properties *)
  iothub_id : string;  (** iothub_id *)
  location : string;  (** location *)
  mapping_rule_name : string option; [@option]
      (** mapping_rule_name *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  shared_access_policy_name : string;
      (** shared_access_policy_name *)
  table_name : string option; [@option]  (** table_name *)
  timeouts : azurerm_kusto_iothub_data_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kusto_iothub_data_connection *)

let azurerm_kusto_iothub_data_connection ?data_format
    ?database_routing_type ?event_system_properties
    ?mapping_rule_name ?table_name ?timeouts ~cluster_name
    ~consumer_group ~database_name ~iothub_id ~location ~name
    ~resource_group_name ~shared_access_policy_name __resource_id =
  let __resource_type = "azurerm_kusto_iothub_data_connection" in
  let __resource =
    {
      cluster_name;
      consumer_group;
      data_format;
      database_name;
      database_routing_type;
      event_system_properties;
      iothub_id;
      location;
      mapping_rule_name;
      name;
      resource_group_name;
      shared_access_policy_name;
      table_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kusto_iothub_data_connection __resource);
  ()
