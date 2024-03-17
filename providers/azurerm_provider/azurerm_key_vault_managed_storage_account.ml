(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_key_vault_managed_storage_account__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_managed_storage_account__timeouts *)

type azurerm_key_vault_managed_storage_account = {
  key_vault_id : string;  (** key_vault_id *)
  name : string;  (** name *)
  regenerate_key_automatically : bool option; [@option]
      (** regenerate_key_automatically *)
  regeneration_period : string option; [@option]
      (** regeneration_period *)
  storage_account_id : string;  (** storage_account_id *)
  storage_account_key : string;  (** storage_account_key *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts :
    azurerm_key_vault_managed_storage_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_managed_storage_account *)

let azurerm_key_vault_managed_storage_account
    ?regenerate_key_automatically ?regeneration_period ?tags
    ?timeouts ~key_vault_id ~name ~storage_account_id
    ~storage_account_key __resource_id =
  let __resource_type =
    "azurerm_key_vault_managed_storage_account"
  in
  let __resource =
    {
      key_vault_id;
      name;
      regenerate_key_automatically;
      regeneration_period;
      storage_account_id;
      storage_account_key;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_key_vault_managed_storage_account __resource);
  ()
