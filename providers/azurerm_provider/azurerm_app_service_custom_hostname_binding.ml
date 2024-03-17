(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_app_service_custom_hostname_binding__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_app_service_custom_hostname_binding__timeouts *)

type azurerm_app_service_custom_hostname_binding = {
  app_service_name : string prop;  (** app_service_name *)
  hostname : string prop;  (** hostname *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  ssl_state : string prop option; [@option]  (** ssl_state *)
  thumbprint : string prop option; [@option]  (** thumbprint *)
  timeouts :
    azurerm_app_service_custom_hostname_binding__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_custom_hostname_binding *)

let azurerm_app_service_custom_hostname_binding ?id ?ssl_state
    ?thumbprint ?timeouts ~app_service_name ~hostname
    ~resource_group_name __resource_id =
  let __resource_type =
    "azurerm_app_service_custom_hostname_binding"
  in
  let __resource =
    {
      app_service_name;
      hostname;
      id;
      resource_group_name;
      ssl_state;
      thumbprint;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_custom_hostname_binding __resource);
  ()
