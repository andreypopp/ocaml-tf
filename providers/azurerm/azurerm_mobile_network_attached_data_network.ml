(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type network_address_port_translation__port_range = {
  maximum : float prop option; [@option]
  minimum : float prop option; [@option]
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
         match v_minimum with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minimum", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_address_port_translation__port_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_address_port_translation__port_range

[@@@deriving.end]

type network_address_port_translation = {
  icmp_pinhole_timeout_in_seconds : float prop option; [@option]
  pinhole_maximum_number : float prop option; [@option]
  tcp_pinhole_timeout_in_seconds : float prop option; [@option]
  tcp_port_reuse_minimum_hold_time_in_seconds : float prop option;
      [@option]
  udp_pinhole_timeout_in_seconds : float prop option; [@option]
  udp_port_reuse_minimum_hold_time_in_seconds : float prop option;
      [@option]
  port_range : network_address_port_translation__port_range list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_address_port_translation) -> ()

let yojson_of_network_address_port_translation =
  (function
   | {
       icmp_pinhole_timeout_in_seconds =
         v_icmp_pinhole_timeout_in_seconds;
       pinhole_maximum_number = v_pinhole_maximum_number;
       tcp_pinhole_timeout_in_seconds =
         v_tcp_pinhole_timeout_in_seconds;
       tcp_port_reuse_minimum_hold_time_in_seconds =
         v_tcp_port_reuse_minimum_hold_time_in_seconds;
       udp_pinhole_timeout_in_seconds =
         v_udp_pinhole_timeout_in_seconds;
       udp_port_reuse_minimum_hold_time_in_seconds =
         v_udp_port_reuse_minimum_hold_time_in_seconds;
       port_range = v_port_range;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_port_range then bnds
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
         match v_udp_port_reuse_minimum_hold_time_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "udp_port_reuse_minimum_hold_time_in_seconds", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_udp_pinhole_timeout_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "udp_pinhole_timeout_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tcp_port_reuse_minimum_hold_time_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "tcp_port_reuse_minimum_hold_time_in_seconds", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_tcp_pinhole_timeout_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "tcp_pinhole_timeout_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pinhole_maximum_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "pinhole_maximum_number", arg in
             bnd :: bnds
       in
       let bnds =
         match v_icmp_pinhole_timeout_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "icmp_pinhole_timeout_in_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_address_port_translation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_address_port_translation

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

type azurerm_mobile_network_attached_data_network = {
  dns_addresses : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  id : string prop option; [@option]
  location : string prop;
  mobile_network_data_network_name : string prop;
  mobile_network_packet_core_data_plane_id : string prop;
  tags : (string * string prop) list option; [@option]
  user_equipment_address_pool_prefixes : string prop list option;
      [@option]
  user_equipment_static_address_pool_prefixes :
    string prop list option;
      [@option]
  user_plane_access_ipv4_address : string prop option; [@option]
  user_plane_access_ipv4_gateway : string prop option; [@option]
  user_plane_access_ipv4_subnet : string prop option; [@option]
  user_plane_access_name : string prop option; [@option]
  network_address_port_translation :
    network_address_port_translation list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mobile_network_attached_data_network) -> ()

let yojson_of_azurerm_mobile_network_attached_data_network =
  (function
   | {
       dns_addresses = v_dns_addresses;
       id = v_id;
       location = v_location;
       mobile_network_data_network_name =
         v_mobile_network_data_network_name;
       mobile_network_packet_core_data_plane_id =
         v_mobile_network_packet_core_data_plane_id;
       tags = v_tags;
       user_equipment_address_pool_prefixes =
         v_user_equipment_address_pool_prefixes;
       user_equipment_static_address_pool_prefixes =
         v_user_equipment_static_address_pool_prefixes;
       user_plane_access_ipv4_address =
         v_user_plane_access_ipv4_address;
       user_plane_access_ipv4_gateway =
         v_user_plane_access_ipv4_gateway;
       user_plane_access_ipv4_subnet =
         v_user_plane_access_ipv4_subnet;
       user_plane_access_name = v_user_plane_access_name;
       network_address_port_translation =
         v_network_address_port_translation;
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
         if [] = v_network_address_port_translation then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_address_port_translation)
               v_network_address_port_translation
           in
           let bnd = "network_address_port_translation", arg in
           bnd :: bnds
       in
       let bnds =
         match v_user_plane_access_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_plane_access_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_plane_access_ipv4_subnet with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_plane_access_ipv4_subnet", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_plane_access_ipv4_gateway with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_plane_access_ipv4_gateway", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_plane_access_ipv4_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_plane_access_ipv4_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_equipment_static_address_pool_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd =
               "user_equipment_static_address_pool_prefixes", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_user_equipment_address_pool_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "user_equipment_address_pool_prefixes", arg in
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
         if [] = v_dns_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_dns_addresses
           in
           let bnd = "dns_addresses", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : azurerm_mobile_network_attached_data_network ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mobile_network_attached_data_network

[@@@deriving.end]

let network_address_port_translation__port_range ?maximum ?minimum ()
    : network_address_port_translation__port_range =
  { maximum; minimum }

let network_address_port_translation ?icmp_pinhole_timeout_in_seconds
    ?pinhole_maximum_number ?tcp_pinhole_timeout_in_seconds
    ?tcp_port_reuse_minimum_hold_time_in_seconds
    ?udp_pinhole_timeout_in_seconds
    ?udp_port_reuse_minimum_hold_time_in_seconds ?(port_range = [])
    () : network_address_port_translation =
  {
    icmp_pinhole_timeout_in_seconds;
    pinhole_maximum_number;
    tcp_pinhole_timeout_in_seconds;
    tcp_port_reuse_minimum_hold_time_in_seconds;
    udp_pinhole_timeout_in_seconds;
    udp_port_reuse_minimum_hold_time_in_seconds;
    port_range;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mobile_network_attached_data_network ?id ?tags
    ?user_equipment_address_pool_prefixes
    ?user_equipment_static_address_pool_prefixes
    ?user_plane_access_ipv4_address ?user_plane_access_ipv4_gateway
    ?user_plane_access_ipv4_subnet ?user_plane_access_name
    ?(network_address_port_translation = []) ?timeouts ~dns_addresses
    ~location ~mobile_network_data_network_name
    ~mobile_network_packet_core_data_plane_id () :
    azurerm_mobile_network_attached_data_network =
  {
    dns_addresses;
    id;
    location;
    mobile_network_data_network_name;
    mobile_network_packet_core_data_plane_id;
    tags;
    user_equipment_address_pool_prefixes;
    user_equipment_static_address_pool_prefixes;
    user_plane_access_ipv4_address;
    user_plane_access_ipv4_gateway;
    user_plane_access_ipv4_subnet;
    user_plane_access_name;
    network_address_port_translation;
    timeouts;
  }

type t = {
  tf_name : string;
  dns_addresses : string list prop;
  id : string prop;
  location : string prop;
  mobile_network_data_network_name : string prop;
  mobile_network_packet_core_data_plane_id : string prop;
  tags : (string * string) list prop;
  user_equipment_address_pool_prefixes : string list prop;
  user_equipment_static_address_pool_prefixes : string list prop;
  user_plane_access_ipv4_address : string prop;
  user_plane_access_ipv4_gateway : string prop;
  user_plane_access_ipv4_subnet : string prop;
  user_plane_access_name : string prop;
}

let make ?id ?tags ?user_equipment_address_pool_prefixes
    ?user_equipment_static_address_pool_prefixes
    ?user_plane_access_ipv4_address ?user_plane_access_ipv4_gateway
    ?user_plane_access_ipv4_subnet ?user_plane_access_name
    ?(network_address_port_translation = []) ?timeouts ~dns_addresses
    ~location ~mobile_network_data_network_name
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
        (azurerm_mobile_network_attached_data_network ?id ?tags
           ?user_equipment_address_pool_prefixes
           ?user_equipment_static_address_pool_prefixes
           ?user_plane_access_ipv4_address
           ?user_plane_access_ipv4_gateway
           ?user_plane_access_ipv4_subnet ?user_plane_access_name
           ~network_address_port_translation ?timeouts ~dns_addresses
           ~location ~mobile_network_data_network_name
           ~mobile_network_packet_core_data_plane_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags
    ?user_equipment_address_pool_prefixes
    ?user_equipment_static_address_pool_prefixes
    ?user_plane_access_ipv4_address ?user_plane_access_ipv4_gateway
    ?user_plane_access_ipv4_subnet ?user_plane_access_name
    ?(network_address_port_translation = []) ?timeouts ~dns_addresses
    ~location ~mobile_network_data_network_name
    ~mobile_network_packet_core_data_plane_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?user_equipment_address_pool_prefixes
      ?user_equipment_static_address_pool_prefixes
      ?user_plane_access_ipv4_address ?user_plane_access_ipv4_gateway
      ?user_plane_access_ipv4_subnet ?user_plane_access_name
      ~network_address_port_translation ?timeouts ~dns_addresses
      ~location ~mobile_network_data_network_name
      ~mobile_network_packet_core_data_plane_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
