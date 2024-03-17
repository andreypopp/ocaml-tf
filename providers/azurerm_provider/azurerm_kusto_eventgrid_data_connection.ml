(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_kusto_eventgrid_data_connection__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_kusto_eventgrid_data_connection__timeouts *)

type azurerm_kusto_eventgrid_data_connection = {
  blob_storage_event_type : string prop option; [@option]
      (** blob_storage_event_type *)
  cluster_name : string prop;  (** cluster_name *)
  data_format : string prop option; [@option]  (** data_format *)
  database_name : string prop;  (** database_name *)
  database_routing_type : string prop option; [@option]
      (** database_routing_type *)
  eventgrid_resource_id : string prop option; [@option]
      (** eventgrid_resource_id *)
  eventhub_consumer_group_name : string prop;
      (** eventhub_consumer_group_name *)
  eventhub_id : string prop;  (** eventhub_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  managed_identity_resource_id : string prop option; [@option]
      (** managed_identity_resource_id *)
  mapping_rule_name : string prop option; [@option]
      (** mapping_rule_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  skip_first_record : bool prop option; [@option]
      (** skip_first_record *)
  storage_account_id : string prop;  (** storage_account_id *)
  table_name : string prop option; [@option]  (** table_name *)
  timeouts : azurerm_kusto_eventgrid_data_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kusto_eventgrid_data_connection *)

let azurerm_kusto_eventgrid_data_connection ?blob_storage_event_type
    ?data_format ?database_routing_type ?eventgrid_resource_id ?id
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
      id;
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
