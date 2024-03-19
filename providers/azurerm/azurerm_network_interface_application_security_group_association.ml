(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_network_interface_application_security_group_association = {
  application_security_group_id : string prop;
      (** application_security_group_id *)
  id : string prop option; [@option]  (** id *)
  network_interface_id : string prop;  (** network_interface_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_interface_application_security_group_association *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_network_interface_application_security_group_association
    ?id ?timeouts ~application_security_group_id
    ~network_interface_id () :
    azurerm_network_interface_application_security_group_association
    =
  {
    application_security_group_id;
    id;
    network_interface_id;
    timeouts;
  }

type t = {
  application_security_group_id : string prop;
  id : string prop;
  network_interface_id : string prop;
}

let register ?tf_module ?id ?timeouts ~application_security_group_id
    ~network_interface_id __resource_id =
  let __resource_type =
    "azurerm_network_interface_application_security_group_association"
  in
  let __resource =
    azurerm_network_interface_application_security_group_association
      ?id ?timeouts ~application_security_group_id
      ~network_interface_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_interface_application_security_group_association
       __resource);
  let __resource_attributes =
    ({
       application_security_group_id =
         Prop.computed __resource_type __resource_id
           "application_security_group_id";
       id = Prop.computed __resource_type __resource_id "id";
       network_interface_id =
         Prop.computed __resource_type __resource_id
           "network_interface_id";
     }
      : t)
  in
  __resource_attributes
