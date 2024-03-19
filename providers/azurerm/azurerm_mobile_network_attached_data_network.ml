(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type network_address_port_translation__port_range = {
  maximum : float prop option; [@option]  (** maximum *)
  minimum : float prop option; [@option]  (** minimum *)
}
[@@deriving yojson_of]
(** network_address_port_translation__port_range *)

type network_address_port_translation = {
  icmp_pinhole_timeout_in_seconds : float prop option; [@option]
      (** icmp_pinhole_timeout_in_seconds *)
  pinhole_maximum_number : float prop option; [@option]
      (** pinhole_maximum_number *)
  tcp_pinhole_timeout_in_seconds : float prop option; [@option]
      (** tcp_pinhole_timeout_in_seconds *)
  tcp_port_reuse_minimum_hold_time_in_seconds : float prop option;
      [@option]
      (** tcp_port_reuse_minimum_hold_time_in_seconds *)
  udp_pinhole_timeout_in_seconds : float prop option; [@option]
      (** udp_pinhole_timeout_in_seconds *)
  udp_port_reuse_minimum_hold_time_in_seconds : float prop option;
      [@option]
      (** udp_port_reuse_minimum_hold_time_in_seconds *)
  port_range : network_address_port_translation__port_range list;
}
[@@deriving yojson_of]
(** network_address_port_translation *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_mobile_network_attached_data_network = {
  dns_addresses : string prop list;  (** dns_addresses *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  mobile_network_data_network_name : string prop;
      (** mobile_network_data_network_name *)
  mobile_network_packet_core_data_plane_id : string prop;
      (** mobile_network_packet_core_data_plane_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  user_equipment_address_pool_prefixes : string prop list option;
      [@option]
      (** user_equipment_address_pool_prefixes *)
  user_equipment_static_address_pool_prefixes :
    string prop list option;
      [@option]
      (** user_equipment_static_address_pool_prefixes *)
  user_plane_access_ipv4_address : string prop option; [@option]
      (** user_plane_access_ipv4_address *)
  user_plane_access_ipv4_gateway : string prop option; [@option]
      (** user_plane_access_ipv4_gateway *)
  user_plane_access_ipv4_subnet : string prop option; [@option]
      (** user_plane_access_ipv4_subnet *)
  user_plane_access_name : string prop option; [@option]
      (** user_plane_access_name *)
  network_address_port_translation :
    network_address_port_translation list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_attached_data_network *)

let network_address_port_translation__port_range ?maximum ?minimum ()
    : network_address_port_translation__port_range =
  { maximum; minimum }

let network_address_port_translation ?icmp_pinhole_timeout_in_seconds
    ?pinhole_maximum_number ?tcp_pinhole_timeout_in_seconds
    ?tcp_port_reuse_minimum_hold_time_in_seconds
    ?udp_pinhole_timeout_in_seconds
    ?udp_port_reuse_minimum_hold_time_in_seconds ~port_range () :
    network_address_port_translation =
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
    ?user_plane_access_ipv4_subnet ?user_plane_access_name ?timeouts
    ~dns_addresses ~location ~mobile_network_data_network_name
    ~mobile_network_packet_core_data_plane_id
    ~network_address_port_translation () :
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

let register ?tf_module ?id ?tags
    ?user_equipment_address_pool_prefixes
    ?user_equipment_static_address_pool_prefixes
    ?user_plane_access_ipv4_address ?user_plane_access_ipv4_gateway
    ?user_plane_access_ipv4_subnet ?user_plane_access_name ?timeouts
    ~dns_addresses ~location ~mobile_network_data_network_name
    ~mobile_network_packet_core_data_plane_id
    ~network_address_port_translation __resource_id =
  let __resource_type =
    "azurerm_mobile_network_attached_data_network"
  in
  let __resource =
    azurerm_mobile_network_attached_data_network ?id ?tags
      ?user_equipment_address_pool_prefixes
      ?user_equipment_static_address_pool_prefixes
      ?user_plane_access_ipv4_address ?user_plane_access_ipv4_gateway
      ?user_plane_access_ipv4_subnet ?user_plane_access_name
      ?timeouts ~dns_addresses ~location
      ~mobile_network_data_network_name
      ~mobile_network_packet_core_data_plane_id
      ~network_address_port_translation ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mobile_network_attached_data_network
       __resource);
  let __resource_attributes =
    ({
       dns_addresses =
         Prop.computed __resource_type __resource_id "dns_addresses";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       mobile_network_data_network_name =
         Prop.computed __resource_type __resource_id
           "mobile_network_data_network_name";
       mobile_network_packet_core_data_plane_id =
         Prop.computed __resource_type __resource_id
           "mobile_network_packet_core_data_plane_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       user_equipment_address_pool_prefixes =
         Prop.computed __resource_type __resource_id
           "user_equipment_address_pool_prefixes";
       user_equipment_static_address_pool_prefixes =
         Prop.computed __resource_type __resource_id
           "user_equipment_static_address_pool_prefixes";
       user_plane_access_ipv4_address =
         Prop.computed __resource_type __resource_id
           "user_plane_access_ipv4_address";
       user_plane_access_ipv4_gateway =
         Prop.computed __resource_type __resource_id
           "user_plane_access_ipv4_gateway";
       user_plane_access_ipv4_subnet =
         Prop.computed __resource_type __resource_id
           "user_plane_access_ipv4_subnet";
       user_plane_access_name =
         Prop.computed __resource_type __resource_id
           "user_plane_access_name";
     }
      : t)
  in
  __resource_attributes
