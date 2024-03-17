(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_container_registry_token_password__password1 = {
  expiry : string prop option; [@option]  (** expiry *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_token_password__password1 *)

type azurerm_container_registry_token_password__password2 = {
  expiry : string prop option; [@option]  (** expiry *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_token_password__password2 *)

type azurerm_container_registry_token_password__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_token_password__timeouts *)

type azurerm_container_registry_token_password = {
  container_registry_token_id : string prop;
      (** container_registry_token_id *)
  id : string prop option; [@option]  (** id *)
  password1 :
    azurerm_container_registry_token_password__password1 list;
  password2 :
    azurerm_container_registry_token_password__password2 list;
  timeouts :
    azurerm_container_registry_token_password__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_registry_token_password *)

let azurerm_container_registry_token_password ?id ?timeouts
    ~container_registry_token_id ~password1 ~password2 __resource_id
    =
  let __resource_type =
    "azurerm_container_registry_token_password"
  in
  let __resource =
    {
      container_registry_token_id;
      id;
      password1;
      password2;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_container_registry_token_password __resource);
  ()
