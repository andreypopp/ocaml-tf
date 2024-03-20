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

type azurerm_log_analytics_storage_insights = {
  blob_container_names : string prop list option; [@option]
      (** blob_container_names *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  storage_account_id : string prop;  (** storage_account_id *)
  storage_account_key : string prop;  (** storage_account_key *)
  table_names : string prop list option; [@option]
      (** table_names *)
  workspace_id : string prop;  (** workspace_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_storage_insights *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_log_analytics_storage_insights ?blob_container_names ?id
    ?table_names ?timeouts ~name ~resource_group_name
    ~storage_account_id ~storage_account_key ~workspace_id () :
    azurerm_log_analytics_storage_insights =
  {
    blob_container_names;
    id;
    name;
    resource_group_name;
    storage_account_id;
    storage_account_key;
    table_names;
    workspace_id;
    timeouts;
  }

type t = {
  blob_container_names : string list prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  storage_account_id : string prop;
  storage_account_key : string prop;
  table_names : string list prop;
  workspace_id : string prop;
}

let make ?blob_container_names ?id ?table_names ?timeouts ~name
    ~resource_group_name ~storage_account_id ~storage_account_key
    ~workspace_id __id =
  let __type = "azurerm_log_analytics_storage_insights" in
  let __attrs =
    ({
       blob_container_names =
         Prop.computed __type __id "blob_container_names";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
       storage_account_key =
         Prop.computed __type __id "storage_account_key";
       table_names = Prop.computed __type __id "table_names";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_log_analytics_storage_insights
        (azurerm_log_analytics_storage_insights ?blob_container_names
           ?id ?table_names ?timeouts ~name ~resource_group_name
           ~storage_account_id ~storage_account_key ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?blob_container_names ?id ?table_names
    ?timeouts ~name ~resource_group_name ~storage_account_id
    ~storage_account_key ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?blob_container_names ?id ?table_names ?timeouts ~name
      ~resource_group_name ~storage_account_id ~storage_account_key
      ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
