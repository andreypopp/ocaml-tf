(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_encryption_scope__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_encryption_scope__timeouts *)

type azurerm_storage_encryption_scope = {
  id : string prop option; [@option]  (** id *)
  infrastructure_encryption_required : bool prop option; [@option]
      (** infrastructure_encryption_required *)
  key_vault_key_id : string prop option; [@option]
      (** key_vault_key_id *)
  name : string prop;  (** name *)
  source : string prop;  (** source *)
  storage_account_id : string prop;  (** storage_account_id *)
  timeouts : azurerm_storage_encryption_scope__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_encryption_scope *)

let azurerm_storage_encryption_scope ?id
    ?infrastructure_encryption_required ?key_vault_key_id ?timeouts
    ~name ~source ~storage_account_id __resource_id =
  let __resource_type = "azurerm_storage_encryption_scope" in
  let __resource =
    {
      id;
      infrastructure_encryption_required;
      key_vault_key_id;
      name;
      source;
      storage_account_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_encryption_scope __resource);
  ()
