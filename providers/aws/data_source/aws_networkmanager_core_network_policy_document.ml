(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type attachment_policies__action = {
  add_to_network_function_group : string prop option; [@option]
  association_method : string prop option; [@option]
  require_acceptance : bool prop option; [@option]
  segment : string prop option; [@option]
  tag_value_of_key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attachment_policies__action) -> ()

let yojson_of_attachment_policies__action =
  (function
   | {
       add_to_network_function_group =
         v_add_to_network_function_group;
       association_method = v_association_method;
       require_acceptance = v_require_acceptance;
       segment = v_segment;
       tag_value_of_key = v_tag_value_of_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tag_value_of_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag_value_of_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_segment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "segment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_acceptance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_acceptance", arg in
             bnd :: bnds
       in
       let bnds =
         match v_association_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "association_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_add_to_network_function_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "add_to_network_function_group", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : attachment_policies__action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attachment_policies__action

[@@@deriving.end]

type attachment_policies__conditions = {
  key : string prop option; [@option]
  operator : string prop option; [@option]
  type_ : string prop; [@key "type"]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attachment_policies__conditions) -> ()

let yojson_of_attachment_policies__conditions =
  (function
   | {
       key = v_key;
       operator = v_operator;
       type_ = v_type_;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : attachment_policies__conditions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attachment_policies__conditions

[@@@deriving.end]

type attachment_policies = {
  condition_logic : string prop option; [@option]
  description : string prop option; [@option]
  rule_number : float prop;
  action : attachment_policies__action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  conditions : attachment_policies__conditions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attachment_policies) -> ()

let yojson_of_attachment_policies =
  (function
   | {
       condition_logic = v_condition_logic;
       description = v_description;
       rule_number = v_rule_number;
       action = v_action;
       conditions = v_conditions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_conditions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_attachment_policies__conditions)
               v_conditions
           in
           let bnd = "conditions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_attachment_policies__action)
               v_action
           in
           let bnd = "action", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_rule_number in
         ("rule_number", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_condition_logic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "condition_logic", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : attachment_policies -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attachment_policies

[@@@deriving.end]

type core_network_configuration__edge_locations = {
  asn : string prop option; [@option]
  inside_cidr_blocks : string prop list option; [@option]
  location : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : core_network_configuration__edge_locations) -> ()

let yojson_of_core_network_configuration__edge_locations =
  (function
   | {
       asn = v_asn;
       inside_cidr_blocks = v_inside_cidr_blocks;
       location = v_location;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_inside_cidr_blocks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "inside_cidr_blocks", arg in
             bnd :: bnds
       in
       let bnds =
         match v_asn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "asn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : core_network_configuration__edge_locations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_core_network_configuration__edge_locations

[@@@deriving.end]

type core_network_configuration = {
  asn_ranges : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  inside_cidr_blocks : string prop list option; [@option]
  vpn_ecmp_support : bool prop option; [@option]
  edge_locations : core_network_configuration__edge_locations list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : core_network_configuration) -> ()

let yojson_of_core_network_configuration =
  (function
   | {
       asn_ranges = v_asn_ranges;
       inside_cidr_blocks = v_inside_cidr_blocks;
       vpn_ecmp_support = v_vpn_ecmp_support;
       edge_locations = v_edge_locations;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_edge_locations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_core_network_configuration__edge_locations)
               v_edge_locations
           in
           let bnd = "edge_locations", arg in
           bnd :: bnds
       in
       let bnds =
         match v_vpn_ecmp_support with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "vpn_ecmp_support", arg in
             bnd :: bnds
       in
       let bnds =
         match v_inside_cidr_blocks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "inside_cidr_blocks", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_asn_ranges then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_asn_ranges
           in
           let bnd = "asn_ranges", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : core_network_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_core_network_configuration

[@@@deriving.end]

type network_function_groups = {
  description : string prop option; [@option]
  name : string prop;
  require_attachment_acceptance : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_function_groups) -> ()

let yojson_of_network_function_groups =
  (function
   | {
       description = v_description;
       name = v_name;
       require_attachment_acceptance =
         v_require_attachment_acceptance;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_require_attachment_acceptance
         in
         ("require_attachment_acceptance", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_function_groups -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_function_groups

[@@@deriving.end]

type segment_actions__via__with_edge_override = {
  edge_sets : string prop list option; [@option]
  use_edge : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : segment_actions__via__with_edge_override) -> ()

let yojson_of_segment_actions__via__with_edge_override =
  (function
   | { edge_sets = v_edge_sets; use_edge = v_use_edge } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_use_edge with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "use_edge", arg in
             bnd :: bnds
       in
       let bnds =
         match v_edge_sets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "edge_sets", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : segment_actions__via__with_edge_override ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_segment_actions__via__with_edge_override

[@@@deriving.end]

type segment_actions__via = {
  network_function_groups : string prop list option; [@option]
  with_edge_override : segment_actions__via__with_edge_override list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : segment_actions__via) -> ()

let yojson_of_segment_actions__via =
  (function
   | {
       network_function_groups = v_network_function_groups;
       with_edge_override = v_with_edge_override;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_with_edge_override then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_segment_actions__via__with_edge_override)
               v_with_edge_override
           in
           let bnd = "with_edge_override", arg in
           bnd :: bnds
       in
       let bnds =
         match v_network_function_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "network_function_groups", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : segment_actions__via -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_segment_actions__via

[@@@deriving.end]

type segment_actions__when_sent_to = {
  segments : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : segment_actions__when_sent_to) -> ()

let yojson_of_segment_actions__when_sent_to =
  (function
   | { segments = v_segments } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_segments with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "segments", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : segment_actions__when_sent_to ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_segment_actions__when_sent_to

[@@@deriving.end]

type segment_actions = {
  action : string prop;
  description : string prop option; [@option]
  destination_cidr_blocks : string prop list option; [@option]
  destinations : string prop list option; [@option]
  mode : string prop option; [@option]
  segment : string prop;
  share_with : string prop list option; [@option]
  share_with_except : string prop list option; [@option]
  via : segment_actions__via list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  when_sent_to : segment_actions__when_sent_to list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : segment_actions) -> ()

let yojson_of_segment_actions =
  (function
   | {
       action = v_action;
       description = v_description;
       destination_cidr_blocks = v_destination_cidr_blocks;
       destinations = v_destinations;
       mode = v_mode;
       segment = v_segment;
       share_with = v_share_with;
       share_with_except = v_share_with_except;
       via = v_via;
       when_sent_to = v_when_sent_to;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_when_sent_to then bnds
         else
           let arg =
             (yojson_of_list yojson_of_segment_actions__when_sent_to)
               v_when_sent_to
           in
           let bnd = "when_sent_to", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_via then bnds
         else
           let arg =
             (yojson_of_list yojson_of_segment_actions__via) v_via
           in
           let bnd = "via", arg in
           bnd :: bnds
       in
       let bnds =
         match v_share_with_except with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "share_with_except", arg in
             bnd :: bnds
       in
       let bnds =
         match v_share_with with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "share_with", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_segment in
         ("segment", arg) :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destinations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "destinations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_cidr_blocks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "destination_cidr_blocks", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : segment_actions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_segment_actions

[@@@deriving.end]

type segments = {
  allow_filter : string prop list option; [@option]
  deny_filter : string prop list option; [@option]
  description : string prop option; [@option]
  edge_locations : string prop list option; [@option]
  isolate_attachments : bool prop option; [@option]
  name : string prop;
  require_attachment_acceptance : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : segments) -> ()

let yojson_of_segments =
  (function
   | {
       allow_filter = v_allow_filter;
       deny_filter = v_deny_filter;
       description = v_description;
       edge_locations = v_edge_locations;
       isolate_attachments = v_isolate_attachments;
       name = v_name;
       require_attachment_acceptance =
         v_require_attachment_acceptance;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_require_attachment_acceptance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_attachment_acceptance", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_isolate_attachments with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "isolate_attachments", arg in
             bnd :: bnds
       in
       let bnds =
         match v_edge_locations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "edge_locations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deny_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "deny_filter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allow_filter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : segments -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_segments

[@@@deriving.end]

type aws_networkmanager_core_network_policy_document = {
  id : string prop option; [@option]
  version : string prop option; [@option]
  attachment_policies : attachment_policies list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  core_network_configuration : core_network_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_function_groups : network_function_groups list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  segment_actions : segment_actions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  segments : segments list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_networkmanager_core_network_policy_document) -> ()

let yojson_of_aws_networkmanager_core_network_policy_document =
  (function
   | {
       id = v_id;
       version = v_version;
       attachment_policies = v_attachment_policies;
       core_network_configuration = v_core_network_configuration;
       network_function_groups = v_network_function_groups;
       segment_actions = v_segment_actions;
       segments = v_segments;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_segments then bnds
         else
           let arg =
             (yojson_of_list yojson_of_segments) v_segments
           in
           let bnd = "segments", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_segment_actions then bnds
         else
           let arg =
             (yojson_of_list yojson_of_segment_actions)
               v_segment_actions
           in
           let bnd = "segment_actions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_function_groups then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_function_groups)
               v_network_function_groups
           in
           let bnd = "network_function_groups", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_core_network_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_core_network_configuration)
               v_core_network_configuration
           in
           let bnd = "core_network_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_attachment_policies then bnds
         else
           let arg =
             (yojson_of_list yojson_of_attachment_policies)
               v_attachment_policies
           in
           let bnd = "attachment_policies", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
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
       `Assoc bnds
    : aws_networkmanager_core_network_policy_document ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkmanager_core_network_policy_document

[@@@deriving.end]

let attachment_policies__action ?add_to_network_function_group
    ?association_method ?require_acceptance ?segment
    ?tag_value_of_key () : attachment_policies__action =
  {
    add_to_network_function_group;
    association_method;
    require_acceptance;
    segment;
    tag_value_of_key;
  }

let attachment_policies__conditions ?key ?operator ?value ~type_ () :
    attachment_policies__conditions =
  { key; operator; type_; value }

let attachment_policies ?condition_logic ?description ~rule_number
    ~action ~conditions () : attachment_policies =
  { condition_logic; description; rule_number; action; conditions }

let core_network_configuration__edge_locations ?asn
    ?inside_cidr_blocks ~location () :
    core_network_configuration__edge_locations =
  { asn; inside_cidr_blocks; location }

let core_network_configuration ?inside_cidr_blocks ?vpn_ecmp_support
    ~asn_ranges ~edge_locations () : core_network_configuration =
  {
    asn_ranges;
    inside_cidr_blocks;
    vpn_ecmp_support;
    edge_locations;
  }

let network_function_groups ?description ~name
    ~require_attachment_acceptance () : network_function_groups =
  { description; name; require_attachment_acceptance }

let segment_actions__via__with_edge_override ?edge_sets ?use_edge ()
    : segment_actions__via__with_edge_override =
  { edge_sets; use_edge }

let segment_actions__via ?network_function_groups
    ?(with_edge_override = []) () : segment_actions__via =
  { network_function_groups; with_edge_override }

let segment_actions__when_sent_to ?segments () :
    segment_actions__when_sent_to =
  { segments }

let segment_actions ?description ?destination_cidr_blocks
    ?destinations ?mode ?share_with ?share_with_except ?(via = [])
    ?(when_sent_to = []) ~action ~segment () : segment_actions =
  {
    action;
    description;
    destination_cidr_blocks;
    destinations;
    mode;
    segment;
    share_with;
    share_with_except;
    via;
    when_sent_to;
  }

let segments ?allow_filter ?deny_filter ?description ?edge_locations
    ?isolate_attachments ?require_attachment_acceptance ~name () :
    segments =
  {
    allow_filter;
    deny_filter;
    description;
    edge_locations;
    isolate_attachments;
    name;
    require_attachment_acceptance;
  }

let aws_networkmanager_core_network_policy_document ?id ?version
    ?(attachment_policies = []) ?(network_function_groups = [])
    ?(segment_actions = []) ~core_network_configuration ~segments ()
    : aws_networkmanager_core_network_policy_document =
  {
    id;
    version;
    attachment_policies;
    core_network_configuration;
    network_function_groups;
    segment_actions;
    segments;
  }

type t = {
  tf_name : string;
  id : string prop;
  json : string prop;
  version : string prop;
}

let make ?id ?version ?(attachment_policies = [])
    ?(network_function_groups = []) ?(segment_actions = [])
    ~core_network_configuration ~segments __id =
  let __type = "aws_networkmanager_core_network_policy_document" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       json = Prop.computed __type __id "json";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_core_network_policy_document
        (aws_networkmanager_core_network_policy_document ?id ?version
           ~attachment_policies ~network_function_groups
           ~segment_actions ~core_network_configuration ~segments ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?version ?(attachment_policies = [])
    ?(network_function_groups = []) ?(segment_actions = [])
    ~core_network_configuration ~segments __id =
  let (r : _ Tf_core.resource) =
    make ?id ?version ~attachment_policies ~network_function_groups
      ~segment_actions ~core_network_configuration ~segments __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
