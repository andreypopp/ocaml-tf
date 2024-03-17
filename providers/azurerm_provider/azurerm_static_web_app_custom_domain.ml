(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_static_web_app_custom_domain__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_static_web_app_custom_domain__timeouts *)

type azurerm_static_web_app_custom_domain = {
  domain_name : string;  (** domain_name *)
  static_web_app_id : string;  (** static_web_app_id *)
  validation_type : string;  (** validation_type *)
  timeouts : azurerm_static_web_app_custom_domain__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_static_web_app_custom_domain *)

let azurerm_static_web_app_custom_domain ?timeouts ~domain_name
    ~static_web_app_id ~validation_type __resource_id =
  let __resource_type = "azurerm_static_web_app_custom_domain" in
  let __resource =
    { domain_name; static_web_app_id; validation_type; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_static_web_app_custom_domain __resource);
  ()
