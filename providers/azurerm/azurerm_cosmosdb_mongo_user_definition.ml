(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_cosmosdb_mongo_user_definition = {
  cosmos_mongo_database_id : string prop;
      (** cosmos_mongo_database_id *)
  id : string prop option; [@option]  (** id *)
  inherited_role_names : string prop list option; [@option]
      (** inherited_role_names *)
  password : string prop;  (** password *)
  username : string prop;  (** username *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_mongo_user_definition *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_mongo_user_definition ?id ?inherited_role_names
    ?timeouts ~cosmos_mongo_database_id ~password ~username () :
    azurerm_cosmosdb_mongo_user_definition =
  {
    cosmos_mongo_database_id;
    id;
    inherited_role_names;
    password;
    username;
    timeouts;
  }

type t = {
  cosmos_mongo_database_id : string prop;
  id : string prop;
  inherited_role_names : string list prop;
  password : string prop;
  username : string prop;
}

let register ?tf_module ?id ?inherited_role_names ?timeouts
    ~cosmos_mongo_database_id ~password ~username __resource_id =
  let __resource_type = "azurerm_cosmosdb_mongo_user_definition" in
  let __resource =
    azurerm_cosmosdb_mongo_user_definition ?id ?inherited_role_names
      ?timeouts ~cosmos_mongo_database_id ~password ~username ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cosmosdb_mongo_user_definition __resource);
  let __resource_attributes =
    ({
       cosmos_mongo_database_id =
         Prop.computed __resource_type __resource_id
           "cosmos_mongo_database_id";
       id = Prop.computed __resource_type __resource_id "id";
       inherited_role_names =
         Prop.computed __resource_type __resource_id
           "inherited_role_names";
       password =
         Prop.computed __resource_type __resource_id "password";
       username =
         Prop.computed __resource_type __resource_id "username";
     }
      : t)
  in
  __resource_attributes
