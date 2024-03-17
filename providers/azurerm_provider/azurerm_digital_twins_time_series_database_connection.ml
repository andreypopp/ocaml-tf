(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_digital_twins_time_series_database_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_digital_twins_time_series_database_connection__timeouts *)

type azurerm_digital_twins_time_series_database_connection = {
  digital_twins_id : string;  (** digital_twins_id *)
  eventhub_consumer_group_name : string option; [@option]
      (** eventhub_consumer_group_name *)
  eventhub_name : string;  (** eventhub_name *)
  eventhub_namespace_endpoint_uri : string;
      (** eventhub_namespace_endpoint_uri *)
  eventhub_namespace_id : string;  (** eventhub_namespace_id *)
  kusto_cluster_id : string;  (** kusto_cluster_id *)
  kusto_cluster_uri : string;  (** kusto_cluster_uri *)
  kusto_database_name : string;  (** kusto_database_name *)
  name : string;  (** name *)
  timeouts :
    azurerm_digital_twins_time_series_database_connection__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_digital_twins_time_series_database_connection *)

let azurerm_digital_twins_time_series_database_connection
    ?eventhub_consumer_group_name ?timeouts ~digital_twins_id
    ~eventhub_name ~eventhub_namespace_endpoint_uri
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
      kusto_cluster_id;
      kusto_cluster_uri;
      kusto_database_name;
      name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_digital_twins_time_series_database_connection
       __resource);
  ()
