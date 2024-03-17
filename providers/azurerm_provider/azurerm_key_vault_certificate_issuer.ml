(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_key_vault_certificate_issuer__admin = {
  email_address : string;  (** email_address *)
  first_name : string option; [@option]  (** first_name *)
  last_name : string option; [@option]  (** last_name *)
  phone : string option; [@option]  (** phone *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate_issuer__admin *)

type azurerm_key_vault_certificate_issuer__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate_issuer__timeouts *)

type azurerm_key_vault_certificate_issuer = {
  account_id : string option; [@option]  (** account_id *)
  key_vault_id : string;  (** key_vault_id *)
  name : string;  (** name *)
  org_id : string option; [@option]  (** org_id *)
  password : string option; [@option]  (** password *)
  provider_name : string;  (** provider_name *)
  admin : azurerm_key_vault_certificate_issuer__admin list;
  timeouts : azurerm_key_vault_certificate_issuer__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate_issuer *)

let azurerm_key_vault_certificate_issuer ?account_id ?org_id
    ?password ?timeouts ~key_vault_id ~name ~provider_name ~admin
    __resource_id =
  let __resource_type = "azurerm_key_vault_certificate_issuer" in
  let __resource =
    {
      account_id;
      key_vault_id;
      name;
      org_id;
      password;
      provider_name;
      admin;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_key_vault_certificate_issuer __resource);
  ()
