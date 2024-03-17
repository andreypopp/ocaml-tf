(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpn_connection__tunnel1_log_options__cloudwatch_log_options = {
  log_enabled : bool prop option; [@option]  (** log_enabled *)
  log_group_arn : string prop option; [@option]  (** log_group_arn *)
  log_output_format : string prop option; [@option]
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
  log_enabled : bool prop option; [@option]  (** log_enabled *)
  log_group_arn : string prop option; [@option]  (** log_group_arn *)
  log_output_format : string prop option; [@option]
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
  destination_cidr_block : string prop;
      (** destination_cidr_block *)
  source : string prop;  (** source *)
  state : string prop;  (** state *)
}
[@@deriving yojson_of]

type aws_vpn_connection__vgw_telemetry = {
  accepted_route_count : float prop;  (** accepted_route_count *)
  certificate_arn : string prop;  (** certificate_arn *)
  last_status_change : string prop;  (** last_status_change *)
  outside_ip_address : string prop;  (** outside_ip_address *)
  status : string prop;  (** status *)
  status_message : string prop;  (** status_message *)
}
[@@deriving yojson_of]

type aws_vpn_connection = {
  customer_gateway_id : string prop;  (** customer_gateway_id *)
  enable_acceleration : bool prop option; [@option]
      (** enable_acceleration *)
  id : string prop option; [@option]  (** id *)
  local_ipv4_network_cidr : string prop option; [@option]
      (** local_ipv4_network_cidr *)
  local_ipv6_network_cidr : string prop option; [@option]
      (** local_ipv6_network_cidr *)
  outside_ip_address_type : string prop option; [@option]
      (** outside_ip_address_type *)
  remote_ipv4_network_cidr : string prop option; [@option]
      (** remote_ipv4_network_cidr *)
  remote_ipv6_network_cidr : string prop option; [@option]
      (** remote_ipv6_network_cidr *)
  static_routes_only : bool prop option; [@option]
      (** static_routes_only *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  transit_gateway_id : string prop option; [@option]
      (** transit_gateway_id *)
  transport_transit_gateway_attachment_id : string prop option;
      [@option]
      (** transport_transit_gateway_attachment_id *)
  tunnel1_dpd_timeout_action : string prop option; [@option]
      (** tunnel1_dpd_timeout_action *)
  tunnel1_dpd_timeout_seconds : float prop option; [@option]
      (** tunnel1_dpd_timeout_seconds *)
  tunnel1_enable_tunnel_lifecycle_control : bool prop option;
      [@option]
      (** tunnel1_enable_tunnel_lifecycle_control *)
  tunnel1_ike_versions : string prop list option; [@option]
      (** tunnel1_ike_versions *)
  tunnel1_inside_cidr : string prop option; [@option]
      (** tunnel1_inside_cidr *)
  tunnel1_inside_ipv6_cidr : string prop option; [@option]
      (** tunnel1_inside_ipv6_cidr *)
  tunnel1_phase1_dh_group_numbers : float prop list option; [@option]
      (** tunnel1_phase1_dh_group_numbers *)
  tunnel1_phase1_encryption_algorithms : string prop list option;
      [@option]
      (** tunnel1_phase1_encryption_algorithms *)
  tunnel1_phase1_integrity_algorithms : string prop list option;
      [@option]
      (** tunnel1_phase1_integrity_algorithms *)
  tunnel1_phase1_lifetime_seconds : float prop option; [@option]
      (** tunnel1_phase1_lifetime_seconds *)
  tunnel1_phase2_dh_group_numbers : float prop list option; [@option]
      (** tunnel1_phase2_dh_group_numbers *)
  tunnel1_phase2_encryption_algorithms : string prop list option;
      [@option]
      (** tunnel1_phase2_encryption_algorithms *)
  tunnel1_phase2_integrity_algorithms : string prop list option;
      [@option]
      (** tunnel1_phase2_integrity_algorithms *)
  tunnel1_phase2_lifetime_seconds : float prop option; [@option]
      (** tunnel1_phase2_lifetime_seconds *)
  tunnel1_preshared_key : string prop option; [@option]
      (** tunnel1_preshared_key *)
  tunnel1_rekey_fuzz_percentage : float prop option; [@option]
      (** tunnel1_rekey_fuzz_percentage *)
  tunnel1_rekey_margin_time_seconds : float prop option; [@option]
      (** tunnel1_rekey_margin_time_seconds *)
  tunnel1_replay_window_size : float prop option; [@option]
      (** tunnel1_replay_window_size *)
  tunnel1_startup_action : string prop option; [@option]
      (** tunnel1_startup_action *)
  tunnel2_dpd_timeout_action : string prop option; [@option]
      (** tunnel2_dpd_timeout_action *)
  tunnel2_dpd_timeout_seconds : float prop option; [@option]
      (** tunnel2_dpd_timeout_seconds *)
  tunnel2_enable_tunnel_lifecycle_control : bool prop option;
      [@option]
      (** tunnel2_enable_tunnel_lifecycle_control *)
  tunnel2_ike_versions : string prop list option; [@option]
      (** tunnel2_ike_versions *)
  tunnel2_inside_cidr : string prop option; [@option]
      (** tunnel2_inside_cidr *)
  tunnel2_inside_ipv6_cidr : string prop option; [@option]
      (** tunnel2_inside_ipv6_cidr *)
  tunnel2_phase1_dh_group_numbers : float prop list option; [@option]
      (** tunnel2_phase1_dh_group_numbers *)
  tunnel2_phase1_encryption_algorithms : string prop list option;
      [@option]
      (** tunnel2_phase1_encryption_algorithms *)
  tunnel2_phase1_integrity_algorithms : string prop list option;
      [@option]
      (** tunnel2_phase1_integrity_algorithms *)
  tunnel2_phase1_lifetime_seconds : float prop option; [@option]
      (** tunnel2_phase1_lifetime_seconds *)
  tunnel2_phase2_dh_group_numbers : float prop list option; [@option]
      (** tunnel2_phase2_dh_group_numbers *)
  tunnel2_phase2_encryption_algorithms : string prop list option;
      [@option]
      (** tunnel2_phase2_encryption_algorithms *)
  tunnel2_phase2_integrity_algorithms : string prop list option;
      [@option]
      (** tunnel2_phase2_integrity_algorithms *)
  tunnel2_phase2_lifetime_seconds : float prop option; [@option]
      (** tunnel2_phase2_lifetime_seconds *)
  tunnel2_preshared_key : string prop option; [@option]
      (** tunnel2_preshared_key *)
  tunnel2_rekey_fuzz_percentage : float prop option; [@option]
      (** tunnel2_rekey_fuzz_percentage *)
  tunnel2_rekey_margin_time_seconds : float prop option; [@option]
      (** tunnel2_rekey_margin_time_seconds *)
  tunnel2_replay_window_size : float prop option; [@option]
      (** tunnel2_replay_window_size *)
  tunnel2_startup_action : string prop option; [@option]
      (** tunnel2_startup_action *)
  tunnel_inside_ip_version : string prop option; [@option]
      (** tunnel_inside_ip_version *)
  type_ : string prop; [@key "type"]  (** type *)
  vpn_gateway_id : string prop option; [@option]
      (** vpn_gateway_id *)
  tunnel1_log_options : aws_vpn_connection__tunnel1_log_options list;
  tunnel2_log_options : aws_vpn_connection__tunnel2_log_options list;
}
[@@deriving yojson_of]
(** aws_vpn_connection *)

let aws_vpn_connection ?enable_acceleration ?id
    ?local_ipv4_network_cidr ?local_ipv6_network_cidr
    ?outside_ip_address_type ?remote_ipv4_network_cidr
    ?remote_ipv6_network_cidr ?static_routes_only ?tags ?tags_all
    ?transit_gateway_id ?transport_transit_gateway_attachment_id
    ?tunnel1_dpd_timeout_action ?tunnel1_dpd_timeout_seconds
    ?tunnel1_enable_tunnel_lifecycle_control ?tunnel1_ike_versions
    ?tunnel1_inside_cidr ?tunnel1_inside_ipv6_cidr
    ?tunnel1_phase1_dh_group_numbers
    ?tunnel1_phase1_encryption_algorithms
    ?tunnel1_phase1_integrity_algorithms
    ?tunnel1_phase1_lifetime_seconds ?tunnel1_phase2_dh_group_numbers
    ?tunnel1_phase2_encryption_algorithms
    ?tunnel1_phase2_integrity_algorithms
    ?tunnel1_phase2_lifetime_seconds ?tunnel1_preshared_key
    ?tunnel1_rekey_fuzz_percentage ?tunnel1_rekey_margin_time_seconds
    ?tunnel1_replay_window_size ?tunnel1_startup_action
    ?tunnel2_dpd_timeout_action ?tunnel2_dpd_timeout_seconds
    ?tunnel2_enable_tunnel_lifecycle_control ?tunnel2_ike_versions
    ?tunnel2_inside_cidr ?tunnel2_inside_ipv6_cidr
    ?tunnel2_phase1_dh_group_numbers
    ?tunnel2_phase1_encryption_algorithms
    ?tunnel2_phase1_integrity_algorithms
    ?tunnel2_phase1_lifetime_seconds ?tunnel2_phase2_dh_group_numbers
    ?tunnel2_phase2_encryption_algorithms
    ?tunnel2_phase2_integrity_algorithms
    ?tunnel2_phase2_lifetime_seconds ?tunnel2_preshared_key
    ?tunnel2_rekey_fuzz_percentage ?tunnel2_rekey_margin_time_seconds
    ?tunnel2_replay_window_size ?tunnel2_startup_action
    ?tunnel_inside_ip_version ?vpn_gateway_id ~customer_gateway_id
    ~type_ ~tunnel1_log_options ~tunnel2_log_options __resource_id =
  let __resource_type = "aws_vpn_connection" in
  let __resource =
    {
      customer_gateway_id;
      enable_acceleration;
      id;
      local_ipv4_network_cidr;
      local_ipv6_network_cidr;
      outside_ip_address_type;
      remote_ipv4_network_cidr;
      remote_ipv6_network_cidr;
      static_routes_only;
      tags;
      tags_all;
      transit_gateway_id;
      transport_transit_gateway_attachment_id;
      tunnel1_dpd_timeout_action;
      tunnel1_dpd_timeout_seconds;
      tunnel1_enable_tunnel_lifecycle_control;
      tunnel1_ike_versions;
      tunnel1_inside_cidr;
      tunnel1_inside_ipv6_cidr;
      tunnel1_phase1_dh_group_numbers;
      tunnel1_phase1_encryption_algorithms;
      tunnel1_phase1_integrity_algorithms;
      tunnel1_phase1_lifetime_seconds;
      tunnel1_phase2_dh_group_numbers;
      tunnel1_phase2_encryption_algorithms;
      tunnel1_phase2_integrity_algorithms;
      tunnel1_phase2_lifetime_seconds;
      tunnel1_preshared_key;
      tunnel1_rekey_fuzz_percentage;
      tunnel1_rekey_margin_time_seconds;
      tunnel1_replay_window_size;
      tunnel1_startup_action;
      tunnel2_dpd_timeout_action;
      tunnel2_dpd_timeout_seconds;
      tunnel2_enable_tunnel_lifecycle_control;
      tunnel2_ike_versions;
      tunnel2_inside_cidr;
      tunnel2_inside_ipv6_cidr;
      tunnel2_phase1_dh_group_numbers;
      tunnel2_phase1_encryption_algorithms;
      tunnel2_phase1_integrity_algorithms;
      tunnel2_phase1_lifetime_seconds;
      tunnel2_phase2_dh_group_numbers;
      tunnel2_phase2_encryption_algorithms;
      tunnel2_phase2_integrity_algorithms;
      tunnel2_phase2_lifetime_seconds;
      tunnel2_preshared_key;
      tunnel2_rekey_fuzz_percentage;
      tunnel2_rekey_margin_time_seconds;
      tunnel2_replay_window_size;
      tunnel2_startup_action;
      tunnel_inside_ip_version;
      type_;
      vpn_gateway_id;
      tunnel1_log_options;
      tunnel2_log_options;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpn_connection __resource);
  ()
