(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_interface_security_group_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_network_interface_security_group_association__timeouts *)

type azurerm_network_interface_security_group_association = {
  id : string prop option; [@option]  (** id *)
  network_interface_id : string prop;  (** network_interface_id *)
  network_security_group_id : string prop;
      (** network_security_group_id *)
  timeouts :
    azurerm_network_interface_security_group_association__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_network_interface_security_group_association *)

let azurerm_network_interface_security_group_association ?id
    ?timeouts ~network_interface_id ~network_security_group_id
    __resource_id =
  let __resource_type =
    "azurerm_network_interface_security_group_association"
  in
  let __resource =
    { id; network_interface_id; network_security_group_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_interface_security_group_association
       __resource);
  ()
