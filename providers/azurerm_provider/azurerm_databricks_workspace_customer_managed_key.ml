(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_databricks_workspace_customer_managed_key__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_databricks_workspace_customer_managed_key__timeouts *)

type azurerm_databricks_workspace_customer_managed_key = {
  key_vault_key_id : string;  (** key_vault_key_id *)
  workspace_id : string;  (** workspace_id *)
  timeouts :
    azurerm_databricks_workspace_customer_managed_key__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_databricks_workspace_customer_managed_key *)

let azurerm_databricks_workspace_customer_managed_key ?timeouts
    ~key_vault_key_id ~workspace_id __resource_id =
  let __resource_type =
    "azurerm_databricks_workspace_customer_managed_key"
  in
  let __resource = { key_vault_key_id; workspace_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_databricks_workspace_customer_managed_key
       __resource);
  ()
