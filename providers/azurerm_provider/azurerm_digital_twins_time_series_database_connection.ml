(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_digital_twins_time_series_database_connection__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_digital_twins_time_series_database_connection__timeouts *)

type azurerm_digital_twins_time_series_database_connection = {
  digital_twins_id : string prop;  (** digital_twins_id *)
  eventhub_consumer_group_name : string prop option; [@option]
      (** eventhub_consumer_group_name *)
  eventhub_name : string prop;  (** eventhub_name *)
  eventhub_namespace_endpoint_uri : string prop;
      (** eventhub_namespace_endpoint_uri *)
  eventhub_namespace_id : string prop;  (** eventhub_namespace_id *)
  id : string prop option; [@option]  (** id *)
  kusto_cluster_id : string prop;  (** kusto_cluster_id *)
  kusto_cluster_uri : string prop;  (** kusto_cluster_uri *)
  kusto_database_name : string prop;  (** kusto_database_name *)
  kusto_table_name : string prop option; [@option]
      (** kusto_table_name *)
  name : string prop;  (** name *)
  timeouts :
    azurerm_digital_twins_time_series_database_connection__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_digital_twins_time_series_database_connection *)

let azurerm_digital_twins_time_series_database_connection
    ?eventhub_consumer_group_name ?id ?kusto_table_name ?timeouts
    ~digital_twins_id ~eventhub_name ~eventhub_namespace_endpoint_uri
    ~eventhub_namespace_id ~kusto_cluster_id ~kusto_cluster_uri
    ~kusto_database_name ~name __resource_id =
  let __resource_type =
    "azurerm_digital_twins_time_series_database_connection"
  in
  let __resource =
    {
      digital_twins_id;
      eventhub_consumer_group_name;
      eventhub_name;
      eventhub_namespace_endpoint_uri;
      eventhub_namespace_id;
      id;
      kusto_cluster_id;
      kusto_cluster_uri;
      kusto_database_name;
      kusto_table_name;
      name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_digital_twins_time_series_database_connection
       __resource);
  ()
