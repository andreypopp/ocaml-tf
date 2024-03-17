(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_key_vault_certificate_contacts__contact = {
  email : string;  (** email *)
  name : string option; [@option]  (** name *)
  phone : string option; [@option]  (** phone *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate_contacts__contact *)

type azurerm_key_vault_certificate_contacts__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate_contacts__timeouts *)

type azurerm_key_vault_certificate_contacts = {
  id : string option; [@option]  (** id *)
  key_vault_id : string;  (** key_vault_id *)
  contact : azurerm_key_vault_certificate_contacts__contact list;
  timeouts : azurerm_key_vault_certificate_contacts__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate_contacts *)

let azurerm_key_vault_certificate_contacts ?id ?timeouts
    ~key_vault_id ~contact __resource_id =
  let __resource_type = "azurerm_key_vault_certificate_contacts" in
  let __resource = { id; key_vault_id; contact; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_key_vault_certificate_contacts __resource);
  ()
