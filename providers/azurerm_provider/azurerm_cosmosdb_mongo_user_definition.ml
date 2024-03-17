(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cosmosdb_mongo_user_definition__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_mongo_user_definition__timeouts *)

type azurerm_cosmosdb_mongo_user_definition = {
  cosmos_mongo_database_id : string prop;
      (** cosmos_mongo_database_id *)
  id : string prop option; [@option]  (** id *)
  inherited_role_names : string prop list option; [@option]
      (** inherited_role_names *)
  password : string prop;  (** password *)
  username : string prop;  (** username *)
  timeouts : azurerm_cosmosdb_mongo_user_definition__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_mongo_user_definition *)

let azurerm_cosmosdb_mongo_user_definition ?id ?inherited_role_names
    ?timeouts ~cosmos_mongo_database_id ~password ~username
    __resource_id =
  let __resource_type = "azurerm_cosmosdb_mongo_user_definition" in
  let __resource =
    {
      cosmos_mongo_database_id;
      id;
      inherited_role_names;
      password;
      username;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_mongo_user_definition __resource);
  ()
