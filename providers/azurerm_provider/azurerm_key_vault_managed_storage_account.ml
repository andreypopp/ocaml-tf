(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_key_vault_managed_storage_account__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_managed_storage_account__timeouts *)

type azurerm_key_vault_managed_storage_account = {
  id : string prop option; [@option]  (** id *)
  key_vault_id : string prop;  (** key_vault_id *)
  name : string prop;  (** name *)
  regenerate_key_automatically : bool prop option; [@option]
      (** regenerate_key_automatically *)
  regeneration_period : string prop option; [@option]
      (** regeneration_period *)
  storage_account_id : string prop;  (** storage_account_id *)
  storage_account_key : string prop;  (** storage_account_key *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts :
    azurerm_key_vault_managed_storage_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_managed_storage_account *)

let azurerm_key_vault_managed_storage_account ?id
    ?regenerate_key_automatically ?regeneration_period ?tags
    ?timeouts ~key_vault_id ~name ~storage_account_id
    ~storage_account_key __resource_id =
  let __resource_type =
    "azurerm_key_vault_managed_storage_account"
  in
  let __resource =
    {
      id;
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
