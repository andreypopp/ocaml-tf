(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_log_analytics_storage_insights__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_storage_insights__timeouts *)

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
  timeouts : azurerm_log_analytics_storage_insights__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_storage_insights *)

let azurerm_log_analytics_storage_insights ?blob_container_names ?id
    ?table_names ?timeouts ~name ~resource_group_name
    ~storage_account_id ~storage_account_key ~workspace_id
    __resource_id =
  let __resource_type = "azurerm_log_analytics_storage_insights" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_log_analytics_storage_insights __resource);
  ()
