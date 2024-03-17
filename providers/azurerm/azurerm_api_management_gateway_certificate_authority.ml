(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_gateway_certificate_authority__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_gateway_certificate_authority__timeouts *)

type azurerm_api_management_gateway_certificate_authority = {
  api_management_id : string prop;  (** api_management_id *)
  certificate_name : string prop;  (** certificate_name *)
  gateway_name : string prop;  (** gateway_name *)
  id : string prop option; [@option]  (** id *)
  is_trusted : bool prop option; [@option]  (** is_trusted *)
  timeouts :
    azurerm_api_management_gateway_certificate_authority__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_api_management_gateway_certificate_authority *)

type t = {
  api_management_id : string prop;
  certificate_name : string prop;
  gateway_name : string prop;
  id : string prop;
  is_trusted : bool prop;
}

let azurerm_api_management_gateway_certificate_authority ?id
    ?is_trusted ?timeouts ~api_management_id ~certificate_name
    ~gateway_name __resource_id =
  let __resource_type =
    "azurerm_api_management_gateway_certificate_authority"
  in
  let __resource =
    ({
       api_management_id;
       certificate_name;
       gateway_name;
       id;
       is_trusted;
       timeouts;
     }
      : azurerm_api_management_gateway_certificate_authority)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_gateway_certificate_authority
       __resource);
  let __resource_attributes =
    ({
       api_management_id =
         Prop.computed __resource_type __resource_id
           "api_management_id";
       certificate_name =
         Prop.computed __resource_type __resource_id
           "certificate_name";
       gateway_name =
         Prop.computed __resource_type __resource_id "gateway_name";
       id = Prop.computed __resource_type __resource_id "id";
       is_trusted =
         Prop.computed __resource_type __resource_id "is_trusted";
     }
      : t)
  in
  __resource_attributes
