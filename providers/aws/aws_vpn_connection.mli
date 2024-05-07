(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type routes = {
  destination_cidr_block : string prop;
      (** destination_cidr_block *)
  source : string prop;  (** source *)
  state : string prop;  (** state *)
}

type vgw_telemetry = {
  accepted_route_count : float prop;  (** accepted_route_count *)
  certificate_arn : string prop;  (** certificate_arn *)
  last_status_change : string prop;  (** last_status_change *)
  outside_ip_address : string prop;  (** outside_ip_address *)
  status : string prop;  (** status *)
  status_message : string prop;  (** status_message *)
}

type tunnel1_log_options__cloudwatch_log_options

val tunnel1_log_options__cloudwatch_log_options :
  ?log_enabled:bool prop ->
  ?log_group_arn:string prop ->
  ?log_output_format:string prop ->
  unit ->
  tunnel1_log_options__cloudwatch_log_options

type tunnel1_log_options

val tunnel1_log_options :
  ?cloudwatch_log_options:
    tunnel1_log_options__cloudwatch_log_options list ->
  unit ->
  tunnel1_log_options

type tunnel2_log_options__cloudwatch_log_options

val tunnel2_log_options__cloudwatch_log_options :
  ?log_enabled:bool prop ->
  ?log_group_arn:string prop ->
  ?log_output_format:string prop ->
  unit ->
  tunnel2_log_options__cloudwatch_log_options

type tunnel2_log_options

val tunnel2_log_options :
  ?cloudwatch_log_options:
    tunnel2_log_options__cloudwatch_log_options list ->
  unit ->
  tunnel2_log_options

type aws_vpn_connection

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
  ?tunnel1_log_options:tunnel1_log_options list ->
  ?tunnel2_log_options:tunnel2_log_options list ->
  customer_gateway_id:string prop ->
  type_:string prop ->
  unit ->
  aws_vpn_connection

val yojson_of_aws_vpn_connection : aws_vpn_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  routes : routes list prop;
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
  vgw_telemetry : vgw_telemetry list prop;
  vpn_gateway_id : string prop;
}

val register :
  ?tf_module:tf_module ->
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
  ?tunnel1_log_options:tunnel1_log_options list ->
  ?tunnel2_log_options:tunnel2_log_options list ->
  customer_gateway_id:string prop ->
  type_:string prop ->
  string ->
  t

val make :
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
  ?tunnel1_log_options:tunnel1_log_options list ->
  ?tunnel2_log_options:tunnel2_log_options list ->
  customer_gateway_id:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
