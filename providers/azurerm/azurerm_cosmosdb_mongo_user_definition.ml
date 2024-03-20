(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?inherited_role_names ?timeouts
    ~cosmos_mongo_database_id ~password ~username __id =
  let __type = "azurerm_cosmosdb_mongo_user_definition" in
  let __attrs =
    ({
       cosmos_mongo_database_id =
         Prop.computed __type __id "cosmos_mongo_database_id";
       id = Prop.computed __type __id "id";
       inherited_role_names =
         Prop.computed __type __id "inherited_role_names";
       password = Prop.computed __type __id "password";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_mongo_user_definition
        (azurerm_cosmosdb_mongo_user_definition ?id
           ?inherited_role_names ?timeouts ~cosmos_mongo_database_id
           ~password ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?inherited_role_names ?timeouts
    ~cosmos_mongo_database_id ~password ~username __id =
  let (r : _ Tf_core.resource) =
    make ?id ?inherited_role_names ?timeouts
      ~cosmos_mongo_database_id ~password ~username __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
