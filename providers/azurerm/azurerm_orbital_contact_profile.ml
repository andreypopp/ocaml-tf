(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type links__channels__end_point = {
  end_point_name : string prop;
  ip_address : string prop option; [@option]
  port : string prop;
  protocol : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : links__channels__end_point) -> ()

let yojson_of_links__channels__end_point =
  (function
   | {
       end_point_name = v_end_point_name;
       ip_address = v_ip_address;
       port = v_port;
       protocol = v_protocol;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         match v_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_end_point_name
         in
         ("end_point_name", arg) :: bnds
       in
       `Assoc bnds
    : links__channels__end_point -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_links__channels__end_point

[@@@deriving.end]

type links__channels = {
  bandwidth_mhz : float prop;
  center_frequency_mhz : float prop;
  demodulation_configuration : string prop option; [@option]
  modulation_configuration : string prop option; [@option]
  name : string prop;
  end_point : links__channels__end_point list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : links__channels) -> ()

let yojson_of_links__channels =
  (function
   | {
       bandwidth_mhz = v_bandwidth_mhz;
       center_frequency_mhz = v_center_frequency_mhz;
       demodulation_configuration = v_demodulation_configuration;
       modulation_configuration = v_modulation_configuration;
       name = v_name;
       end_point = v_end_point;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_end_point then bnds
         else
           let arg =
             (yojson_of_list yojson_of_links__channels__end_point)
               v_end_point
           in
           let bnd = "end_point", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_modulation_configuration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "modulation_configuration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_demodulation_configuration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "demodulation_configuration", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_center_frequency_mhz
         in
         ("center_frequency_mhz", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_bandwidth_mhz in
         ("bandwidth_mhz", arg) :: bnds
       in
       `Assoc bnds
    : links__channels -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_links__channels

[@@@deriving.end]

type links = {
  direction : string prop;
  name : string prop;
  polarization : string prop;
  channels : links__channels list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : links) -> ()

let yojson_of_links =
  (function
   | {
       direction = v_direction;
       name = v_name;
       polarization = v_polarization;
       channels = v_channels;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_channels then bnds
         else
           let arg =
             (yojson_of_list yojson_of_links__channels) v_channels
           in
           let bnd = "channels", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_polarization in
         ("polarization", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_direction in
         ("direction", arg) :: bnds
       in
       `Assoc bnds
    : links -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_links

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_orbital_contact_profile = {
  auto_tracking : string prop;
  event_hub_uri : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  minimum_elevation_degrees : float prop option; [@option]
  minimum_variable_contact_duration : string prop;
  name : string prop;
  network_configuration_subnet_id : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  links : links list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_orbital_contact_profile) -> ()

let yojson_of_azurerm_orbital_contact_profile =
  (function
   | {
       auto_tracking = v_auto_tracking;
       event_hub_uri = v_event_hub_uri;
       id = v_id;
       location = v_location;
       minimum_elevation_degrees = v_minimum_elevation_degrees;
       minimum_variable_contact_duration =
         v_minimum_variable_contact_duration;
       name = v_name;
       network_configuration_subnet_id =
         v_network_configuration_subnet_id;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       links = v_links;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_links then bnds
         else
           let arg = (yojson_of_list yojson_of_links) v_links in
           let bnd = "links", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_network_configuration_subnet_id
         in
         ("network_configuration_subnet_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_minimum_variable_contact_duration
         in
         ("minimum_variable_contact_duration", arg) :: bnds
       in
       let bnds =
         match v_minimum_elevation_degrees with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minimum_elevation_degrees", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event_hub_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_hub_uri", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_auto_tracking in
         ("auto_tracking", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_orbital_contact_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_orbital_contact_profile

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
