(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_cognitive_account_customer_managed_key__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cognitive_account_customer_managed_key__timeouts *)

type azurerm_cognitive_account_customer_managed_key = {
  cognitive_account_id : string;  (** cognitive_account_id *)
  identity_client_id : string option; [@option]
      (** identity_client_id *)
  key_vault_key_id : string;  (** key_vault_key_id *)
  timeouts :
    azurerm_cognitive_account_customer_managed_key__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cognitive_account_customer_managed_key *)

let azurerm_cognitive_account_customer_managed_key
    ?identity_client_id ?timeouts ~cognitive_account_id
    ~key_vault_key_id __resource_id =
  let __resource_type =
    "azurerm_cognitive_account_customer_managed_key"
  in
  let __resource =
    {
      cognitive_account_id;
      identity_client_id;
      key_vault_key_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cognitive_account_customer_managed_key
       __resource);
  ()
