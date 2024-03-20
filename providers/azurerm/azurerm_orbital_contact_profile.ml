(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type links__channels__end_point = {
  end_point_name : string prop;  (** end_point_name *)
  ip_address : string prop option; [@option]  (** ip_address *)
  port : string prop;  (** port *)
  protocol : string prop;  (** protocol *)
}
[@@deriving yojson_of]
(** links__channels__end_point *)

type links__channels = {
  bandwidth_mhz : float prop;  (** bandwidth_mhz *)
  center_frequency_mhz : float prop;  (** center_frequency_mhz *)
  demodulation_configuration : string prop option; [@option]
      (** demodulation_configuration *)
  modulation_configuration : string prop option; [@option]
      (** modulation_configuration *)
  name : string prop;  (** name *)
  end_point : links__channels__end_point list;
}
[@@deriving yojson_of]
(** links__channels *)

type links = {
  direction : string prop;  (** direction *)
  name : string prop;  (** name *)
  polarization : string prop;  (** polarization *)
  channels : links__channels list;
}
[@@deriving yojson_of]
(** links *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  links : links list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_orbital_contact_profile *)

let links__channels__end_point ?ip_address ~end_point_name ~port
    ~protocol () : links__channels__end_point =
  { end_point_name; ip_address; port; protocol }

let links__channels ?demodulation_configuration
    ?modulation_configuration ~bandwidth_mhz ~center_frequency_mhz
    ~name ~end_point () : links__channels =
  {
    bandwidth_mhz;
    center_frequency_mhz;
    demodulation_configuration;
    modulation_configuration;
    name;
    end_point;
  }

let links ~direction ~name ~polarization ~channels () : links =
  { direction; name; polarization; channels }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_orbital_contact_profile ?event_hub_uri ?id
    ?minimum_elevation_degrees ?tags ?timeouts ~auto_tracking
    ~location ~minimum_variable_contact_duration ~name
    ~network_configuration_subnet_id ~resource_group_name ~links () :
    azurerm_orbital_contact_profile =
  {
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

let make ?event_hub_uri ?id ?minimum_elevation_degrees ?tags
    ?timeouts ~auto_tracking ~location
    ~minimum_variable_contact_duration ~name
    ~network_configuration_subnet_id ~resource_group_name ~links __id
    =
  let __type = "azurerm_orbital_contact_profile" in
  let __attrs =
    ({
       auto_tracking = Prop.computed __type __id "auto_tracking";
       event_hub_uri = Prop.computed __type __id "event_hub_uri";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       minimum_elevation_degrees =
         Prop.computed __type __id "minimum_elevation_degrees";
       minimum_variable_contact_duration =
         Prop.computed __type __id
           "minimum_variable_contact_duration";
       name = Prop.computed __type __id "name";
       network_configuration_subnet_id =
         Prop.computed __type __id "network_configuration_subnet_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_orbital_contact_profile
        (azurerm_orbital_contact_profile ?event_hub_uri ?id
           ?minimum_elevation_degrees ?tags ?timeouts ~auto_tracking
           ~location ~minimum_variable_contact_duration ~name
           ~network_configuration_subnet_id ~resource_group_name
           ~links ());
    attrs = __attrs;
  }

let register ?tf_module ?event_hub_uri ?id ?minimum_elevation_degrees
    ?tags ?timeouts ~auto_tracking ~location
    ~minimum_variable_contact_duration ~name
    ~network_configuration_subnet_id ~resource_group_name ~links __id
    =
  let (r : _ Tf_core.resource) =
    make ?event_hub_uri ?id ?minimum_elevation_degrees ?tags
      ?timeouts ~auto_tracking ~location
      ~minimum_variable_contact_duration ~name
      ~network_configuration_subnet_id ~resource_group_name ~links
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
