(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_mongo_role_definition__privilege__resource = {
  collection_name : string prop option; [@option]
      (** collection_name *)
  db_name : string prop option; [@option]  (** db_name *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_mongo_role_definition__privilege__resource *)

type azurerm_cosmosdb_mongo_role_definition__privilege = {
  actions : string prop list;  (** actions *)
  resource :
    azurerm_cosmosdb_mongo_role_definition__privilege__resource list;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_mongo_role_definition__privilege *)

type azurerm_cosmosdb_mongo_role_definition__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_mongo_role_definition__timeouts *)

type azurerm_cosmosdb_mongo_role_definition = {
  cosmos_mongo_database_id : string prop;
      (** cosmos_mongo_database_id *)
  id : string prop option; [@option]  (** id *)
  inherited_role_names : string prop list option; [@option]
      (** inherited_role_names *)
  role_name : string prop;  (** role_name *)
  privilege : azurerm_cosmosdb_mongo_role_definition__privilege list;
  timeouts : azurerm_cosmosdb_mongo_role_definition__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_mongo_role_definition *)

type t = {
  cosmos_mongo_database_id : string prop;
  id : string prop;
  inherited_role_names : string list prop;
  role_name : string prop;
}

let azurerm_cosmosdb_mongo_role_definition ?id ?inherited_role_names
    ?timeouts ~cosmos_mongo_database_id ~role_name ~privilege
    __resource_id =
  let __resource_type = "azurerm_cosmosdb_mongo_role_definition" in
  let __resource =
    ({
       cosmos_mongo_database_id;
       id;
       inherited_role_names;
       role_name;
       privilege;
       timeouts;
     }
      : azurerm_cosmosdb_mongo_role_definition)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_mongo_role_definition __resource);
  let __resource_attributes =
    ({
       cosmos_mongo_database_id =
         Prop.computed __resource_type __resource_id
           "cosmos_mongo_database_id";
       id = Prop.computed __resource_type __resource_id "id";
       inherited_role_names =
         Prop.computed __resource_type __resource_id
           "inherited_role_names";
       role_name =
         Prop.computed __resource_type __resource_id "role_name";
     }
      : t)
  in
  __resource_attributes
