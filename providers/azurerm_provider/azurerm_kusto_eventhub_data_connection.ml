(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_kusto_eventhub_data_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_kusto_eventhub_data_connection__timeouts *)

type azurerm_kusto_eventhub_data_connection = {
  cluster_name : string;  (** cluster_name *)
  compression : string option; [@option]  (** compression *)
  consumer_group : string;  (** consumer_group *)
  data_format : string option; [@option]  (** data_format *)
  database_name : string;  (** database_name *)
  database_routing_type : string option; [@option]
      (** database_routing_type *)
  eventhub_id : string;  (** eventhub_id *)
  identity_id : string option; [@option]  (** identity_id *)
  location : string;  (** location *)
  mapping_rule_name : string option; [@option]
      (** mapping_rule_name *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  table_name : string option; [@option]  (** table_name *)
  timeouts : azurerm_kusto_eventhub_data_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kusto_eventhub_data_connection *)

let azurerm_kusto_eventhub_data_connection ?compression ?data_format
    ?database_routing_type ?identity_id ?mapping_rule_name
    ?table_name ?timeouts ~cluster_name ~consumer_group
    ~database_name ~eventhub_id ~location ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_kusto_eventhub_data_connection" in
  let __resource =
    {
      cluster_name;
      compression;
      consumer_group;
      data_format;
      database_name;
      database_routing_type;
      eventhub_id;
      identity_id;
      location;
      mapping_rule_name;
      name;
      resource_group_name;
      table_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kusto_eventhub_data_connection __resource);
  ()
