(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_network_profile__container_network_interface__ip_configuration = {
  name : string;  (** name *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_network_profile__container_network_interface__ip_configuration *)

type azurerm_network_profile__container_network_interface = {
  name : string;  (** name *)
  ip_configuration :
    azurerm_network_profile__container_network_interface__ip_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_network_profile__container_network_interface *)

type azurerm_network_profile__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_profile__timeouts *)

type azurerm_network_profile = {
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  container_network_interface :
    azurerm_network_profile__container_network_interface list;
  timeouts : azurerm_network_profile__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_profile *)

let azurerm_network_profile ?tags ?timeouts ~location ~name
    ~resource_group_name ~container_network_interface __resource_id =
  let __resource_type = "azurerm_network_profile" in
  let __resource =
    {
      location;
      name;
      resource_group_name;
      tags;
      container_network_interface;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_profile __resource);
  ()
