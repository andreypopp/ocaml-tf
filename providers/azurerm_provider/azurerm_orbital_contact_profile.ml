(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_orbital_contact_profile__links__channels__end_point = {
  end_point_name : string;  (** end_point_name *)
  ip_address : string option; [@option]  (** ip_address *)
  port : string;  (** port *)
  protocol : string;  (** protocol *)
}
[@@deriving yojson_of]
(** azurerm_orbital_contact_profile__links__channels__end_point *)

type azurerm_orbital_contact_profile__links__channels = {
  bandwidth_mhz : float;  (** bandwidth_mhz *)
  center_frequency_mhz : float;  (** center_frequency_mhz *)
  demodulation_configuration : string option; [@option]
      (** demodulation_configuration *)
  modulation_configuration : string option; [@option]
      (** modulation_configuration *)
  name : string;  (** name *)
  end_point :
    azurerm_orbital_contact_profile__links__channels__end_point list;
}
[@@deriving yojson_of]
(** azurerm_orbital_contact_profile__links__channels *)

type azurerm_orbital_contact_profile__links = {
  direction : string;  (** direction *)
  name : string;  (** name *)
  polarization : string;  (** polarization *)
  channels : azurerm_orbital_contact_profile__links__channels list;
}
[@@deriving yojson_of]
(** azurerm_orbital_contact_profile__links *)

type azurerm_orbital_contact_profile__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_orbital_contact_profile__timeouts *)

type azurerm_orbital_contact_profile = {
  auto_tracking : string;  (** auto_tracking *)
  event_hub_uri : string option; [@option]  (** event_hub_uri *)
  location : string;  (** location *)
  minimum_elevation_degrees : float option; [@option]
      (** minimum_elevation_degrees *)
  minimum_variable_contact_duration : string;
      (** minimum_variable_contact_duration *)
  name : string;  (** name *)
  network_configuration_subnet_id : string;
      (** network_configuration_subnet_id *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  links : azurerm_orbital_contact_profile__links list;
  timeouts : azurerm_orbital_contact_profile__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_orbital_contact_profile *)

let azurerm_orbital_contact_profile ?event_hub_uri
    ?minimum_elevation_degrees ?tags ?timeouts ~auto_tracking
    ~location ~minimum_variable_contact_duration ~name
    ~network_configuration_subnet_id ~resource_group_name ~links
    __resource_id =
  let __resource_type = "azurerm_orbital_contact_profile" in
  let __resource =
    {
      auto_tracking;
      event_hub_uri;
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_orbital_contact_profile __resource);
  ()
