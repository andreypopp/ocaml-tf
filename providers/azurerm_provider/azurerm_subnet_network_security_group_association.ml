(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_subnet_network_security_group_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_subnet_network_security_group_association__timeouts *)

type azurerm_subnet_network_security_group_association = {
  id : string prop option; [@option]  (** id *)
  network_security_group_id : string prop;
      (** network_security_group_id *)
  subnet_id : string prop;  (** subnet_id *)
  timeouts :
    azurerm_subnet_network_security_group_association__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_subnet_network_security_group_association *)

let azurerm_subnet_network_security_group_association ?id ?timeouts
    ~network_security_group_id ~subnet_id __resource_id =
  let __resource_type =
    "azurerm_subnet_network_security_group_association"
  in
  let __resource =
    { id; network_security_group_id; subnet_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_subnet_network_security_group_association
       __resource);
  ()
