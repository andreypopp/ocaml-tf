(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_kusto_eventhub_data_connection__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_kusto_eventhub_data_connection__timeouts *)

type azurerm_kusto_eventhub_data_connection = {
  cluster_name : string prop;  (** cluster_name *)
  compression : string prop option; [@option]  (** compression *)
  consumer_group : string prop;  (** consumer_group *)
  data_format : string prop option; [@option]  (** data_format *)
  database_name : string prop;  (** database_name *)
  database_routing_type : string prop option; [@option]
      (** database_routing_type *)
  event_system_properties : string prop list option; [@option]
      (** event_system_properties *)
  eventhub_id : string prop;  (** eventhub_id *)
  id : string prop option; [@option]  (** id *)
  identity_id : string prop option; [@option]  (** identity_id *)
  location : string prop;  (** location *)
  mapping_rule_name : string prop option; [@option]
      (** mapping_rule_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  table_name : string prop option; [@option]  (** table_name *)
  timeouts : azurerm_kusto_eventhub_data_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kusto_eventhub_data_connection *)

type t = {
  cluster_name : string prop;
  compression : string prop;
  consumer_group : string prop;
  data_format : string prop;
  database_name : string prop;
  database_routing_type : string prop;
  event_system_properties : string list prop;
  eventhub_id : string prop;
  id : string prop;
  identity_id : string prop;
  location : string prop;
  mapping_rule_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  table_name : string prop;
}

let azurerm_kusto_eventhub_data_connection ?compression ?data_format
    ?database_routing_type ?event_system_properties ?id ?identity_id
    ?mapping_rule_name ?table_name ?timeouts ~cluster_name
    ~consumer_group ~database_name ~eventhub_id ~location ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_kusto_eventhub_data_connection" in
  let __resource =
    ({
       cluster_name;
       compression;
       consumer_group;
       data_format;
       database_name;
       database_routing_type;
       event_system_properties;
       eventhub_id;
       id;
       identity_id;
       location;
       mapping_rule_name;
       name;
       resource_group_name;
       table_name;
       timeouts;
     }
      : azurerm_kusto_eventhub_data_connection)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kusto_eventhub_data_connection __resource);
  let __resource_attributes =
    ({
       cluster_name =
         Prop.computed __resource_type __resource_id "cluster_name";
       compression =
         Prop.computed __resource_type __resource_id "compression";
       consumer_group =
         Prop.computed __resource_type __resource_id "consumer_group";
       data_format =
         Prop.computed __resource_type __resource_id "data_format";
       database_name =
         Prop.computed __resource_type __resource_id "database_name";
       database_routing_type =
         Prop.computed __resource_type __resource_id
           "database_routing_type";
       event_system_properties =
         Prop.computed __resource_type __resource_id
           "event_system_properties";
       eventhub_id =
         Prop.computed __resource_type __resource_id "eventhub_id";
       id = Prop.computed __resource_type __resource_id "id";
       identity_id =
         Prop.computed __resource_type __resource_id "identity_id";
       location =
         Prop.computed __resource_type __resource_id "location";
       mapping_rule_name =
         Prop.computed __resource_type __resource_id
           "mapping_rule_name";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       table_name =
         Prop.computed __resource_type __resource_id "table_name";
     }
      : t)
  in
  __resource_attributes
