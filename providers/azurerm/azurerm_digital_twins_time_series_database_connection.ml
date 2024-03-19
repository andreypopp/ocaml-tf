(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_digital_twins_time_series_database_connection *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_digital_twins_time_series_database_connection
    ?eventhub_consumer_group_name ?id ?kusto_table_name ?timeouts
    ~digital_twins_id ~eventhub_name ~eventhub_namespace_endpoint_uri
    ~eventhub_namespace_id ~kusto_cluster_id ~kusto_cluster_uri
    ~kusto_database_name ~name () :
    azurerm_digital_twins_time_series_database_connection =
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

type t = {
  digital_twins_id : string prop;
  eventhub_consumer_group_name : string prop;
  eventhub_name : string prop;
  eventhub_namespace_endpoint_uri : string prop;
  eventhub_namespace_id : string prop;
  id : string prop;
  kusto_cluster_id : string prop;
  kusto_cluster_uri : string prop;
  kusto_database_name : string prop;
  kusto_table_name : string prop;
  name : string prop;
}

let register ?tf_module ?eventhub_consumer_group_name ?id
    ?kusto_table_name ?timeouts ~digital_twins_id ~eventhub_name
    ~eventhub_namespace_endpoint_uri ~eventhub_namespace_id
    ~kusto_cluster_id ~kusto_cluster_uri ~kusto_database_name ~name
    __resource_id =
  let __resource_type =
    "azurerm_digital_twins_time_series_database_connection"
  in
  let __resource =
    azurerm_digital_twins_time_series_database_connection
      ?eventhub_consumer_group_name ?id ?kusto_table_name ?timeouts
      ~digital_twins_id ~eventhub_name
      ~eventhub_namespace_endpoint_uri ~eventhub_namespace_id
      ~kusto_cluster_id ~kusto_cluster_uri ~kusto_database_name ~name
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_digital_twins_time_series_database_connection
       __resource);
  let __resource_attributes =
    ({
       digital_twins_id =
         Prop.computed __resource_type __resource_id
           "digital_twins_id";
       eventhub_consumer_group_name =
         Prop.computed __resource_type __resource_id
           "eventhub_consumer_group_name";
       eventhub_name =
         Prop.computed __resource_type __resource_id "eventhub_name";
       eventhub_namespace_endpoint_uri =
         Prop.computed __resource_type __resource_id
           "eventhub_namespace_endpoint_uri";
       eventhub_namespace_id =
         Prop.computed __resource_type __resource_id
           "eventhub_namespace_id";
       id = Prop.computed __resource_type __resource_id "id";
       kusto_cluster_id =
         Prop.computed __resource_type __resource_id
           "kusto_cluster_id";
       kusto_cluster_uri =
         Prop.computed __resource_type __resource_id
           "kusto_cluster_uri";
       kusto_database_name =
         Prop.computed __resource_type __resource_id
           "kusto_database_name";
       kusto_table_name =
         Prop.computed __resource_type __resource_id
           "kusto_table_name";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
