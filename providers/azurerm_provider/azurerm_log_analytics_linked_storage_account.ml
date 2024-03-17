(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_log_analytics_linked_storage_account__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_log_analytics_linked_storage_account__timeouts *)

type azurerm_log_analytics_linked_storage_account = {
  data_source_type : string prop;  (** data_source_type *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  storage_account_ids : string prop list;  (** storage_account_ids *)
  workspace_resource_id : string prop;  (** workspace_resource_id *)
  timeouts :
    azurerm_log_analytics_linked_storage_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_linked_storage_account *)

type t = {
  data_source_type : string prop;
  id : string prop;
  resource_group_name : string prop;
  storage_account_ids : string list prop;
  workspace_resource_id : string prop;
}

let azurerm_log_analytics_linked_storage_account ?id ?timeouts
    ~data_source_type ~resource_group_name ~storage_account_ids
    ~workspace_resource_id __resource_id =
  let __resource_type =
    "azurerm_log_analytics_linked_storage_account"
  in
  let __resource =
    ({
       data_source_type;
       id;
       resource_group_name;
       storage_account_ids;
       workspace_resource_id;
       timeouts;
     }
      : azurerm_log_analytics_linked_storage_account)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_log_analytics_linked_storage_account
       __resource);
  let __resource_attributes =
    ({
       data_source_type =
         Prop.computed __resource_type __resource_id
           "data_source_type";
       id = Prop.computed __resource_type __resource_id "id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       storage_account_ids =
         Prop.computed __resource_type __resource_id
           "storage_account_ids";
       workspace_resource_id =
         Prop.computed __resource_type __resource_id
           "workspace_resource_id";
     }
      : t)
  in
  __resource_attributes
