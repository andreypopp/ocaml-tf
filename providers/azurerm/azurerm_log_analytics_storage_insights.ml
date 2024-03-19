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

let register ?tf_module ?blob_container_names ?id ?table_names
    ?timeouts ~name ~resource_group_name ~storage_account_id
    ~storage_account_key ~workspace_id __resource_id =
  let __resource_type = "azurerm_log_analytics_storage_insights" in
  let __resource =
    azurerm_log_analytics_storage_insights ?blob_container_names ?id
      ?table_names ?timeouts ~name ~resource_group_name
      ~storage_account_id ~storage_account_key ~workspace_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_log_analytics_storage_insights __resource);
  let __resource_attributes =
    ({
       blob_container_names =
         Prop.computed __resource_type __resource_id
           "blob_container_names";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       storage_account_id =
         Prop.computed __resource_type __resource_id
           "storage_account_id";
       storage_account_key =
         Prop.computed __resource_type __resource_id
           "storage_account_key";
       table_names =
         Prop.computed __resource_type __resource_id "table_names";
       workspace_id =
         Prop.computed __resource_type __resource_id "workspace_id";
     }
      : t)
  in
  __resource_attributes
