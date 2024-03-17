(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_profile__container_network_interface__ip_configuration = {
  name : string prop;  (** name *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_network_profile__container_network_interface__ip_configuration *)

type azurerm_network_profile__container_network_interface = {
  name : string prop;  (** name *)
  ip_configuration :
    azurerm_network_profile__container_network_interface__ip_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_network_profile__container_network_interface *)

type azurerm_network_profile__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_profile__timeouts *)

type azurerm_network_profile = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  container_network_interface :
    azurerm_network_profile__container_network_interface list;
  timeouts : azurerm_network_profile__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_profile *)

type t = {
  container_network_interface_ids : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let azurerm_network_profile ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~container_network_interface __resource_id =
  let __resource_type = "azurerm_network_profile" in
  let __resource =
    ({
       id;
       location;
       name;
       resource_group_name;
       tags;
       container_network_interface;
       timeouts;
     }
      : azurerm_network_profile)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_profile __resource);
  let __resource_attributes =
    ({
       container_network_interface_ids =
         Prop.computed __resource_type __resource_id
           "container_network_interface_ids";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
