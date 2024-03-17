(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_gateway_certificate_authority__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_gateway_certificate_authority__timeouts *)

type azurerm_api_management_gateway_certificate_authority = {
  api_management_id : string;  (** api_management_id *)
  certificate_name : string;  (** certificate_name *)
  gateway_name : string;  (** gateway_name *)
  is_trusted : bool option; [@option]  (** is_trusted *)
  timeouts :
    azurerm_api_management_gateway_certificate_authority__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_api_management_gateway_certificate_authority *)

let azurerm_api_management_gateway_certificate_authority ?is_trusted
    ?timeouts ~api_management_id ~certificate_name ~gateway_name
    __resource_id =
  let __resource_type =
    "azurerm_api_management_gateway_certificate_authority"
  in
  let __resource =
    {
      api_management_id;
      certificate_name;
      gateway_name;
      is_trusted;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_gateway_certificate_authority
       __resource);
  ()
