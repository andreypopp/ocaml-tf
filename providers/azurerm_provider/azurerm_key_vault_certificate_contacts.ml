(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_key_vault_certificate_contacts__contact = {
  email : string prop;  (** email *)
  name : string prop option; [@option]  (** name *)
  phone : string prop option; [@option]  (** phone *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate_contacts__contact *)

type azurerm_key_vault_certificate_contacts__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate_contacts__timeouts *)

type azurerm_key_vault_certificate_contacts = {
  id : string prop option; [@option]  (** id *)
  key_vault_id : string prop;  (** key_vault_id *)
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
