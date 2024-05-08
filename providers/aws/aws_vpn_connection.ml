(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type tunnel1_log_options__cloudwatch_log_options = {
  log_enabled : bool prop option; [@option]
  log_group_arn : string prop option; [@option]
  log_output_format : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tunnel1_log_options__cloudwatch_log_options) -> ()

let yojson_of_tunnel1_log_options__cloudwatch_log_options =
  (function
   | {
       log_enabled = v_log_enabled;
       log_group_arn = v_log_group_arn;
       log_output_format = v_log_output_format;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_output_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_output_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_group_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "log_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : tunnel1_log_options__cloudwatch_log_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tunnel1_log_options__cloudwatch_log_options

[@@@deriving.end]

type tunnel1_log_options = {
  cloudwatch_log_options :
    tunnel1_log_options__cloudwatch_log_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tunnel1_log_options) -> ()

let yojson_of_tunnel1_log_options =
  (function
   | { cloudwatch_log_options = v_cloudwatch_log_options } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudwatch_log_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_tunnel1_log_options__cloudwatch_log_options)
               v_cloudwatch_log_options
           in
           let bnd = "cloudwatch_log_options", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : tunnel1_log_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tunnel1_log_options

[@@@deriving.end]

type tunnel2_log_options__cloudwatch_log_options = {
  log_enabled : bool prop option; [@option]
  log_group_arn : string prop option; [@option]
  log_output_format : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tunnel2_log_options__cloudwatch_log_options) -> ()

let yojson_of_tunnel2_log_options__cloudwatch_log_options =
  (function
   | {
       log_enabled = v_log_enabled;
       log_group_arn = v_log_group_arn;
       log_output_format = v_log_output_format;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_output_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_output_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_group_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "log_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : tunnel2_log_options__cloudwatch_log_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tunnel2_log_options__cloudwatch_log_options

[@@@deriving.end]

type tunnel2_log_options = {
  cloudwatch_log_options :
    tunnel2_log_options__cloudwatch_log_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tunnel2_log_options) -> ()

let yojson_of_tunnel2_log_options =
  (function
   | { cloudwatch_log_options = v_cloudwatch_log_options } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_cloudwatch_log_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_tunnel2_log_options__cloudwatch_log_options)
               v_cloudwatch_log_options
           in
           let bnd = "cloudwatch_log_options", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : tunnel2_log_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tunnel2_log_options

[@@@deriving.end]

type routes = {
  destination_cidr_block : string prop;
  source : string prop;
  state : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routes) -> ()

let yojson_of_routes =
  (function
   | {
       destination_cidr_block = v_destination_cidr_block;
       source = v_source;
       state = v_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_cidr_block
         in
         ("destination_cidr_block", arg) :: bnds
       in
       `Assoc bnds
    : routes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routes

[@@@deriving.end]

type vgw_telemetry = {
  accepted_route_count : float prop;
  certificate_arn : string prop;
  last_status_change : string prop;
  outside_ip_address : string prop;
  status : string prop;
  status_message : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vgw_telemetry) -> ()

let yojson_of_vgw_telemetry =
  (function
   | {
       accepted_route_count = v_accepted_route_count;
       certificate_arn = v_certificate_arn;
       last_status_change = v_last_status_change;
       outside_ip_address = v_outside_ip_address;
       status = v_status;
       status_message = v_status_message;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_status_message
         in
         ("status_message", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_outside_ip_address
         in
         ("outside_ip_address", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_last_status_change
         in
         ("last_status_change", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_arn
         in
         ("certificate_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_accepted_route_count
         in
         ("accepted_route_count", arg) :: bnds
       in
       `Assoc bnds
    : vgw_telemetry -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vgw_telemetry

[@@@deriving.end]

type aws_vpn_connection = {
  customer_gateway_id : string prop;
  enable_acceleration : bool prop option; [@option]
  id : string prop option; [@option]
  local_ipv4_network_cidr : string prop option; [@option]
  local_ipv6_network_cidr : string prop option; [@option]
  outside_ip_address_type : string prop option; [@option]
  remote_ipv4_network_cidr : string prop option; [@option]
  remote_ipv6_network_cidr : string prop option; [@option]
  static_routes_only : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  transit_gateway_id : string prop option; [@option]
  transport_transit_gateway_attachment_id : string prop option;
      [@option]
  tunnel1_dpd_timeout_action : string prop option; [@option]
  tunnel1_dpd_timeout_seconds : float prop option; [@option]
  tunnel1_enable_tunnel_lifecycle_control : bool prop option;
      [@option]
  tunnel1_ike_versions : string prop list option; [@option]
  tunnel1_inside_cidr : string prop option; [@option]
  tunnel1_inside_ipv6_cidr : string prop option; [@option]
  tunnel1_phase1_dh_group_numbers : float prop list option; [@option]
  tunnel1_phase1_encryption_algorithms : string prop list option;
      [@option]
  tunnel1_phase1_integrity_algorithms : string prop list option;
      [@option]
  tunnel1_phase1_lifetime_seconds : float prop option; [@option]
  tunnel1_phase2_dh_group_numbers : float prop list option; [@option]
  tunnel1_phase2_encryption_algorithms : string prop list option;
      [@option]
  tunnel1_phase2_integrity_algorithms : string prop list option;
      [@option]
  tunnel1_phase2_lifetime_seconds : float prop option; [@option]
  tunnel1_preshared_key : string prop option; [@option]
  tunnel1_rekey_fuzz_percentage : float prop option; [@option]
  tunnel1_rekey_margin_time_seconds : float prop option; [@option]
  tunnel1_replay_window_size : float prop option; [@option]
  tunnel1_startup_action : string prop option; [@option]
  tunnel2_dpd_timeout_action : string prop option; [@option]
  tunnel2_dpd_timeout_seconds : float prop option; [@option]
  tunnel2_enable_tunnel_lifecycle_control : bool prop option;
      [@option]
  tunnel2_ike_versions : string prop list option; [@option]
  tunnel2_inside_cidr : string prop option; [@option]
  tunnel2_inside_ipv6_cidr : string prop option; [@option]
  tunnel2_phase1_dh_group_numbers : float prop list option; [@option]
  tunnel2_phase1_encryption_algorithms : string prop list option;
      [@option]
  tunnel2_phase1_integrity_algorithms : string prop list option;
      [@option]
  tunnel2_phase1_lifetime_seconds : float prop option; [@option]
  tunnel2_phase2_dh_group_numbers : float prop list option; [@option]
  tunnel2_phase2_encryption_algorithms : string prop list option;
      [@option]
  tunnel2_phase2_integrity_algorithms : string prop list option;
      [@option]
  tunnel2_phase2_lifetime_seconds : float prop option; [@option]
  tunnel2_preshared_key : string prop option; [@option]
  tunnel2_rekey_fuzz_percentage : float prop option; [@option]
  tunnel2_rekey_margin_time_seconds : float prop option; [@option]
  tunnel2_replay_window_size : float prop option; [@option]
  tunnel2_startup_action : string prop option; [@option]
  tunnel_inside_ip_version : string prop option; [@option]
  type_ : string prop; [@key "type"]
  vpn_gateway_id : string prop option; [@option]
  tunnel1_log_options : tunnel1_log_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tunnel2_log_options : tunnel2_log_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpn_connection) -> ()

let yojson_of_aws_vpn_connection =
  (function
   | {
       customer_gateway_id = v_customer_gateway_id;
       enable_acceleration = v_enable_acceleration;
       id = v_id;
       local_ipv4_network_cidr = v_local_ipv4_network_cidr;
       local_ipv6_network_cidr = v_local_ipv6_network_cidr;
       outside_ip_address_type = v_outside_ip_address_type;
       remote_ipv4_network_cidr = v_remote_ipv4_network_cidr;
       remote_ipv6_network_cidr = v_remote_ipv6_network_cidr;
       static_routes_only = v_static_routes_only;
       tags = v_tags;
       tags_all = v_tags_all;
       transit_gateway_id = v_transit_gateway_id;
       transport_transit_gateway_attachment_id =
         v_transport_transit_gateway_attachment_id;
       tunnel1_dpd_timeout_action = v_tunnel1_dpd_timeout_action;
       tunnel1_dpd_timeout_seconds = v_tunnel1_dpd_timeout_seconds;
       tunnel1_enable_tunnel_lifecycle_control =
         v_tunnel1_enable_tunnel_lifecycle_control;
       tunnel1_ike_versions = v_tunnel1_ike_versions;
       tunnel1_inside_cidr = v_tunnel1_inside_cidr;
       tunnel1_inside_ipv6_cidr = v_tunnel1_inside_ipv6_cidr;
       tunnel1_phase1_dh_group_numbers =
         v_tunnel1_phase1_dh_group_numbers;
       tunnel1_phase1_encryption_algorithms =
         v_tunnel1_phase1_encryption_algorithms;
       tunnel1_phase1_integrity_algorithms =
         v_tunnel1_phase1_integrity_algorithms;
       tunnel1_phase1_lifetime_seconds =
         v_tunnel1_phase1_lifetime_seconds;
       tunnel1_phase2_dh_group_numbers =
         v_tunnel1_phase2_dh_group_numbers;
       tunnel1_phase2_encryption_algorithms =
         v_tunnel1_phase2_encryption_algorithms;
       tunnel1_phase2_integrity_algorithms =
         v_tunnel1_phase2_integrity_algorithms;
       tunnel1_phase2_lifetime_seconds =
         v_tunnel1_phase2_lifetime_seconds;
       tunnel1_preshared_key = v_tunnel1_preshared_key;
       tunnel1_rekey_fuzz_percentage =
         v_tunnel1_rekey_fuzz_percentage;
       tunnel1_rekey_margin_time_seconds =
         v_tunnel1_rekey_margin_time_seconds;
       tunnel1_replay_window_size = v_tunnel1_replay_window_size;
       tunnel1_startup_action = v_tunnel1_startup_action;
       tunnel2_dpd_timeout_action = v_tunnel2_dpd_timeout_action;
       tunnel2_dpd_timeout_seconds = v_tunnel2_dpd_timeout_seconds;
       tunnel2_enable_tunnel_lifecycle_control =
         v_tunnel2_enable_tunnel_lifecycle_control;
       tunnel2_ike_versions = v_tunnel2_ike_versions;
       tunnel2_inside_cidr = v_tunnel2_inside_cidr;
       tunnel2_inside_ipv6_cidr = v_tunnel2_inside_ipv6_cidr;
       tunnel2_phase1_dh_group_numbers =
         v_tunnel2_phase1_dh_group_numbers;
       tunnel2_phase1_encryption_algorithms =
         v_tunnel2_phase1_encryption_algorithms;
       tunnel2_phase1_integrity_algorithms =
         v_tunnel2_phase1_integrity_algorithms;
       tunnel2_phase1_lifetime_seconds =
         v_tunnel2_phase1_lifetime_seconds;
       tunnel2_phase2_dh_group_numbers =
         v_tunnel2_phase2_dh_group_numbers;
       tunnel2_phase2_encryption_algorithms =
         v_tunnel2_phase2_encryption_algorithms;
       tunnel2_phase2_integrity_algorithms =
         v_tunnel2_phase2_integrity_algorithms;
       tunnel2_phase2_lifetime_seconds =
         v_tunnel2_phase2_lifetime_seconds;
       tunnel2_preshared_key = v_tunnel2_preshared_key;
       tunnel2_rekey_fuzz_percentage =
         v_tunnel2_rekey_fuzz_percentage;
       tunnel2_rekey_margin_time_seconds =
         v_tunnel2_rekey_margin_time_seconds;
       tunnel2_replay_window_size = v_tunnel2_replay_window_size;
       tunnel2_startup_action = v_tunnel2_startup_action;
       tunnel_inside_ip_version = v_tunnel_inside_ip_version;
       type_ = v_type_;
       vpn_gateway_id = v_vpn_gateway_id;
       tunnel1_log_options = v_tunnel1_log_options;
       tunnel2_log_options = v_tunnel2_log_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tunnel2_log_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_tunnel2_log_options)
               v_tunnel2_log_options
           in
           let bnd = "tunnel2_log_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_tunnel1_log_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_tunnel1_log_options)
               v_tunnel1_log_options
           in
           let bnd = "tunnel1_log_options", arg in
           bnd :: bnds
       in
       let bnds =
         match v_vpn_gateway_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpn_gateway_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_tunnel_inside_ip_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tunnel_inside_ip_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel2_startup_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tunnel2_startup_action", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel2_replay_window_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "tunnel2_replay_window_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel2_rekey_margin_time_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "tunnel2_rekey_margin_time_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel2_rekey_fuzz_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "tunnel2_rekey_fuzz_percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel2_preshared_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tunnel2_preshared_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel2_phase2_lifetime_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "tunnel2_phase2_lifetime_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel2_phase2_integrity_algorithms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tunnel2_phase2_integrity_algorithms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel2_phase2_encryption_algorithms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tunnel2_phase2_encryption_algorithms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel2_phase2_dh_group_numbers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "tunnel2_phase2_dh_group_numbers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel2_phase1_lifetime_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "tunnel2_phase1_lifetime_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel2_phase1_integrity_algorithms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tunnel2_phase1_integrity_algorithms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel2_phase1_encryption_algorithms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tunnel2_phase1_encryption_algorithms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel2_phase1_dh_group_numbers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "tunnel2_phase1_dh_group_numbers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel2_inside_ipv6_cidr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tunnel2_inside_ipv6_cidr", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel2_inside_cidr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tunnel2_inside_cidr", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel2_ike_versions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tunnel2_ike_versions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel2_enable_tunnel_lifecycle_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "tunnel2_enable_tunnel_lifecycle_control", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel2_dpd_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "tunnel2_dpd_timeout_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel2_dpd_timeout_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tunnel2_dpd_timeout_action", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel1_startup_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tunnel1_startup_action", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel1_replay_window_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "tunnel1_replay_window_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel1_rekey_margin_time_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "tunnel1_rekey_margin_time_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel1_rekey_fuzz_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "tunnel1_rekey_fuzz_percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel1_preshared_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tunnel1_preshared_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel1_phase2_lifetime_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "tunnel1_phase2_lifetime_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel1_phase2_integrity_algorithms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tunnel1_phase2_integrity_algorithms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel1_phase2_encryption_algorithms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tunnel1_phase2_encryption_algorithms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel1_phase2_dh_group_numbers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "tunnel1_phase2_dh_group_numbers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel1_phase1_lifetime_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "tunnel1_phase1_lifetime_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel1_phase1_integrity_algorithms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tunnel1_phase1_integrity_algorithms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel1_phase1_encryption_algorithms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tunnel1_phase1_encryption_algorithms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel1_phase1_dh_group_numbers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "tunnel1_phase1_dh_group_numbers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel1_inside_ipv6_cidr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tunnel1_inside_ipv6_cidr", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel1_inside_cidr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tunnel1_inside_cidr", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel1_ike_versions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tunnel1_ike_versions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel1_enable_tunnel_lifecycle_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "tunnel1_enable_tunnel_lifecycle_control", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel1_dpd_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "tunnel1_dpd_timeout_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tunnel1_dpd_timeout_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tunnel1_dpd_timeout_action", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transport_transit_gateway_attachment_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "transport_transit_gateway_attachment_id", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_transit_gateway_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transit_gateway_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
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
         match v_static_routes_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "static_routes_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_remote_ipv6_network_cidr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "remote_ipv6_network_cidr", arg in
             bnd :: bnds
       in
       let bnds =
         match v_remote_ipv4_network_cidr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "remote_ipv4_network_cidr", arg in
             bnd :: bnds
       in
       let bnds =
         match v_outside_ip_address_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "outside_ip_address_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_local_ipv6_network_cidr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "local_ipv6_network_cidr", arg in
             bnd :: bnds
       in
       let bnds =
         match v_local_ipv4_network_cidr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "local_ipv4_network_cidr", arg in
             bnd :: bnds
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
         match v_enable_acceleration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_acceleration", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_customer_gateway_id
         in
         ("customer_gateway_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_vpn_connection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpn_connection

[@@@deriving.end]

let tunnel1_log_options__cloudwatch_log_options ?log_enabled
    ?log_group_arn ?log_output_format () :
    tunnel1_log_options__cloudwatch_log_options =
  { log_enabled; log_group_arn; log_output_format }

let tunnel1_log_options ?(cloudwatch_log_options = []) () :
    tunnel1_log_options =
  { cloudwatch_log_options }

let tunnel2_log_options__cloudwatch_log_options ?log_enabled
    ?log_group_arn ?log_output_format () :
    tunnel2_log_options__cloudwatch_log_options =
  { log_enabled; log_group_arn; log_output_format }

let tunnel2_log_options ?(cloudwatch_log_options = []) () :
    tunnel2_log_options =
  { cloudwatch_log_options }

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
    ?tunnel_inside_ip_version ?vpn_gateway_id
    ?(tunnel1_log_options = []) ?(tunnel2_log_options = [])
    ~customer_gateway_id ~type_ () : aws_vpn_connection =
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

type t = {
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

let make ?enable_acceleration ?id ?local_ipv4_network_cidr
    ?local_ipv6_network_cidr ?outside_ip_address_type
    ?remote_ipv4_network_cidr ?remote_ipv6_network_cidr
    ?static_routes_only ?tags ?tags_all ?transit_gateway_id
    ?transport_transit_gateway_attachment_id
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
    ?tunnel_inside_ip_version ?vpn_gateway_id
    ?(tunnel1_log_options = []) ?(tunnel2_log_options = [])
    ~customer_gateway_id ~type_ __id =
  let __type = "aws_vpn_connection" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       core_network_arn =
         Prop.computed __type __id "core_network_arn";
       core_network_attachment_arn =
         Prop.computed __type __id "core_network_attachment_arn";
       customer_gateway_configuration =
         Prop.computed __type __id "customer_gateway_configuration";
       customer_gateway_id =
         Prop.computed __type __id "customer_gateway_id";
       enable_acceleration =
         Prop.computed __type __id "enable_acceleration";
       id = Prop.computed __type __id "id";
       local_ipv4_network_cidr =
         Prop.computed __type __id "local_ipv4_network_cidr";
       local_ipv6_network_cidr =
         Prop.computed __type __id "local_ipv6_network_cidr";
       outside_ip_address_type =
         Prop.computed __type __id "outside_ip_address_type";
       remote_ipv4_network_cidr =
         Prop.computed __type __id "remote_ipv4_network_cidr";
       remote_ipv6_network_cidr =
         Prop.computed __type __id "remote_ipv6_network_cidr";
       routes = Prop.computed __type __id "routes";
       static_routes_only =
         Prop.computed __type __id "static_routes_only";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       transit_gateway_attachment_id =
         Prop.computed __type __id "transit_gateway_attachment_id";
       transit_gateway_id =
         Prop.computed __type __id "transit_gateway_id";
       transport_transit_gateway_attachment_id =
         Prop.computed __type __id
           "transport_transit_gateway_attachment_id";
       tunnel1_address = Prop.computed __type __id "tunnel1_address";
       tunnel1_bgp_asn = Prop.computed __type __id "tunnel1_bgp_asn";
       tunnel1_bgp_holdtime =
         Prop.computed __type __id "tunnel1_bgp_holdtime";
       tunnel1_cgw_inside_address =
         Prop.computed __type __id "tunnel1_cgw_inside_address";
       tunnel1_dpd_timeout_action =
         Prop.computed __type __id "tunnel1_dpd_timeout_action";
       tunnel1_dpd_timeout_seconds =
         Prop.computed __type __id "tunnel1_dpd_timeout_seconds";
       tunnel1_enable_tunnel_lifecycle_control =
         Prop.computed __type __id
           "tunnel1_enable_tunnel_lifecycle_control";
       tunnel1_ike_versions =
         Prop.computed __type __id "tunnel1_ike_versions";
       tunnel1_inside_cidr =
         Prop.computed __type __id "tunnel1_inside_cidr";
       tunnel1_inside_ipv6_cidr =
         Prop.computed __type __id "tunnel1_inside_ipv6_cidr";
       tunnel1_phase1_dh_group_numbers =
         Prop.computed __type __id "tunnel1_phase1_dh_group_numbers";
       tunnel1_phase1_encryption_algorithms =
         Prop.computed __type __id
           "tunnel1_phase1_encryption_algorithms";
       tunnel1_phase1_integrity_algorithms =
         Prop.computed __type __id
           "tunnel1_phase1_integrity_algorithms";
       tunnel1_phase1_lifetime_seconds =
         Prop.computed __type __id "tunnel1_phase1_lifetime_seconds";
       tunnel1_phase2_dh_group_numbers =
         Prop.computed __type __id "tunnel1_phase2_dh_group_numbers";
       tunnel1_phase2_encryption_algorithms =
         Prop.computed __type __id
           "tunnel1_phase2_encryption_algorithms";
       tunnel1_phase2_integrity_algorithms =
         Prop.computed __type __id
           "tunnel1_phase2_integrity_algorithms";
       tunnel1_phase2_lifetime_seconds =
         Prop.computed __type __id "tunnel1_phase2_lifetime_seconds";
       tunnel1_preshared_key =
         Prop.computed __type __id "tunnel1_preshared_key";
       tunnel1_rekey_fuzz_percentage =
         Prop.computed __type __id "tunnel1_rekey_fuzz_percentage";
       tunnel1_rekey_margin_time_seconds =
         Prop.computed __type __id
           "tunnel1_rekey_margin_time_seconds";
       tunnel1_replay_window_size =
         Prop.computed __type __id "tunnel1_replay_window_size";
       tunnel1_startup_action =
         Prop.computed __type __id "tunnel1_startup_action";
       tunnel1_vgw_inside_address =
         Prop.computed __type __id "tunnel1_vgw_inside_address";
       tunnel2_address = Prop.computed __type __id "tunnel2_address";
       tunnel2_bgp_asn = Prop.computed __type __id "tunnel2_bgp_asn";
       tunnel2_bgp_holdtime =
         Prop.computed __type __id "tunnel2_bgp_holdtime";
       tunnel2_cgw_inside_address =
         Prop.computed __type __id "tunnel2_cgw_inside_address";
       tunnel2_dpd_timeout_action =
         Prop.computed __type __id "tunnel2_dpd_timeout_action";
       tunnel2_dpd_timeout_seconds =
         Prop.computed __type __id "tunnel2_dpd_timeout_seconds";
       tunnel2_enable_tunnel_lifecycle_control =
         Prop.computed __type __id
           "tunnel2_enable_tunnel_lifecycle_control";
       tunnel2_ike_versions =
         Prop.computed __type __id "tunnel2_ike_versions";
       tunnel2_inside_cidr =
         Prop.computed __type __id "tunnel2_inside_cidr";
       tunnel2_inside_ipv6_cidr =
         Prop.computed __type __id "tunnel2_inside_ipv6_cidr";
       tunnel2_phase1_dh_group_numbers =
         Prop.computed __type __id "tunnel2_phase1_dh_group_numbers";
       tunnel2_phase1_encryption_algorithms =
         Prop.computed __type __id
           "tunnel2_phase1_encryption_algorithms";
       tunnel2_phase1_integrity_algorithms =
         Prop.computed __type __id
           "tunnel2_phase1_integrity_algorithms";
       tunnel2_phase1_lifetime_seconds =
         Prop.computed __type __id "tunnel2_phase1_lifetime_seconds";
       tunnel2_phase2_dh_group_numbers =
         Prop.computed __type __id "tunnel2_phase2_dh_group_numbers";
       tunnel2_phase2_encryption_algorithms =
         Prop.computed __type __id
           "tunnel2_phase2_encryption_algorithms";
       tunnel2_phase2_integrity_algorithms =
         Prop.computed __type __id
           "tunnel2_phase2_integrity_algorithms";
       tunnel2_phase2_lifetime_seconds =
         Prop.computed __type __id "tunnel2_phase2_lifetime_seconds";
       tunnel2_preshared_key =
         Prop.computed __type __id "tunnel2_preshared_key";
       tunnel2_rekey_fuzz_percentage =
         Prop.computed __type __id "tunnel2_rekey_fuzz_percentage";
       tunnel2_rekey_margin_time_seconds =
         Prop.computed __type __id
           "tunnel2_rekey_margin_time_seconds";
       tunnel2_replay_window_size =
         Prop.computed __type __id "tunnel2_replay_window_size";
       tunnel2_startup_action =
         Prop.computed __type __id "tunnel2_startup_action";
       tunnel2_vgw_inside_address =
         Prop.computed __type __id "tunnel2_vgw_inside_address";
       tunnel_inside_ip_version =
         Prop.computed __type __id "tunnel_inside_ip_version";
       type_ = Prop.computed __type __id "type";
       vgw_telemetry = Prop.computed __type __id "vgw_telemetry";
       vpn_gateway_id = Prop.computed __type __id "vpn_gateway_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpn_connection
        (aws_vpn_connection ?enable_acceleration ?id
           ?local_ipv4_network_cidr ?local_ipv6_network_cidr
           ?outside_ip_address_type ?remote_ipv4_network_cidr
           ?remote_ipv6_network_cidr ?static_routes_only ?tags
           ?tags_all ?transit_gateway_id
           ?transport_transit_gateway_attachment_id
           ?tunnel1_dpd_timeout_action ?tunnel1_dpd_timeout_seconds
           ?tunnel1_enable_tunnel_lifecycle_control
           ?tunnel1_ike_versions ?tunnel1_inside_cidr
           ?tunnel1_inside_ipv6_cidr ?tunnel1_phase1_dh_group_numbers
           ?tunnel1_phase1_encryption_algorithms
           ?tunnel1_phase1_integrity_algorithms
           ?tunnel1_phase1_lifetime_seconds
           ?tunnel1_phase2_dh_group_numbers
           ?tunnel1_phase2_encryption_algorithms
           ?tunnel1_phase2_integrity_algorithms
           ?tunnel1_phase2_lifetime_seconds ?tunnel1_preshared_key
           ?tunnel1_rekey_fuzz_percentage
           ?tunnel1_rekey_margin_time_seconds
           ?tunnel1_replay_window_size ?tunnel1_startup_action
           ?tunnel2_dpd_timeout_action ?tunnel2_dpd_timeout_seconds
           ?tunnel2_enable_tunnel_lifecycle_control
           ?tunnel2_ike_versions ?tunnel2_inside_cidr
           ?tunnel2_inside_ipv6_cidr ?tunnel2_phase1_dh_group_numbers
           ?tunnel2_phase1_encryption_algorithms
           ?tunnel2_phase1_integrity_algorithms
           ?tunnel2_phase1_lifetime_seconds
           ?tunnel2_phase2_dh_group_numbers
           ?tunnel2_phase2_encryption_algorithms
           ?tunnel2_phase2_integrity_algorithms
           ?tunnel2_phase2_lifetime_seconds ?tunnel2_preshared_key
           ?tunnel2_rekey_fuzz_percentage
           ?tunnel2_rekey_margin_time_seconds
           ?tunnel2_replay_window_size ?tunnel2_startup_action
           ?tunnel_inside_ip_version ?vpn_gateway_id
           ~tunnel1_log_options ~tunnel2_log_options
           ~customer_gateway_id ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?enable_acceleration ?id
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
    ?tunnel_inside_ip_version ?vpn_gateway_id
    ?(tunnel1_log_options = []) ?(tunnel2_log_options = [])
    ~customer_gateway_id ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?enable_acceleration ?id ?local_ipv4_network_cidr
      ?local_ipv6_network_cidr ?outside_ip_address_type
      ?remote_ipv4_network_cidr ?remote_ipv6_network_cidr
      ?static_routes_only ?tags ?tags_all ?transit_gateway_id
      ?transport_transit_gateway_attachment_id
      ?tunnel1_dpd_timeout_action ?tunnel1_dpd_timeout_seconds
      ?tunnel1_enable_tunnel_lifecycle_control ?tunnel1_ike_versions
      ?tunnel1_inside_cidr ?tunnel1_inside_ipv6_cidr
      ?tunnel1_phase1_dh_group_numbers
      ?tunnel1_phase1_encryption_algorithms
      ?tunnel1_phase1_integrity_algorithms
      ?tunnel1_phase1_lifetime_seconds
      ?tunnel1_phase2_dh_group_numbers
      ?tunnel1_phase2_encryption_algorithms
      ?tunnel1_phase2_integrity_algorithms
      ?tunnel1_phase2_lifetime_seconds ?tunnel1_preshared_key
      ?tunnel1_rekey_fuzz_percentage
      ?tunnel1_rekey_margin_time_seconds ?tunnel1_replay_window_size
      ?tunnel1_startup_action ?tunnel2_dpd_timeout_action
      ?tunnel2_dpd_timeout_seconds
      ?tunnel2_enable_tunnel_lifecycle_control ?tunnel2_ike_versions
      ?tunnel2_inside_cidr ?tunnel2_inside_ipv6_cidr
      ?tunnel2_phase1_dh_group_numbers
      ?tunnel2_phase1_encryption_algorithms
      ?tunnel2_phase1_integrity_algorithms
      ?tunnel2_phase1_lifetime_seconds
      ?tunnel2_phase2_dh_group_numbers
      ?tunnel2_phase2_encryption_algorithms
      ?tunnel2_phase2_integrity_algorithms
      ?tunnel2_phase2_lifetime_seconds ?tunnel2_preshared_key
      ?tunnel2_rekey_fuzz_percentage
      ?tunnel2_rekey_margin_time_seconds ?tunnel2_replay_window_size
      ?tunnel2_startup_action ?tunnel_inside_ip_version
      ?vpn_gateway_id ~tunnel1_log_options ~tunnel2_log_options
      ~customer_gateway_id ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
