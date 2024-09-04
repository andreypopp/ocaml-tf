(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type network_address_port_translation__port_range = {
  maximum : float prop;
  minimum : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_address_port_translation__port_range) -> ()

let yojson_of_network_address_port_translation__port_range =
  (function
   | { maximum = v_maximum; minimum = v_minimum } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_minimum in
         ("minimum", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_maximum in
         ("maximum", arg) :: bnds
       in
       `Assoc bnds
    : network_address_port_translation__port_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_address_port_translation__port_range

[@@@deriving.end]

type network_address_port_translation = {
  icmp_pinhole_timeout_in_seconds : float prop;
  pinhole_maximum_number : float prop;
  port_range : network_address_port_translation__port_range list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tcp_pinhole_timeout_in_seconds : float prop;
  tcp_port_reuse_minimum_hold_time_in_seconds : float prop;
  udp_pinhole_timeout_in_seconds : float prop;
  udp_port_reuse_minimum_hold_time_in_seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_address_port_translation) -> ()

let yojson_of_network_address_port_translation =
  (function
   | {
       icmp_pinhole_timeout_in_seconds =
         v_icmp_pinhole_timeout_in_seconds;
       pinhole_maximum_number = v_pinhole_maximum_number;
       port_range = v_port_range;
       tcp_pinhole_timeout_in_seconds =
         v_tcp_pinhole_timeout_in_seconds;
       tcp_port_reuse_minimum_hold_time_in_seconds =
         v_tcp_port_reuse_minimum_hold_time_in_seconds;
       udp_pinhole_timeout_in_seconds =
         v_udp_pinhole_timeout_in_seconds;
       udp_port_reuse_minimum_hold_time_in_seconds =
         v_udp_port_reuse_minimum_hold_time_in_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_udp_port_reuse_minimum_hold_time_in_seconds
         in
         ("udp_port_reuse_minimum_hold_time_in_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_udp_pinhole_timeout_in_seconds
         in
         ("udp_pinhole_timeout_in_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_tcp_port_reuse_minimum_hold_time_in_seconds
         in
         ("tcp_port_reuse_minimum_hold_time_in_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_tcp_pinhole_timeout_in_seconds
         in
         ("tcp_pinhole_timeout_in_seconds", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_port_range then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_address_port_translation__port_range)
               v_port_range
           in
           let bnd = "port_range", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_pinhole_maximum_number
         in
         ("pinhole_maximum_number", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_icmp_pinhole_timeout_in_seconds
         in
         ("icmp_pinhole_timeout_in_seconds", arg) :: bnds
       in
       `Assoc bnds
    : network_address_port_translation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_address_port_translation

[@@@deriving.end]

type azurerm_mobile_network_attached_data_network = {
  id : string prop option; [@option]
  mobile_network_data_network_name : string prop;
  mobile_network_packet_core_data_plane_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mobile_network_attached_data_network) -> ()

let yojson_of_azurerm_mobile_network_attached_data_network =
  (function
   | {
       id = v_id;
       mobile_network_data_network_name =
         v_mobile_network_data_network_name;
       mobile_network_packet_core_data_plane_id =
         v_mobile_network_packet_core_data_plane_id;
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
         let arg =
           yojson_of_prop yojson_of_string
             v_mobile_network_packet_core_data_plane_id
         in
         ("mobile_network_packet_core_data_plane_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_mobile_network_data_network_name
         in
         ("mobile_network_data_network_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_mobile_network_attached_data_network ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mobile_network_attached_data_network

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_mobile_network_attached_data_network ?id ?timeouts
    ~mobile_network_data_network_name
    ~mobile_network_packet_core_data_plane_id () :
    azurerm_mobile_network_attached_data_network =
  {
    id;
    mobile_network_data_network_name;
    mobile_network_packet_core_data_plane_id;
    timeouts;
  }

type t = {
  tf_name : string;
  dns_addresses : string list prop;
  id : string prop;
  location : string prop;
  mobile_network_data_network_name : string prop;
  mobile_network_packet_core_data_plane_id : string prop;
  network_address_port_translation :
    network_address_port_translation list prop;
  tags : string Tf_core.assoc prop;
  user_equipment_address_pool_prefixes : string list prop;
  user_equipment_static_address_pool_prefixes : string list prop;
  user_plane_access_ipv4_address : string prop;
  user_plane_access_ipv4_gateway : string prop;
  user_plane_access_ipv4_subnet : string prop;
  user_plane_access_name : string prop;
}

let make ?id ?timeouts ~mobile_network_data_network_name
    ~mobile_network_packet_core_data_plane_id __id =
  let __type = "azurerm_mobile_network_attached_data_network" in
  let __attrs =
    ({
       tf_name = __id;
       dns_addresses = Prop.computed __type __id "dns_addresses";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       mobile_network_data_network_name =
         Prop.computed __type __id "mobile_network_data_network_name";
       mobile_network_packet_core_data_plane_id =
         Prop.computed __type __id
           "mobile_network_packet_core_data_plane_id";
       network_address_port_translation =
         Prop.computed __type __id "network_address_port_translation";
       tags = Prop.computed __type __id "tags";
       user_equipment_address_pool_prefixes =
         Prop.computed __type __id
           "user_equipment_address_pool_prefixes";
       user_equipment_static_address_pool_prefixes =
         Prop.computed __type __id
           "user_equipment_static_address_pool_prefixes";
       user_plane_access_ipv4_address =
         Prop.computed __type __id "user_plane_access_ipv4_address";
       user_plane_access_ipv4_gateway =
         Prop.computed __type __id "user_plane_access_ipv4_gateway";
       user_plane_access_ipv4_subnet =
         Prop.computed __type __id "user_plane_access_ipv4_subnet";
       user_plane_access_name =
         Prop.computed __type __id "user_plane_access_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mobile_network_attached_data_network
        (azurerm_mobile_network_attached_data_network ?id ?timeouts
           ~mobile_network_data_network_name
           ~mobile_network_packet_core_data_plane_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts
    ~mobile_network_data_network_name
    ~mobile_network_packet_core_data_plane_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~mobile_network_data_network_name
      ~mobile_network_packet_core_data_plane_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
