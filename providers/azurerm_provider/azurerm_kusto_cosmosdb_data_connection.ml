(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_kusto_cosmosdb_data_connection__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_kusto_cosmosdb_data_connection__timeouts *)

type azurerm_kusto_cosmosdb_data_connection = {
  cosmosdb_container_id : string prop;  (** cosmosdb_container_id *)
  id : string prop option; [@option]  (** id *)
  kusto_database_id : string prop;  (** kusto_database_id *)
  location : string prop;  (** location *)
  managed_identity_id : string prop;  (** managed_identity_id *)
  mapping_rule_name : string prop option; [@option]
      (** mapping_rule_name *)
  name : string prop;  (** name *)
  retrieval_start_date : string prop option; [@option]
      (** retrieval_start_date *)
  table_name : string prop;  (** table_name *)
  timeouts : azurerm_kusto_cosmosdb_data_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kusto_cosmosdb_data_connection *)

type t = {
  cosmosdb_container_id : string prop;
  id : string prop;
  kusto_database_id : string prop;
  location : string prop;
  managed_identity_id : string prop;
  mapping_rule_name : string prop;
  name : string prop;
  retrieval_start_date : string prop;
  table_name : string prop;
}

let azurerm_kusto_cosmosdb_data_connection ?id ?mapping_rule_name
    ?retrieval_start_date ?timeouts ~cosmosdb_container_id
    ~kusto_database_id ~location ~managed_identity_id ~name
    ~table_name __resource_id =
  let __resource_type = "azurerm_kusto_cosmosdb_data_connection" in
  let __resource =
    ({
       cosmosdb_container_id;
       id;
       kusto_database_id;
       location;
       managed_identity_id;
       mapping_rule_name;
       name;
       retrieval_start_date;
       table_name;
       timeouts;
     }
      : azurerm_kusto_cosmosdb_data_connection)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kusto_cosmosdb_data_connection __resource);
  let __resource_attributes =
    ({
       cosmosdb_container_id =
         Prop.computed __resource_type __resource_id
           "cosmosdb_container_id";
       id = Prop.computed __resource_type __resource_id "id";
       kusto_database_id =
         Prop.computed __resource_type __resource_id
           "kusto_database_id";
       location =
         Prop.computed __resource_type __resource_id "location";
       managed_identity_id =
         Prop.computed __resource_type __resource_id
           "managed_identity_id";
       mapping_rule_name =
         Prop.computed __resource_type __resource_id
           "mapping_rule_name";
       name = Prop.computed __resource_type __resource_id "name";
       retrieval_start_date =
         Prop.computed __resource_type __resource_id
           "retrieval_start_date";
       table_name =
         Prop.computed __resource_type __resource_id "table_name";
     }
      : t)
  in
  __resource_attributes
