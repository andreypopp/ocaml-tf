(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_private_endpoint_application_security_group_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_private_endpoint_application_security_group_association__timeouts *)

type azurerm_private_endpoint_application_security_group_association = {
  application_security_group_id : string;
      (** application_security_group_id *)
  id : string option; [@option]  (** id *)
  private_endpoint_id : string;  (** private_endpoint_id *)
  timeouts :
    azurerm_private_endpoint_application_security_group_association__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_private_endpoint_application_security_group_association *)

let azurerm_private_endpoint_application_security_group_association
    ?id ?timeouts ~application_security_group_id ~private_endpoint_id
    __resource_id =
  let __resource_type =
    "azurerm_private_endpoint_application_security_group_association"
  in
  let __resource =
    {
      application_security_group_id;
      id;
      private_endpoint_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_private_endpoint_application_security_group_association
       __resource);
  ()
