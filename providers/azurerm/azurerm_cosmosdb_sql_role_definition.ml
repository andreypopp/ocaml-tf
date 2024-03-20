(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type permissions = {
  data_actions : string prop list;  (** data_actions *)
}
[@@deriving yojson_of]
(** permissions *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_cosmosdb_sql_role_definition = {
  account_name : string prop;  (** account_name *)
  assignable_scopes : string prop list;  (** assignable_scopes *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  role_definition_id : string prop option; [@option]
      (** role_definition_id *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  permissions : permissions list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_role_definition *)

let permissions ~data_actions () : permissions = { data_actions }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_sql_role_definition ?id ?role_definition_id
    ?type_ ?timeouts ~account_name ~assignable_scopes ~name
    ~resource_group_name ~permissions () :
    azurerm_cosmosdb_sql_role_definition =
  {
    account_name;
    assignable_scopes;
    id;
    name;
    resource_group_name;
    role_definition_id;
    type_;
    permissions;
    timeouts;
  }

type t = {
  account_name : string prop;
  assignable_scopes : string list prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  role_definition_id : string prop;
  type_ : string prop;
}

let make ?id ?role_definition_id ?type_ ?timeouts ~account_name
    ~assignable_scopes ~name ~resource_group_name ~permissions __id =
  let __type = "azurerm_cosmosdb_sql_role_definition" in
  let __attrs =
    ({
       account_name = Prop.computed __type __id "account_name";
       assignable_scopes =
         Prop.computed __type __id "assignable_scopes";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       role_definition_id =
         Prop.computed __type __id "role_definition_id";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_sql_role_definition
        (azurerm_cosmosdb_sql_role_definition ?id ?role_definition_id
           ?type_ ?timeouts ~account_name ~assignable_scopes ~name
           ~resource_group_name ~permissions ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?role_definition_id ?type_ ?timeouts
    ~account_name ~assignable_scopes ~name ~resource_group_name
    ~permissions __id =
  let (r : _ Tf_core.resource) =
    make ?id ?role_definition_id ?type_ ?timeouts ~account_name
      ~assignable_scopes ~name ~resource_group_name ~permissions __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
