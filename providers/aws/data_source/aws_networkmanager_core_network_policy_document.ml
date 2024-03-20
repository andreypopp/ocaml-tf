(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type attachment_policies__action = {
  association_method : string prop;
  require_acceptance : bool prop option; [@option]
  segment : string prop option; [@option]
  tag_value_of_key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attachment_policies__action) -> ()

let yojson_of_attachment_policies__action =
  (function
   | {
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
         let arg =
           yojson_of_prop yojson_of_string v_association_method
         in
         ("association_method", arg) :: bnds
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
  conditions : attachment_policies__conditions list;
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
         let arg =
           yojson_of_list yojson_of_attachment_policies__conditions
             v_conditions
         in
         ("conditions", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_attachment_policies__action
             v_action
         in
         ("action", arg) :: bnds
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
  inside_cidr_blocks : string prop list option; [@option]
  vpn_ecmp_support : bool prop option; [@option]
  edge_locations : core_network_configuration__edge_locations list;
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
         let arg =
           yojson_of_list
             yojson_of_core_network_configuration__edge_locations
             v_edge_locations
         in
         ("edge_locations", arg) :: bnds
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_asn_ranges
         in
         ("asn_ranges", arg) :: bnds
       in
       `Assoc bnds
    : core_network_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_core_network_configuration

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
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
  core_network_configuration : core_network_configuration list;
  segment_actions : segment_actions list;
  segments : segments list;
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
       segment_actions = v_segment_actions;
       segments = v_segments;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_segments v_segments in
         ("segments", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_segment_actions v_segment_actions
         in
         ("segment_actions", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_core_network_configuration
             v_core_network_configuration
         in
         ("core_network_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_attachment_policies
             v_attachment_policies
         in
         ("attachment_policies", arg) :: bnds
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

let attachment_policies__action ?require_acceptance ?segment
    ?tag_value_of_key ~association_method () :
    attachment_policies__action =
  {
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

let segment_actions ?description ?destination_cidr_blocks
    ?destinations ?mode ?share_with ?share_with_except ~action
    ~segment () : segment_actions =
  {
    action;
    description;
    destination_cidr_blocks;
    destinations;
    mode;
    segment;
    share_with;
    share_with_except;
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
    ~attachment_policies ~core_network_configuration ~segment_actions
    ~segments () : aws_networkmanager_core_network_policy_document =
  {
    id;
    version;
    attachment_policies;
    core_network_configuration;
    segment_actions;
    segments;
  }

type t = {
  id : string prop;
  json : string prop;
  version : string prop;
}

let make ?id ?version ~attachment_policies
    ~core_network_configuration ~segment_actions ~segments __id =
  let __type = "aws_networkmanager_core_network_policy_document" in
  let __attrs =
    ({
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
           ~attachment_policies ~core_network_configuration
           ~segment_actions ~segments ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?version ~attachment_policies
    ~core_network_configuration ~segment_actions ~segments __id =
  let (r : _ Tf_core.resource) =
    make ?id ?version ~attachment_policies
      ~core_network_configuration ~segment_actions ~segments __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
