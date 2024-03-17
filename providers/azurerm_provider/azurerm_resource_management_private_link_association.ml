(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_resource_management_private_link_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_resource_management_private_link_association__timeouts *)

type azurerm_resource_management_private_link_association = {
  id : string option; [@option]  (** id *)
  management_group_id : string;  (** management_group_id *)
  name : string option; [@option]  (** name *)
  public_network_access_enabled : bool;
      (** public_network_access_enabled *)
  resource_management_private_link_id : string;
      (** resource_management_private_link_id *)
  timeouts :
    azurerm_resource_management_private_link_association__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_resource_management_private_link_association *)

let azurerm_resource_management_private_link_association ?id ?name
    ?timeouts ~management_group_id ~public_network_access_enabled
    ~resource_management_private_link_id __resource_id =
  let __resource_type =
    "azurerm_resource_management_private_link_association"
  in
  let __resource =
    {
      id;
      management_group_id;
      name;
      public_network_access_enabled;
      resource_management_private_link_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_resource_management_private_link_association
       __resource);
  ()
