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

type t = {
  id : string prop;
  key_vault_id : string prop;
  name : string prop;
  regenerate_key_automatically : bool prop;
  regeneration_period : string prop;
  storage_account_id : string prop;
  storage_account_key : string prop;
  tags : (string * string) list prop;
}

let azurerm_key_vault_managed_storage_account ?id
    ?regenerate_key_automatically ?regeneration_period ?tags
    ?timeouts ~key_vault_id ~name ~storage_account_id
    ~storage_account_key __resource_id =
  let __resource_type =
    "azurerm_key_vault_managed_storage_account"
  in
  let __resource =
    ({
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
      : azurerm_key_vault_managed_storage_account)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_key_vault_managed_storage_account __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       key_vault_id =
         Prop.computed __resource_type __resource_id "key_vault_id";
       name = Prop.computed __resource_type __resource_id "name";
       regenerate_key_automatically =
         Prop.computed __resource_type __resource_id
           "regenerate_key_automatically";
       regeneration_period =
         Prop.computed __resource_type __resource_id
           "regeneration_period";
       storage_account_id =
         Prop.computed __resource_type __resource_id
           "storage_account_id";
       storage_account_key =
         Prop.computed __resource_type __resource_id
           "storage_account_key";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
