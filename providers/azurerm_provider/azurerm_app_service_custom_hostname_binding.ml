(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_app_service_custom_hostname_binding__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_app_service_custom_hostname_binding__timeouts *)

type azurerm_app_service_custom_hostname_binding = {
  app_service_name : string;  (** app_service_name *)
  hostname : string;  (** hostname *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts :
    azurerm_app_service_custom_hostname_binding__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_custom_hostname_binding *)

let azurerm_app_service_custom_hostname_binding ?timeouts
    ~app_service_name ~hostname ~resource_group_name __resource_id =
  let __resource_type =
    "azurerm_app_service_custom_hostname_binding"
  in
  let __resource =
    { app_service_name; hostname; resource_group_name; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_custom_hostname_binding __resource);
  ()
