(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_mongo_role_definition__privilege__resource = {
  collection_name : string option; [@option]  (** collection_name *)
  db_name : string option; [@option]  (** db_name *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_mongo_role_definition__privilege__resource *)

type azurerm_cosmosdb_mongo_role_definition__privilege = {
  actions : string list;  (** actions *)
  resource :
    azurerm_cosmosdb_mongo_role_definition__privilege__resource list;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_mongo_role_definition__privilege *)

type azurerm_cosmosdb_mongo_role_definition__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_mongo_role_definition__timeouts *)

type azurerm_cosmosdb_mongo_role_definition = {
  cosmos_mongo_database_id : string;  (** cosmos_mongo_database_id *)
  inherited_role_names : string list option; [@option]
      (** inherited_role_names *)
  role_name : string;  (** role_name *)
  privilege : azurerm_cosmosdb_mongo_role_definition__privilege list;
  timeouts : azurerm_cosmosdb_mongo_role_definition__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_mongo_role_definition *)

let azurerm_cosmosdb_mongo_role_definition ?inherited_role_names
    ?timeouts ~cosmos_mongo_database_id ~role_name ~privilege
    __resource_id =
  let __resource_type = "azurerm_cosmosdb_mongo_role_definition" in
  let __resource =
    {
      cosmos_mongo_database_id;
      inherited_role_names;
      role_name;
      privilege;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_mongo_role_definition __resource);
  ()
