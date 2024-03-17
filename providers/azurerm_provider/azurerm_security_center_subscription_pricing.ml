(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_security_center_subscription_pricing__extension = {
  additional_extension_properties :
    (string * string prop) list option;
      [@option]
      (** additional_extension_properties *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_security_center_subscription_pricing__extension *)

type azurerm_security_center_subscription_pricing__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_security_center_subscription_pricing__timeouts *)

type azurerm_security_center_subscription_pricing = {
  id : string prop option; [@option]  (** id *)
  resource_type : string prop option; [@option]  (** resource_type *)
  subplan : string prop option; [@option]  (** subplan *)
  tier : string prop;  (** tier *)
  extension :
    azurerm_security_center_subscription_pricing__extension list;
  timeouts :
    azurerm_security_center_subscription_pricing__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_security_center_subscription_pricing *)

let azurerm_security_center_subscription_pricing ?id ?resource_type
    ?subplan ?timeouts ~tier ~extension __resource_id =
  let __resource_type =
    "azurerm_security_center_subscription_pricing"
  in
  let __resource =
    { id; resource_type; subplan; tier; extension; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_security_center_subscription_pricing
       __resource);
  ()
