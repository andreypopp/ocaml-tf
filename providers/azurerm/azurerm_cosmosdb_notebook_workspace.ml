(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_cosmosdb_notebook_workspace = {
  account_name : string prop;  (** account_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_notebook_workspace *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_cosmosdb_notebook_workspace ?id ?timeouts ~account_name
    ~name ~resource_group_name () :
    azurerm_cosmosdb_notebook_workspace =
  { account_name; id; name; resource_group_name; timeouts }

type t = {
  account_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  server_endpoint : string prop;
}

let make ?id ?timeouts ~account_name ~name ~resource_group_name __id
    =
  let __type = "azurerm_cosmosdb_notebook_workspace" in
  let __attrs =
    ({
       account_name = Prop.computed __type __id "account_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       server_endpoint = Prop.computed __type __id "server_endpoint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_notebook_workspace
        (azurerm_cosmosdb_notebook_workspace ?id ?timeouts
           ~account_name ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~account_name ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~account_name ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
