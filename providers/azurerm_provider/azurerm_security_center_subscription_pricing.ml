(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_security_center_subscription_pricing__extension = {
  additional_extension_properties : (string * string) list option;
      [@option]
      (** additional_extension_properties *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_security_center_subscription_pricing__extension *)

type azurerm_security_center_subscription_pricing__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_security_center_subscription_pricing__timeouts *)

type azurerm_security_center_subscription_pricing = {
  resource_type : string option; [@option]  (** resource_type *)
  subplan : string option; [@option]  (** subplan *)
  tier : string;  (** tier *)
  extension :
    azurerm_security_center_subscription_pricing__extension list;
  timeouts :
    azurerm_security_center_subscription_pricing__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_security_center_subscription_pricing *)

let azurerm_security_center_subscription_pricing ?resource_type
    ?subplan ?timeouts ~tier ~extension __resource_id =
  let __resource_type =
    "azurerm_security_center_subscription_pricing"
  in
  let __resource =
    { resource_type; subplan; tier; extension; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_security_center_subscription_pricing
       __resource);
  ()
