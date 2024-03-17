(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_orbital_contact_profile__links__channels__end_point = {
  end_point_name : string prop;  (** end_point_name *)
  ip_address : string prop option; [@option]  (** ip_address *)
  port : string prop;  (** port *)
  protocol : string prop;  (** protocol *)
}
[@@deriving yojson_of]
(** azurerm_orbital_contact_profile__links__channels__end_point *)

type azurerm_orbital_contact_profile__links__channels = {
  bandwidth_mhz : float prop;  (** bandwidth_mhz *)
  center_frequency_mhz : float prop;  (** center_frequency_mhz *)
  demodulation_configuration : string prop option; [@option]
      (** demodulation_configuration *)
  modulation_configuration : string prop option; [@option]
      (** modulation_configuration *)
  name : string prop;  (** name *)
  end_point :
    azurerm_orbital_contact_profile__links__channels__end_point list;
}
[@@deriving yojson_of]
(** azurerm_orbital_contact_profile__links__channels *)

type azurerm_orbital_contact_profile__links = {
  direction : string prop;  (** direction *)
  name : string prop;  (** name *)
  polarization : string prop;  (** polarization *)
  channels : azurerm_orbital_contact_profile__links__channels list;
}
[@@deriving yojson_of]
(** azurerm_orbital_contact_profile__links *)

type azurerm_orbital_contact_profile__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_orbital_contact_profile__timeouts *)

type azurerm_orbital_contact_profile = {
  auto_tracking : string prop;  (** auto_tracking *)
  event_hub_uri : string prop option; [@option]  (** event_hub_uri *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  minimum_elevation_degrees : float prop option; [@option]
      (** minimum_elevation_degrees *)
  minimum_variable_contact_duration : string prop;
      (** minimum_variable_contact_duration *)
  name : string prop;  (** name *)
  network_configuration_subnet_id : string prop;
      (** network_configuration_subnet_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  links : azurerm_orbital_contact_profile__links list;
  timeouts : azurerm_orbital_contact_profile__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_orbital_contact_profile *)

type t = {
  auto_tracking : string prop;
  event_hub_uri : string prop;
  id : string prop;
  location : string prop;
  minimum_elevation_degrees : float prop;
  minimum_variable_contact_duration : string prop;
  name : string prop;
  network_configuration_subnet_id : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let azurerm_orbital_contact_profile ?event_hub_uri ?id
    ?minimum_elevation_degrees ?tags ?timeouts ~auto_tracking
    ~location ~minimum_variable_contact_duration ~name
    ~network_configuration_subnet_id ~resource_group_name ~links
    __resource_id =
  let __resource_type = "azurerm_orbital_contact_profile" in
  let __resource =
    ({
       auto_tracking;
       event_hub_uri;
       id;
       location;
       minimum_elevation_degrees;
       minimum_variable_contact_duration;
       name;
       network_configuration_subnet_id;
       resource_group_name;
       tags;
       links;
       timeouts;
     }
      : azurerm_orbital_contact_profile)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_orbital_contact_profile __resource);
  let __resource_attributes =
    ({
       auto_tracking =
         Prop.computed __resource_type __resource_id "auto_tracking";
       event_hub_uri =
         Prop.computed __resource_type __resource_id "event_hub_uri";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       minimum_elevation_degrees =
         Prop.computed __resource_type __resource_id
           "minimum_elevation_degrees";
       minimum_variable_contact_duration =
         Prop.computed __resource_type __resource_id
           "minimum_variable_contact_duration";
       name = Prop.computed __resource_type __resource_id "name";
       network_configuration_subnet_id =
         Prop.computed __resource_type __resource_id
           "network_configuration_subnet_id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
