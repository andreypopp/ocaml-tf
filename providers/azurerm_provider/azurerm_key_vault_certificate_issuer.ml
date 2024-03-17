(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_key_vault_certificate_issuer__admin = {
  email_address : string prop;  (** email_address *)
  first_name : string prop option; [@option]  (** first_name *)
  last_name : string prop option; [@option]  (** last_name *)
  phone : string prop option; [@option]  (** phone *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate_issuer__admin *)

type azurerm_key_vault_certificate_issuer__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate_issuer__timeouts *)

type azurerm_key_vault_certificate_issuer = {
  account_id : string prop option; [@option]  (** account_id *)
  id : string prop option; [@option]  (** id *)
  key_vault_id : string prop;  (** key_vault_id *)
  name : string prop;  (** name *)
  org_id : string prop option; [@option]  (** org_id *)
  password : string prop option; [@option]  (** password *)
  provider_name : string prop;  (** provider_name *)
  admin : azurerm_key_vault_certificate_issuer__admin list;
  timeouts : azurerm_key_vault_certificate_issuer__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate_issuer *)

type t = {
  account_id : string prop;
  id : string prop;
  key_vault_id : string prop;
  name : string prop;
  org_id : string prop;
  password : string prop;
  provider_name : string prop;
}

let azurerm_key_vault_certificate_issuer ?account_id ?id ?org_id
    ?password ?timeouts ~key_vault_id ~name ~provider_name ~admin
    __resource_id =
  let __resource_type = "azurerm_key_vault_certificate_issuer" in
  let __resource =
    ({
       account_id;
       id;
       key_vault_id;
       name;
       org_id;
       password;
       provider_name;
       admin;
       timeouts;
     }
      : azurerm_key_vault_certificate_issuer)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_key_vault_certificate_issuer __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       id = Prop.computed __resource_type __resource_id "id";
       key_vault_id =
         Prop.computed __resource_type __resource_id "key_vault_id";
       name = Prop.computed __resource_type __resource_id "name";
       org_id = Prop.computed __resource_type __resource_id "org_id";
       password =
         Prop.computed __resource_type __resource_id "password";
       provider_name =
         Prop.computed __resource_type __resource_id "provider_name";
     }
      : t)
  in
  __resource_attributes
