(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_databricks_workspace_customer_managed_key__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_databricks_workspace_customer_managed_key__timeouts *)

type azurerm_databricks_workspace_customer_managed_key = {
  id : string prop option; [@option]  (** id *)
  key_vault_key_id : string prop;  (** key_vault_key_id *)
  workspace_id : string prop;  (** workspace_id *)
  timeouts :
    azurerm_databricks_workspace_customer_managed_key__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_databricks_workspace_customer_managed_key *)

let azurerm_databricks_workspace_customer_managed_key ?id ?timeouts
    ~key_vault_key_id ~workspace_id __resource_id =
  let __resource_type =
    "azurerm_databricks_workspace_customer_managed_key"
  in
  let __resource =
    { id; key_vault_key_id; workspace_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_databricks_workspace_customer_managed_key
       __resource);
  ()
