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

type azurerm_cosmosdb_sql_role_assignment = {
  account_name : string prop;  (** account_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  principal_id : string prop;  (** principal_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  role_definition_id : string prop;  (** role_definition_id *)
  scope : string prop;  (** scope *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_role_assignment *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_sql_role_assignment ?id ?name ?timeouts
    ~account_name ~principal_id ~resource_group_name
    ~role_definition_id ~scope () :
    azurerm_cosmosdb_sql_role_assignment =
  {
    account_name;
    id;
    name;
    principal_id;
    resource_group_name;
    role_definition_id;
    scope;
    timeouts;
  }

type t = {
  account_name : string prop;
  id : string prop;
  name : string prop;
  principal_id : string prop;
  resource_group_name : string prop;
  role_definition_id : string prop;
  scope : string prop;
}

let make ?id ?name ?timeouts ~account_name ~principal_id
    ~resource_group_name ~role_definition_id ~scope __id =
  let __type = "azurerm_cosmosdb_sql_role_assignment" in
  let __attrs =
    ({
       account_name = Prop.computed __type __id "account_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       principal_id = Prop.computed __type __id "principal_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       role_definition_id =
         Prop.computed __type __id "role_definition_id";
       scope = Prop.computed __type __id "scope";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_sql_role_assignment
        (azurerm_cosmosdb_sql_role_assignment ?id ?name ?timeouts
           ~account_name ~principal_id ~resource_group_name
           ~role_definition_id ~scope ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?timeouts ~account_name
    ~principal_id ~resource_group_name ~role_definition_id ~scope
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?timeouts ~account_name ~principal_id
      ~resource_group_name ~role_definition_id ~scope __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
