(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_interface_application_security_group_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_network_interface_application_security_group_association__timeouts *)

type azurerm_network_interface_application_security_group_association = {
  application_security_group_id : string prop;
      (** application_security_group_id *)
  id : string prop option; [@option]  (** id *)
  network_interface_id : string prop;  (** network_interface_id *)
  timeouts :
    azurerm_network_interface_application_security_group_association__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_network_interface_application_security_group_association *)

let azurerm_network_interface_application_security_group_association
    ?id ?timeouts ~application_security_group_id
    ~network_interface_id __resource_id =
  let __resource_type =
    "azurerm_network_interface_application_security_group_association"
  in
  let __resource =
    {
      application_security_group_id;
      id;
      network_interface_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_interface_application_security_group_association
       __resource);
  ()
