(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_container_app_custom_domain__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_container_app_custom_domain__timeouts *)

type azurerm_container_app_custom_domain = {
  certificate_binding_type : string;
      (** The Binding type. Possible values include `Disabled` and `SniEnabled`. *)
  container_app_environment_certificate_id : string;
      (** container_app_environment_certificate_id *)
  container_app_id : string;  (** container_app_id *)
  name : string;
      (** The hostname of the Certificate. Must be the CN or a named SAN in the certificate. *)
  timeouts : azurerm_container_app_custom_domain__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_app_custom_domain *)

let azurerm_container_app_custom_domain ?timeouts
    ~certificate_binding_type
    ~container_app_environment_certificate_id ~container_app_id ~name
    __resource_id =
  let __resource_type = "azurerm_container_app_custom_domain" in
  let __resource =
    {
      certificate_binding_type;
      container_app_environment_certificate_id;
      container_app_id;
      name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_container_app_custom_domain __resource);
  ()
