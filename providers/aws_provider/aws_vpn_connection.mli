(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpn_connection__tunnel1_log_options__cloudwatch_log_options
type aws_vpn_connection__tunnel1_log_options
type aws_vpn_connection__tunnel2_log_options__cloudwatch_log_options
type aws_vpn_connection__tunnel2_log_options

type aws_vpn_connection__routes = {
  destination_cidr_block : string;  (** destination_cidr_block *)
  source : string;  (** source *)
  state : string;  (** state *)
}
[@@deriving yojson_of]

type aws_vpn_connection__vgw_telemetry = {
  accepted_route_count : float;  (** accepted_route_count *)
  certificate_arn : string;  (** certificate_arn *)
  last_status_change : string;  (** last_status_change *)
  outside_ip_address : string;  (** outside_ip_address *)
  status : string;  (** status *)
  status_message : string;  (** status_message *)
}
[@@deriving yojson_of]

type aws_vpn_connection

val aws_vpn_connection :
  ?tags:(string * string) list ->
  ?transit_gateway_id:string ->
  ?transport_transit_gateway_attachment_id:string ->
  ?tunnel1_dpd_timeout_action:string ->
  ?tunnel1_dpd_timeout_seconds:float ->
  ?tunnel1_enable_tunnel_lifecycle_control:bool ->
  ?tunnel1_ike_versions:string list ->
  ?tunnel1_phase1_dh_group_numbers:float list ->
  ?tunnel1_phase1_encryption_algorithms:string list ->
  ?tunnel1_phase1_integrity_algorithms:string list ->
  ?tunnel1_phase1_lifetime_seconds:float ->
  ?tunnel1_phase2_dh_group_numbers:float list ->
  ?tunnel1_phase2_encryption_algorithms:string list ->
  ?tunnel1_phase2_integrity_algorithms:string list ->
  ?tunnel1_phase2_lifetime_seconds:float ->
  ?tunnel1_rekey_fuzz_percentage:float ->
  ?tunnel1_rekey_margin_time_seconds:float ->
  ?tunnel1_replay_window_size:float ->
  ?tunnel1_startup_action:string ->
  ?tunnel2_dpd_timeout_action:string ->
  ?tunnel2_dpd_timeout_seconds:float ->
  ?tunnel2_enable_tunnel_lifecycle_control:bool ->
  ?tunnel2_ike_versions:string list ->
  ?tunnel2_phase1_dh_group_numbers:float list ->
  ?tunnel2_phase1_encryption_algorithms:string list ->
  ?tunnel2_phase1_integrity_algorithms:string list ->
  ?tunnel2_phase1_lifetime_seconds:float ->
  ?tunnel2_phase2_dh_group_numbers:float list ->
  ?tunnel2_phase2_encryption_algorithms:string list ->
  ?tunnel2_phase2_integrity_algorithms:string list ->
  ?tunnel2_phase2_lifetime_seconds:float ->
  ?tunnel2_rekey_fuzz_percentage:float ->
  ?tunnel2_rekey_margin_time_seconds:float ->
  ?tunnel2_replay_window_size:float ->
  ?tunnel2_startup_action:string ->
  ?vpn_gateway_id:string ->
  customer_gateway_id:string ->
  type_:string ->
  tunnel1_log_options:aws_vpn_connection__tunnel1_log_options list ->
  tunnel2_log_options:aws_vpn_connection__tunnel2_log_options list ->
  string ->
  unit
