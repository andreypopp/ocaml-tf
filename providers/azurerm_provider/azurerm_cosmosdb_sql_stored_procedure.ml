(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_sql_stored_procedure__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_stored_procedure__timeouts *)

type azurerm_cosmosdb_sql_stored_procedure = {
  account_name : string;  (** account_name *)
  body : string;  (** body *)
  container_name : string;  (** container_name *)
  database_name : string;  (** database_name *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts : azurerm_cosmosdb_sql_stored_procedure__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_stored_procedure *)

let azurerm_cosmosdb_sql_stored_procedure ?timeouts ~account_name
    ~body ~container_name ~database_name ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_cosmosdb_sql_stored_procedure" in
  let __resource =
    {
      account_name;
      body;
      container_name;
      database_name;
      name;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_sql_stored_procedure __resource);
  ()
