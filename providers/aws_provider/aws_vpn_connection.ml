(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpn_connection__tunnel1_log_options__cloudwatch_log_options = {
  log_enabled : bool option; [@option]  (** log_enabled *)
  log_group_arn : string option; [@option]  (** log_group_arn *)
  log_output_format : string option; [@option]
      (** log_output_format *)
}
[@@deriving yojson_of]
(** aws_vpn_connection__tunnel1_log_options__cloudwatch_log_options *)

type aws_vpn_connection__tunnel1_log_options = {
  cloudwatch_log_options :
    aws_vpn_connection__tunnel1_log_options__cloudwatch_log_options
    list;
}
[@@deriving yojson_of]
(** aws_vpn_connection__tunnel1_log_options *)

type aws_vpn_connection__tunnel2_log_options__cloudwatch_log_options = {
  log_enabled : bool option; [@option]  (** log_enabled *)
  log_group_arn : string option; [@option]  (** log_group_arn *)
  log_output_format : string option; [@option]
      (** log_output_format *)
}
[@@deriving yojson_of]
(** aws_vpn_connection__tunnel2_log_options__cloudwatch_log_options *)

type aws_vpn_connection__tunnel2_log_options = {
  cloudwatch_log_options :
    aws_vpn_connection__tunnel2_log_options__cloudwatch_log_options
    list;
}
[@@deriving yojson_of]
(** aws_vpn_connection__tunnel2_log_options *)

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

type aws_vpn_connection = {
  customer_gateway_id : string;  (** customer_gateway_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  transit_gateway_id : string option; [@option]
      (** transit_gateway_id *)
  transport_transit_gateway_attachment_id : string option; [@option]
      (** transport_transit_gateway_attachment_id *)
  tunnel1_dpd_timeout_action : string option; [@option]
      (** tunnel1_dpd_timeout_action *)
  tunnel1_dpd_timeout_seconds : float option; [@option]
      (** tunnel1_dpd_timeout_seconds *)
  tunnel1_enable_tunnel_lifecycle_control : bool option; [@option]
      (** tunnel1_enable_tunnel_lifecycle_control *)
  tunnel1_ike_versions : string list option; [@option]
      (** tunnel1_ike_versions *)
  tunnel1_phase1_dh_group_numbers : float list option; [@option]
      (** tunnel1_phase1_dh_group_numbers *)
  tunnel1_phase1_encryption_algorithms : string list option;
      [@option]
      (** tunnel1_phase1_encryption_algorithms *)
  tunnel1_phase1_integrity_algorithms : string list option; [@option]
      (** tunnel1_phase1_integrity_algorithms *)
  tunnel1_phase1_lifetime_seconds : float option; [@option]
      (** tunnel1_phase1_lifetime_seconds *)
  tunnel1_phase2_dh_group_numbers : float list option; [@option]
      (** tunnel1_phase2_dh_group_numbers *)
  tunnel1_phase2_encryption_algorithms : string list option;
      [@option]
      (** tunnel1_phase2_encryption_algorithms *)
  tunnel1_phase2_integrity_algorithms : string list option; [@option]
      (** tunnel1_phase2_integrity_algorithms *)
  tunnel1_phase2_lifetime_seconds : float option; [@option]
      (** tunnel1_phase2_lifetime_seconds *)
  tunnel1_rekey_fuzz_percentage : float option; [@option]
      (** tunnel1_rekey_fuzz_percentage *)
  tunnel1_rekey_margin_time_seconds : float option; [@option]
      (** tunnel1_rekey_margin_time_seconds *)
  tunnel1_replay_window_size : float option; [@option]
      (** tunnel1_replay_window_size *)
  tunnel1_startup_action : string option; [@option]
      (** tunnel1_startup_action *)
  tunnel2_dpd_timeout_action : string option; [@option]
      (** tunnel2_dpd_timeout_action *)
  tunnel2_dpd_timeout_seconds : float option; [@option]
      (** tunnel2_dpd_timeout_seconds *)
  tunnel2_enable_tunnel_lifecycle_control : bool option; [@option]
      (** tunnel2_enable_tunnel_lifecycle_control *)
  tunnel2_ike_versions : string list option; [@option]
      (** tunnel2_ike_versions *)
  tunnel2_phase1_dh_group_numbers : float list option; [@option]
      (** tunnel2_phase1_dh_group_numbers *)
  tunnel2_phase1_encryption_algorithms : string list option;
      [@option]
      (** tunnel2_phase1_encryption_algorithms *)
  tunnel2_phase1_integrity_algorithms : string list option; [@option]
      (** tunnel2_phase1_integrity_algorithms *)
  tunnel2_phase1_lifetime_seconds : float option; [@option]
      (** tunnel2_phase1_lifetime_seconds *)
  tunnel2_phase2_dh_group_numbers : float list option; [@option]
      (** tunnel2_phase2_dh_group_numbers *)
  tunnel2_phase2_encryption_algorithms : string list option;
      [@option]
      (** tunnel2_phase2_encryption_algorithms *)
  tunnel2_phase2_integrity_algorithms : string list option; [@option]
      (** tunnel2_phase2_integrity_algorithms *)
  tunnel2_phase2_lifetime_seconds : float option; [@option]
      (** tunnel2_phase2_lifetime_seconds *)
  tunnel2_rekey_fuzz_percentage : float option; [@option]
      (** tunnel2_rekey_fuzz_percentage *)
  tunnel2_rekey_margin_time_seconds : float option; [@option]
      (** tunnel2_rekey_margin_time_seconds *)
  tunnel2_replay_window_size : float option; [@option]
      (** tunnel2_replay_window_size *)
  tunnel2_startup_action : string option; [@option]
      (** tunnel2_startup_action *)
  type_ : string; [@key "type"]  (** type *)
  vpn_gateway_id : string option; [@option]  (** vpn_gateway_id *)
  tunnel1_log_options : aws_vpn_connection__tunnel1_log_options list;
  tunnel2_log_options : aws_vpn_connection__tunnel2_log_options list;
}
[@@deriving yojson_of]
(** aws_vpn_connection *)

let aws_vpn_connection ?tags ?transit_gateway_id
    ?transport_transit_gateway_attachment_id
    ?tunnel1_dpd_timeout_action ?tunnel1_dpd_timeout_seconds
    ?tunnel1_enable_tunnel_lifecycle_control ?tunnel1_ike_versions
    ?tunnel1_phase1_dh_group_numbers
    ?tunnel1_phase1_encryption_algorithms
    ?tunnel1_phase1_integrity_algorithms
    ?tunnel1_phase1_lifetime_seconds ?tunnel1_phase2_dh_group_numbers
    ?tunnel1_phase2_encryption_algorithms
    ?tunnel1_phase2_integrity_algorithms
    ?tunnel1_phase2_lifetime_seconds ?tunnel1_rekey_fuzz_percentage
    ?tunnel1_rekey_margin_time_seconds ?tunnel1_replay_window_size
    ?tunnel1_startup_action ?tunnel2_dpd_timeout_action
    ?tunnel2_dpd_timeout_seconds
    ?tunnel2_enable_tunnel_lifecycle_control ?tunnel2_ike_versions
    ?tunnel2_phase1_dh_group_numbers
    ?tunnel2_phase1_encryption_algorithms
    ?tunnel2_phase1_integrity_algorithms
    ?tunnel2_phase1_lifetime_seconds ?tunnel2_phase2_dh_group_numbers
    ?tunnel2_phase2_encryption_algorithms
    ?tunnel2_phase2_integrity_algorithms
    ?tunnel2_phase2_lifetime_seconds ?tunnel2_rekey_fuzz_percentage
    ?tunnel2_rekey_margin_time_seconds ?tunnel2_replay_window_size
    ?tunnel2_startup_action ?vpn_gateway_id ~customer_gateway_id
    ~type_ ~tunnel1_log_options ~tunnel2_log_options __resource_id =
  let __resource_type = "aws_vpn_connection" in
  let __resource =
    {
      customer_gateway_id;
      tags;
      transit_gateway_id;
      transport_transit_gateway_attachment_id;
      tunnel1_dpd_timeout_action;
      tunnel1_dpd_timeout_seconds;
      tunnel1_enable_tunnel_lifecycle_control;
      tunnel1_ike_versions;
      tunnel1_phase1_dh_group_numbers;
      tunnel1_phase1_encryption_algorithms;
      tunnel1_phase1_integrity_algorithms;
      tunnel1_phase1_lifetime_seconds;
      tunnel1_phase2_dh_group_numbers;
      tunnel1_phase2_encryption_algorithms;
      tunnel1_phase2_integrity_algorithms;
      tunnel1_phase2_lifetime_seconds;
      tunnel1_rekey_fuzz_percentage;
      tunnel1_rekey_margin_time_seconds;
      tunnel1_replay_window_size;
      tunnel1_startup_action;
      tunnel2_dpd_timeout_action;
      tunnel2_dpd_timeout_seconds;
      tunnel2_enable_tunnel_lifecycle_control;
      tunnel2_ike_versions;
      tunnel2_phase1_dh_group_numbers;
      tunnel2_phase1_encryption_algorithms;
      tunnel2_phase1_integrity_algorithms;
      tunnel2_phase1_lifetime_seconds;
      tunnel2_phase2_dh_group_numbers;
      tunnel2_phase2_encryption_algorithms;
      tunnel2_phase2_integrity_algorithms;
      tunnel2_phase2_lifetime_seconds;
      tunnel2_rekey_fuzz_percentage;
      tunnel2_rekey_margin_time_seconds;
      tunnel2_replay_window_size;
      tunnel2_startup_action;
      type_;
      vpn_gateway_id;
      tunnel1_log_options;
      tunnel2_log_options;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpn_connection __resource);
  ()
