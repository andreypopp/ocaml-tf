(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_log_analytics_storage_insights__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_storage_insights__timeouts *)

type azurerm_log_analytics_storage_insights = {
  blob_container_names : string list option; [@option]
      (** blob_container_names *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  storage_account_id : string;  (** storage_account_id *)
  storage_account_key : string;  (** storage_account_key *)
  table_names : string list option; [@option]  (** table_names *)
  workspace_id : string;  (** workspace_id *)
  timeouts : azurerm_log_analytics_storage_insights__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_storage_insights *)

let azurerm_log_analytics_storage_insights ?blob_container_names
    ?table_names ?timeouts ~name ~resource_group_name
    ~storage_account_id ~storage_account_key ~workspace_id
    __resource_id =
  let __resource_type = "azurerm_log_analytics_storage_insights" in
  let __resource =
    {
      blob_container_names;
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
