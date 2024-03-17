(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_gateway_custom_domain__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_gateway_custom_domain__timeouts *)

type azurerm_spring_cloud_gateway_custom_domain = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  spring_cloud_gateway_id : string;  (** spring_cloud_gateway_id *)
  thumbprint : string option; [@option]  (** thumbprint *)
  timeouts :
    azurerm_spring_cloud_gateway_custom_domain__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_gateway_custom_domain *)

let azurerm_spring_cloud_gateway_custom_domain ?id ?thumbprint
    ?timeouts ~name ~spring_cloud_gateway_id __resource_id =
  let __resource_type =
    "azurerm_spring_cloud_gateway_custom_domain"
  in
  let __resource =
    { id; name; spring_cloud_gateway_id; thumbprint; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_gateway_custom_domain __resource);
  ()
