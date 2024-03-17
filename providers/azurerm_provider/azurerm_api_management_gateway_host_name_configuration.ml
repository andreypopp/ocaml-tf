(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_gateway_host_name_configuration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_gateway_host_name_configuration__timeouts *)

type azurerm_api_management_gateway_host_name_configuration = {
  api_management_id : string;  (** api_management_id *)
  certificate_id : string;  (** certificate_id *)
  gateway_name : string;  (** gateway_name *)
  host_name : string;  (** host_name *)
  http2_enabled : bool option; [@option]  (** http2_enabled *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  request_client_certificate_enabled : bool option; [@option]
      (** request_client_certificate_enabled *)
  tls10_enabled : bool option; [@option]  (** tls10_enabled *)
  tls11_enabled : bool option; [@option]  (** tls11_enabled *)
  timeouts :
    azurerm_api_management_gateway_host_name_configuration__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_api_management_gateway_host_name_configuration *)

let azurerm_api_management_gateway_host_name_configuration
    ?http2_enabled ?id ?request_client_certificate_enabled
    ?tls10_enabled ?tls11_enabled ?timeouts ~api_management_id
    ~certificate_id ~gateway_name ~host_name ~name __resource_id =
  let __resource_type =
    "azurerm_api_management_gateway_host_name_configuration"
  in
  let __resource =
    {
      api_management_id;
      certificate_id;
      gateway_name;
      host_name;
      http2_enabled;
      id;
      name;
      request_client_certificate_enabled;
      tls10_enabled;
      tls11_enabled;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_gateway_host_name_configuration
       __resource);
  ()
