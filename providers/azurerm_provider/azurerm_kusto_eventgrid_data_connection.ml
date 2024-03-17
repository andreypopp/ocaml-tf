(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_kusto_eventgrid_data_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_kusto_eventgrid_data_connection__timeouts *)

type azurerm_kusto_eventgrid_data_connection = {
  blob_storage_event_type : string option; [@option]
      (** blob_storage_event_type *)
  cluster_name : string;  (** cluster_name *)
  data_format : string option; [@option]  (** data_format *)
  database_name : string;  (** database_name *)
  database_routing_type : string option; [@option]
      (** database_routing_type *)
  eventgrid_resource_id : string option; [@option]
      (** eventgrid_resource_id *)
  eventhub_consumer_group_name : string;
      (** eventhub_consumer_group_name *)
  eventhub_id : string;  (** eventhub_id *)
  location : string;  (** location *)
  managed_identity_resource_id : string option; [@option]
      (** managed_identity_resource_id *)
  mapping_rule_name : string option; [@option]
      (** mapping_rule_name *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  skip_first_record : bool option; [@option]
      (** skip_first_record *)
  storage_account_id : string;  (** storage_account_id *)
  table_name : string option; [@option]  (** table_name *)
  timeouts : azurerm_kusto_eventgrid_data_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kusto_eventgrid_data_connection *)

let azurerm_kusto_eventgrid_data_connection ?blob_storage_event_type
    ?data_format ?database_routing_type ?eventgrid_resource_id
    ?managed_identity_resource_id ?mapping_rule_name
    ?skip_first_record ?table_name ?timeouts ~cluster_name
    ~database_name ~eventhub_consumer_group_name ~eventhub_id
    ~location ~name ~resource_group_name ~storage_account_id
    __resource_id =
  let __resource_type = "azurerm_kusto_eventgrid_data_connection" in
  let __resource =
    {
      blob_storage_event_type;
      cluster_name;
      data_format;
      database_name;
      database_routing_type;
      eventgrid_resource_id;
      eventhub_consumer_group_name;
      eventhub_id;
      location;
      managed_identity_resource_id;
      mapping_rule_name;
      name;
      resource_group_name;
      skip_first_record;
      storage_account_id;
      table_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kusto_eventgrid_data_connection __resource);
  ()
