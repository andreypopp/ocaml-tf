(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_kusto_cosmosdb_data_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_kusto_cosmosdb_data_connection__timeouts *)

type azurerm_kusto_cosmosdb_data_connection = {
  cosmosdb_container_id : string;  (** cosmosdb_container_id *)
  kusto_database_id : string;  (** kusto_database_id *)
  location : string;  (** location *)
  managed_identity_id : string;  (** managed_identity_id *)
  mapping_rule_name : string option; [@option]
      (** mapping_rule_name *)
  name : string;  (** name *)
  retrieval_start_date : string option; [@option]
      (** retrieval_start_date *)
  table_name : string;  (** table_name *)
  timeouts : azurerm_kusto_cosmosdb_data_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kusto_cosmosdb_data_connection *)

let azurerm_kusto_cosmosdb_data_connection ?mapping_rule_name
    ?retrieval_start_date ?timeouts ~cosmosdb_container_id
    ~kusto_database_id ~location ~managed_identity_id ~name
    ~table_name __resource_id =
  let __resource_type = "azurerm_kusto_cosmosdb_data_connection" in
  let __resource =
    {
      cosmosdb_container_id;
      kusto_database_id;
      location;
      managed_identity_id;
      mapping_rule_name;
      name;
      retrieval_start_date;
      table_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_kusto_cosmosdb_data_connection __resource);
  ()
