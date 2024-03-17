(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_log_analytics_linked_storage_account__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_linked_storage_account__timeouts *)

type azurerm_log_analytics_linked_storage_account = {
  data_source_type : string;  (** data_source_type *)
  resource_group_name : string;  (** resource_group_name *)
  storage_account_ids : string list;  (** storage_account_ids *)
  workspace_resource_id : string;  (** workspace_resource_id *)
  timeouts :
    azurerm_log_analytics_linked_storage_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_linked_storage_account *)

let azurerm_log_analytics_linked_storage_account ?timeouts
    ~data_source_type ~resource_group_name ~storage_account_ids
    ~workspace_resource_id __resource_id =
  let __resource_type =
    "azurerm_log_analytics_linked_storage_account"
  in
  let __resource =
    {
      data_source_type;
      resource_group_name;
      storage_account_ids;
      workspace_resource_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_log_analytics_linked_storage_account
       __resource);
  ()
