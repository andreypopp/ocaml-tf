(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type privilege__resource = {
  collection_name : string prop option; [@option]
      (** collection_name *)
  db_name : string prop option; [@option]  (** db_name *)
}
[@@deriving yojson_of]
(** privilege__resource *)

type privilege = {
  actions : string prop list;  (** actions *)
  resource : privilege__resource list;
}
[@@deriving yojson_of]
(** privilege *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_cosmosdb_mongo_role_definition = {
  cosmos_mongo_database_id : string prop;
      (** cosmos_mongo_database_id *)
  id : string prop option; [@option]  (** id *)
  inherited_role_names : string prop list option; [@option]
      (** inherited_role_names *)
  role_name : string prop;  (** role_name *)
  privilege : privilege list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_mongo_role_definition *)

let privilege__resource ?collection_name ?db_name () :
    privilege__resource =
  { collection_name; db_name }

let privilege ~actions ~resource () : privilege =
  { actions; resource }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_mongo_role_definition ?id ?inherited_role_names
    ?timeouts ~cosmos_mongo_database_id ~role_name ~privilege () :
    azurerm_cosmosdb_mongo_role_definition =
  {
    cosmos_mongo_database_id;
    id;
    inherited_role_names;
    role_name;
    privilege;
    timeouts;
  }

type t = {
  cosmos_mongo_database_id : string prop;
  id : string prop;
  inherited_role_names : string list prop;
  role_name : string prop;
}

let make ?id ?inherited_role_names ?timeouts
    ~cosmos_mongo_database_id ~role_name ~privilege __id =
  let __type = "azurerm_cosmosdb_mongo_role_definition" in
  let __attrs =
    ({
       cosmos_mongo_database_id =
         Prop.computed __type __id "cosmos_mongo_database_id";
       id = Prop.computed __type __id "id";
       inherited_role_names =
         Prop.computed __type __id "inherited_role_names";
       role_name = Prop.computed __type __id "role_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_mongo_role_definition
        (azurerm_cosmosdb_mongo_role_definition ?id
           ?inherited_role_names ?timeouts ~cosmos_mongo_database_id
           ~role_name ~privilege ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?inherited_role_names ?timeouts
    ~cosmos_mongo_database_id ~role_name ~privilege __id =
  let (r : _ Tf_core.resource) =
    make ?id ?inherited_role_names ?timeouts
      ~cosmos_mongo_database_id ~role_name ~privilege __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
