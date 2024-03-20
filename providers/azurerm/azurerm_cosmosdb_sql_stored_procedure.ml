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

type azurerm_cosmosdb_sql_stored_procedure = {
  account_name : string prop;  (** account_name *)
  body : string prop;  (** body *)
  container_name : string prop;  (** container_name *)
  database_name : string prop;  (** database_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_stored_procedure *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_sql_stored_procedure ?id ?timeouts ~account_name
    ~body ~container_name ~database_name ~name ~resource_group_name
    () : azurerm_cosmosdb_sql_stored_procedure =
  {
    account_name;
    body;
    container_name;
    database_name;
    id;
    name;
    resource_group_name;
    timeouts;
  }

type t = {
  account_name : string prop;
  body : string prop;
  container_name : string prop;
  database_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~account_name ~body ~container_name
    ~database_name ~name ~resource_group_name __id =
  let __type = "azurerm_cosmosdb_sql_stored_procedure" in
  let __attrs =
    ({
       account_name = Prop.computed __type __id "account_name";
       body = Prop.computed __type __id "body";
       container_name = Prop.computed __type __id "container_name";
       database_name = Prop.computed __type __id "database_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_sql_stored_procedure
        (azurerm_cosmosdb_sql_stored_procedure ?id ?timeouts
           ~account_name ~body ~container_name ~database_name ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~account_name ~body
    ~container_name ~database_name ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~account_name ~body ~container_name
      ~database_name ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
