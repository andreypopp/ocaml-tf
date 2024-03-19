(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type tunnel1_log_options__cloudwatch_log_options = {
  log_enabled : bool prop option; [@option]  (** log_enabled *)
  log_group_arn : string prop option; [@option]  (** log_group_arn *)
  log_output_format : string prop option; [@option]
      (** log_output_format *)
}
[@@deriving yojson_of]
(** tunnel1_log_options__cloudwatch_log_options *)

type tunnel1_log_options = {
  cloudwatch_log_options :
    tunnel1_log_options__cloudwatch_log_options list;
}
[@@deriving yojson_of]
(** tunnel1_log_options *)

type tunnel2_log_options__cloudwatch_log_options = {
  log_enabled : bool prop option; [@option]  (** log_enabled *)
  log_group_arn : string prop option; [@option]  (** log_group_arn *)
  log_output_format : string prop option; [@option]
      (** log_output_format *)
}
[@@deriving yojson_of]
(** tunnel2_log_options__cloudwatch_log_options *)

type tunnel2_log_options = {
  cloudwatch_log_options :
    tunnel2_log_options__cloudwatch_log_options list;
}
[@@deriving yojson_of]
(** tunnel2_log_options *)

type routes = {
  destination_cidr_block : string prop;
      (** destination_cidr_block *)
  source : string prop;  (** source *)
  state : string prop;  (** state *)
}
[@@deriving yojson_of]

type vgw_telemetry = {
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
  tunnel1_log_options : tunnel1_log_options list;
  tunnel2_log_options : tunnel2_log_options list;
}
[@@deriving yojson_of]
(** aws_vpn_connection *)

let tunnel1_log_options__cloudwatch_log_options ?log_enabled
    ?log_group_arn ?log_output_format () :
    tunnel1_log_options__cloudwatch_log_options =
  { log_enabled; log_group_arn; log_output_format }

let tunnel1_log_options ~cloudwatch_log_options () :
    tunnel1_log_options =
  { cloudwatch_log_options }

let tunnel2_log_options__cloudwatch_log_options ?log_enabled
    ?log_group_arn ?log_output_format () :
    tunnel2_log_options__cloudwatch_log_options =
  { log_enabled; log_group_arn; log_output_format }

let tunnel2_log_options ~cloudwatch_log_options () :
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
    ?tunnel_inside_ip_version ?vpn_gateway_id ~customer_gateway_id
    ~type_ ~tunnel1_log_options ~tunnel2_log_options () :
    aws_vpn_connection =
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
    ?tunnel_inside_ip_version ?vpn_gateway_id ~customer_gateway_id
    ~type_ ~tunnel1_log_options ~tunnel2_log_options __resource_id =
  let __resource_type = "aws_vpn_connection" in
  let __resource =
    aws_vpn_connection ?enable_acceleration ?id
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
      ?vpn_gateway_id ~customer_gateway_id ~type_
      ~tunnel1_log_options ~tunnel2_log_options ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpn_connection __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       core_network_arn =
         Prop.computed __resource_type __resource_id
           "core_network_arn";
       core_network_attachment_arn =
         Prop.computed __resource_type __resource_id
           "core_network_attachment_arn";
       customer_gateway_configuration =
         Prop.computed __resource_type __resource_id
           "customer_gateway_configuration";
       customer_gateway_id =
         Prop.computed __resource_type __resource_id
           "customer_gateway_id";
       enable_acceleration =
         Prop.computed __resource_type __resource_id
           "enable_acceleration";
       id = Prop.computed __resource_type __resource_id "id";
       local_ipv4_network_cidr =
         Prop.computed __resource_type __resource_id
           "local_ipv4_network_cidr";
       local_ipv6_network_cidr =
         Prop.computed __resource_type __resource_id
           "local_ipv6_network_cidr";
       outside_ip_address_type =
         Prop.computed __resource_type __resource_id
           "outside_ip_address_type";
       remote_ipv4_network_cidr =
         Prop.computed __resource_type __resource_id
           "remote_ipv4_network_cidr";
       remote_ipv6_network_cidr =
         Prop.computed __resource_type __resource_id
           "remote_ipv6_network_cidr";
       routes = Prop.computed __resource_type __resource_id "routes";
       static_routes_only =
         Prop.computed __resource_type __resource_id
           "static_routes_only";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       transit_gateway_attachment_id =
         Prop.computed __resource_type __resource_id
           "transit_gateway_attachment_id";
       transit_gateway_id =
         Prop.computed __resource_type __resource_id
           "transit_gateway_id";
       transport_transit_gateway_attachment_id =
         Prop.computed __resource_type __resource_id
           "transport_transit_gateway_attachment_id";
       tunnel1_address =
         Prop.computed __resource_type __resource_id
           "tunnel1_address";
       tunnel1_bgp_asn =
         Prop.computed __resource_type __resource_id
           "tunnel1_bgp_asn";
       tunnel1_bgp_holdtime =
         Prop.computed __resource_type __resource_id
           "tunnel1_bgp_holdtime";
       tunnel1_cgw_inside_address =
         Prop.computed __resource_type __resource_id
           "tunnel1_cgw_inside_address";
       tunnel1_dpd_timeout_action =
         Prop.computed __resource_type __resource_id
           "tunnel1_dpd_timeout_action";
       tunnel1_dpd_timeout_seconds =
         Prop.computed __resource_type __resource_id
           "tunnel1_dpd_timeout_seconds";
       tunnel1_enable_tunnel_lifecycle_control =
         Prop.computed __resource_type __resource_id
           "tunnel1_enable_tunnel_lifecycle_control";
       tunnel1_ike_versions =
         Prop.computed __resource_type __resource_id
           "tunnel1_ike_versions";
       tunnel1_inside_cidr =
         Prop.computed __resource_type __resource_id
           "tunnel1_inside_cidr";
       tunnel1_inside_ipv6_cidr =
         Prop.computed __resource_type __resource_id
           "tunnel1_inside_ipv6_cidr";
       tunnel1_phase1_dh_group_numbers =
         Prop.computed __resource_type __resource_id
           "tunnel1_phase1_dh_group_numbers";
       tunnel1_phase1_encryption_algorithms =
         Prop.computed __resource_type __resource_id
           "tunnel1_phase1_encryption_algorithms";
       tunnel1_phase1_integrity_algorithms =
         Prop.computed __resource_type __resource_id
           "tunnel1_phase1_integrity_algorithms";
       tunnel1_phase1_lifetime_seconds =
         Prop.computed __resource_type __resource_id
           "tunnel1_phase1_lifetime_seconds";
       tunnel1_phase2_dh_group_numbers =
         Prop.computed __resource_type __resource_id
           "tunnel1_phase2_dh_group_numbers";
       tunnel1_phase2_encryption_algorithms =
         Prop.computed __resource_type __resource_id
           "tunnel1_phase2_encryption_algorithms";
       tunnel1_phase2_integrity_algorithms =
         Prop.computed __resource_type __resource_id
           "tunnel1_phase2_integrity_algorithms";
       tunnel1_phase2_lifetime_seconds =
         Prop.computed __resource_type __resource_id
           "tunnel1_phase2_lifetime_seconds";
       tunnel1_preshared_key =
         Prop.computed __resource_type __resource_id
           "tunnel1_preshared_key";
       tunnel1_rekey_fuzz_percentage =
         Prop.computed __resource_type __resource_id
           "tunnel1_rekey_fuzz_percentage";
       tunnel1_rekey_margin_time_seconds =
         Prop.computed __resource_type __resource_id
           "tunnel1_rekey_margin_time_seconds";
       tunnel1_replay_window_size =
         Prop.computed __resource_type __resource_id
           "tunnel1_replay_window_size";
       tunnel1_startup_action =
         Prop.computed __resource_type __resource_id
           "tunnel1_startup_action";
       tunnel1_vgw_inside_address =
         Prop.computed __resource_type __resource_id
           "tunnel1_vgw_inside_address";
       tunnel2_address =
         Prop.computed __resource_type __resource_id
           "tunnel2_address";
       tunnel2_bgp_asn =
         Prop.computed __resource_type __resource_id
           "tunnel2_bgp_asn";
       tunnel2_bgp_holdtime =
         Prop.computed __resource_type __resource_id
           "tunnel2_bgp_holdtime";
       tunnel2_cgw_inside_address =
         Prop.computed __resource_type __resource_id
           "tunnel2_cgw_inside_address";
       tunnel2_dpd_timeout_action =
         Prop.computed __resource_type __resource_id
           "tunnel2_dpd_timeout_action";
       tunnel2_dpd_timeout_seconds =
         Prop.computed __resource_type __resource_id
           "tunnel2_dpd_timeout_seconds";
       tunnel2_enable_tunnel_lifecycle_control =
         Prop.computed __resource_type __resource_id
           "tunnel2_enable_tunnel_lifecycle_control";
       tunnel2_ike_versions =
         Prop.computed __resource_type __resource_id
           "tunnel2_ike_versions";
       tunnel2_inside_cidr =
         Prop.computed __resource_type __resource_id
           "tunnel2_inside_cidr";
       tunnel2_inside_ipv6_cidr =
         Prop.computed __resource_type __resource_id
           "tunnel2_inside_ipv6_cidr";
       tunnel2_phase1_dh_group_numbers =
         Prop.computed __resource_type __resource_id
           "tunnel2_phase1_dh_group_numbers";
       tunnel2_phase1_encryption_algorithms =
         Prop.computed __resource_type __resource_id
           "tunnel2_phase1_encryption_algorithms";
       tunnel2_phase1_integrity_algorithms =
         Prop.computed __resource_type __resource_id
           "tunnel2_phase1_integrity_algorithms";
       tunnel2_phase1_lifetime_seconds =
         Prop.computed __resource_type __resource_id
           "tunnel2_phase1_lifetime_seconds";
       tunnel2_phase2_dh_group_numbers =
         Prop.computed __resource_type __resource_id
           "tunnel2_phase2_dh_group_numbers";
       tunnel2_phase2_encryption_algorithms =
         Prop.computed __resource_type __resource_id
           "tunnel2_phase2_encryption_algorithms";
       tunnel2_phase2_integrity_algorithms =
         Prop.computed __resource_type __resource_id
           "tunnel2_phase2_integrity_algorithms";
       tunnel2_phase2_lifetime_seconds =
         Prop.computed __resource_type __resource_id
           "tunnel2_phase2_lifetime_seconds";
       tunnel2_preshared_key =
         Prop.computed __resource_type __resource_id
           "tunnel2_preshared_key";
       tunnel2_rekey_fuzz_percentage =
         Prop.computed __resource_type __resource_id
           "tunnel2_rekey_fuzz_percentage";
       tunnel2_rekey_margin_time_seconds =
         Prop.computed __resource_type __resource_id
           "tunnel2_rekey_margin_time_seconds";
       tunnel2_replay_window_size =
         Prop.computed __resource_type __resource_id
           "tunnel2_replay_window_size";
       tunnel2_startup_action =
         Prop.computed __resource_type __resource_id
           "tunnel2_startup_action";
       tunnel2_vgw_inside_address =
         Prop.computed __resource_type __resource_id
           "tunnel2_vgw_inside_address";
       tunnel_inside_ip_version =
         Prop.computed __resource_type __resource_id
           "tunnel_inside_ip_version";
       type_ = Prop.computed __resource_type __resource_id "type";
       vgw_telemetry =
         Prop.computed __resource_type __resource_id "vgw_telemetry";
       vpn_gateway_id =
         Prop.computed __resource_type __resource_id "vpn_gateway_id";
     }
      : t)
  in
  __resource_attributes
