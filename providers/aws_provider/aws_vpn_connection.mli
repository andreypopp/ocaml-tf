(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpn_connection__tunnel1_log_options__cloudwatch_log_options
type aws_vpn_connection__tunnel1_log_options
type aws_vpn_connection__tunnel2_log_options__cloudwatch_log_options
type aws_vpn_connection__tunnel2_log_options

type aws_vpn_connection__routes = {
  destination_cidr_block : string prop;
      (** destination_cidr_block *)
  source : string prop;  (** source *)
  state : string prop;  (** state *)
}

type aws_vpn_connection__vgw_telemetry = {
  accepted_route_count : float prop;  (** accepted_route_count *)
  certificate_arn : string prop;  (** certificate_arn *)
  last_status_change : string prop;  (** last_status_change *)
  outside_ip_address : string prop;  (** outside_ip_address *)
  status : string prop;  (** status *)
  status_message : string prop;  (** status_message *)
}

type aws_vpn_connection

type t = private {
  arn : string prop;
  core_network_arn : string prop;
  core_network_attachment_arn : string prop;
  customer_gateway_configuration : string prop;
  customer_gateway_id : string prop;
  enable_acceleration : bool prop;
  id : string prop;
  local_ipv4_network_cidr : string prop;
  local_ipv6_network_cidr : string prop;
  outside_ip_address_type : string prop;
  remote_ipv4_network_cidr : string prop;
  remote_ipv6_network_cidr : string prop;
  routes : aws_vpn_connection__routes list prop;
  static_routes_only : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_attachment_id : string prop;
  transit_gateway_id : string prop;
  transport_transit_gateway_attachment_id : string prop;
  tunnel1_address : string prop;
  tunnel1_bgp_asn : string prop;
  tunnel1_bgp_holdtime : float prop;
  tunnel1_cgw_inside_address : string prop;
  tunnel1_dpd_timeout_action : string prop;
  tunnel1_dpd_timeout_seconds : float prop;
  tunnel1_enable_tunnel_lifecycle_control : bool prop;
  tunnel1_ike_versions : string list prop;
  tunnel1_inside_cidr : string prop;
  tunnel1_inside_ipv6_cidr : string prop;
  tunnel1_phase1_dh_group_numbers : float list prop;
  tunnel1_phase1_encryption_algorithms : string list prop;
  tunnel1_phase1_integrity_algorithms : string list prop;
  tunnel1_phase1_lifetime_seconds : float prop;
  tunnel1_phase2_dh_group_numbers : float list prop;
  tunnel1_phase2_encryption_algorithms : string list prop;
  tunnel1_phase2_integrity_algorithms : string list prop;
  tunnel1_phase2_lifetime_seconds : float prop;
  tunnel1_preshared_key : string prop;
  tunnel1_rekey_fuzz_percentage : float prop;
  tunnel1_rekey_margin_time_seconds : float prop;
  tunnel1_replay_window_size : float prop;
  tunnel1_startup_action : string prop;
  tunnel1_vgw_inside_address : string prop;
  tunnel2_address : string prop;
  tunnel2_bgp_asn : string prop;
  tunnel2_bgp_holdtime : float prop;
  tunnel2_cgw_inside_address : string prop;
  tunnel2_dpd_timeout_action : string prop;
  tunnel2_dpd_timeout_seconds : float prop;
  tunnel2_enable_tunnel_lifecycle_control : bool prop;
  tunnel2_ike_versions : string list prop;
  tunnel2_inside_cidr : string prop;
  tunnel2_inside_ipv6_cidr : string prop;
  tunnel2_phase1_dh_group_numbers : float list prop;
  tunnel2_phase1_encryption_algorithms : string list prop;
  tunnel2_phase1_integrity_algorithms : string list prop;
  tunnel2_phase1_lifetime_seconds : float prop;
  tunnel2_phase2_dh_group_numbers : float list prop;
  tunnel2_phase2_encryption_algorithms : string list prop;
  tunnel2_phase2_integrity_algorithms : string list prop;
  tunnel2_phase2_lifetime_seconds : float prop;
  tunnel2_preshared_key : string prop;
  tunnel2_rekey_fuzz_percentage : float prop;
  tunnel2_rekey_margin_time_seconds : float prop;
  tunnel2_replay_window_size : float prop;
  tunnel2_startup_action : string prop;
  tunnel2_vgw_inside_address : string prop;
  tunnel_inside_ip_version : string prop;
  type_ : string prop;
  vgw_telemetry : aws_vpn_connection__vgw_telemetry list prop;
  vpn_gateway_id : string prop;
}

val aws_vpn_connection :
  ?enable_acceleration:bool prop ->
  ?id:string prop ->
  ?local_ipv4_network_cidr:string prop ->
  ?local_ipv6_network_cidr:string prop ->
  ?outside_ip_address_type:string prop ->
  ?remote_ipv4_network_cidr:string prop ->
  ?remote_ipv6_network_cidr:string prop ->
  ?static_routes_only:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?transit_gateway_id:string prop ->
  ?transport_transit_gateway_attachment_id:string prop ->
  ?tunnel1_dpd_timeout_action:string prop ->
  ?tunnel1_dpd_timeout_seconds:float prop ->
  ?tunnel1_enable_tunnel_lifecycle_control:bool prop ->
  ?tunnel1_ike_versions:string prop list ->
  ?tunnel1_inside_cidr:string prop ->
  ?tunnel1_inside_ipv6_cidr:string prop ->
  ?tunnel1_phase1_dh_group_numbers:float prop list ->
  ?tunnel1_phase1_encryption_algorithms:string prop list ->
  ?tunnel1_phase1_integrity_algorithms:string prop list ->
  ?tunnel1_phase1_lifetime_seconds:float prop ->
  ?tunnel1_phase2_dh_group_numbers:float prop list ->
  ?tunnel1_phase2_encryption_algorithms:string prop list ->
  ?tunnel1_phase2_integrity_algorithms:string prop list ->
  ?tunnel1_phase2_lifetime_seconds:float prop ->
  ?tunnel1_preshared_key:string prop ->
  ?tunnel1_rekey_fuzz_percentage:float prop ->
  ?tunnel1_rekey_margin_time_seconds:float prop ->
  ?tunnel1_replay_window_size:float prop ->
  ?tunnel1_startup_action:string prop ->
  ?tunnel2_dpd_timeout_action:string prop ->
  ?tunnel2_dpd_timeout_seconds:float prop ->
  ?tunnel2_enable_tunnel_lifecycle_control:bool prop ->
  ?tunnel2_ike_versions:string prop list ->
  ?tunnel2_inside_cidr:string prop ->
  ?tunnel2_inside_ipv6_cidr:string prop ->
  ?tunnel2_phase1_dh_group_numbers:float prop list ->
  ?tunnel2_phase1_encryption_algorithms:string prop list ->
  ?tunnel2_phase1_integrity_algorithms:string prop list ->
  ?tunnel2_phase1_lifetime_seconds:float prop ->
  ?tunnel2_phase2_dh_group_numbers:float prop list ->
  ?tunnel2_phase2_encryption_algorithms:string prop list ->
  ?tunnel2_phase2_integrity_algorithms:string prop list ->
  ?tunnel2_phase2_lifetime_seconds:float prop ->
  ?tunnel2_preshared_key:string prop ->
  ?tunnel2_rekey_fuzz_percentage:float prop ->
  ?tunnel2_rekey_margin_time_seconds:float prop ->
  ?tunnel2_replay_window_size:float prop ->
  ?tunnel2_startup_action:string prop ->
  ?tunnel_inside_ip_version:string prop ->
  ?vpn_gateway_id:string prop ->
  customer_gateway_id:string prop ->
  type_:string prop ->
  tunnel1_log_options:aws_vpn_connection__tunnel1_log_options list ->
  tunnel2_log_options:aws_vpn_connection__tunnel2_log_options list ->
  string ->
  t
