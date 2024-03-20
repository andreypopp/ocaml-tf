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

type azurerm_log_analytics_linked_storage_account = {
  data_source_type : string prop;  (** data_source_type *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  storage_account_ids : string prop list;  (** storage_account_ids *)
  workspace_resource_id : string prop;  (** workspace_resource_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_linked_storage_account *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_log_analytics_linked_storage_account ?id ?timeouts
    ~data_source_type ~resource_group_name ~storage_account_ids
    ~workspace_resource_id () :
    azurerm_log_analytics_linked_storage_account =
  {
    data_source_type;
    id;
    resource_group_name;
    storage_account_ids;
    workspace_resource_id;
    timeouts;
  }

type t = {
  data_source_type : string prop;
  id : string prop;
  resource_group_name : string prop;
  storage_account_ids : string list prop;
  workspace_resource_id : string prop;
}

let make ?id ?timeouts ~data_source_type ~resource_group_name
    ~storage_account_ids ~workspace_resource_id __id =
  let __type = "azurerm_log_analytics_linked_storage_account" in
  let __attrs =
    ({
       data_source_type =
         Prop.computed __type __id "data_source_type";
       id = Prop.computed __type __id "id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       storage_account_ids =
         Prop.computed __type __id "storage_account_ids";
       workspace_resource_id =
         Prop.computed __type __id "workspace_resource_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_log_analytics_linked_storage_account
        (azurerm_log_analytics_linked_storage_account ?id ?timeouts
           ~data_source_type ~resource_group_name
           ~storage_account_ids ~workspace_resource_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~data_source_type
    ~resource_group_name ~storage_account_ids ~workspace_resource_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~data_source_type ~resource_group_name
      ~storage_account_ids ~workspace_resource_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
