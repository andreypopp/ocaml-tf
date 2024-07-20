(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type match__layer4_configs = {
  ip_protocol : string prop;
  ports : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : match__layer4_configs) -> ()

let yojson_of_match__layer4_configs =
  (function
   | { ip_protocol = v_ip_protocol; ports = v_ports } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ports", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_protocol in
         ("ip_protocol", arg) :: bnds
       in
       `Assoc bnds
    : match__layer4_configs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_match__layer4_configs

[@@@deriving.end]

type match__src_secure_tags = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : match__src_secure_tags) -> ()

let yojson_of_match__src_secure_tags =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : match__src_secure_tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_match__src_secure_tags

[@@@deriving.end]

type match_ = {
  dest_address_groups : string prop list option; [@option]
  dest_fqdns : string prop list option; [@option]
  dest_ip_ranges : string prop list option; [@option]
  dest_region_codes : string prop list option; [@option]
  dest_threat_intelligences : string prop list option; [@option]
  src_address_groups : string prop list option; [@option]
  src_fqdns : string prop list option; [@option]
  src_ip_ranges : string prop list option; [@option]
  src_region_codes : string prop list option; [@option]
  src_threat_intelligences : string prop list option; [@option]
  layer4_configs : match__layer4_configs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  src_secure_tags : match__src_secure_tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : match_) -> ()

let yojson_of_match_ =
  (function
   | {
       dest_address_groups = v_dest_address_groups;
       dest_fqdns = v_dest_fqdns;
       dest_ip_ranges = v_dest_ip_ranges;
       dest_region_codes = v_dest_region_codes;
       dest_threat_intelligences = v_dest_threat_intelligences;
       src_address_groups = v_src_address_groups;
       src_fqdns = v_src_fqdns;
       src_ip_ranges = v_src_ip_ranges;
       src_region_codes = v_src_region_codes;
       src_threat_intelligences = v_src_threat_intelligences;
       layer4_configs = v_layer4_configs;
       src_secure_tags = v_src_secure_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_src_secure_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_match__src_secure_tags)
               v_src_secure_tags
           in
           let bnd = "src_secure_tags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_layer4_configs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_match__layer4_configs)
               v_layer4_configs
           in
           let bnd = "layer4_configs", arg in
           bnd :: bnds
       in
       let bnds =
         match v_src_threat_intelligences with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "src_threat_intelligences", arg in
             bnd :: bnds
       in
       let bnds =
         match v_src_region_codes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "src_region_codes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_src_ip_ranges with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "src_ip_ranges", arg in
             bnd :: bnds
       in
       let bnds =
         match v_src_fqdns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "src_fqdns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_src_address_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "src_address_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dest_threat_intelligences with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "dest_threat_intelligences", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dest_region_codes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "dest_region_codes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dest_ip_ranges with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "dest_ip_ranges", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dest_fqdns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "dest_fqdns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dest_address_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "dest_address_groups", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : match_ -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_match_

[@@@deriving.end]

type target_secure_tags = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : target_secure_tags) -> ()

let yojson_of_target_secure_tags =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : target_secure_tags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_secure_tags

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_compute_region_network_firewall_policy_rule = {
  action : string prop;
  description : string prop option; [@option]
  direction : string prop;
  disabled : bool prop option; [@option]
  enable_logging : bool prop option; [@option]
  firewall_policy : string prop;
  id : string prop option; [@option]
  priority : float prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  rule_name : string prop option; [@option]
  security_profile_group : string prop option; [@option]
  target_service_accounts : string prop list option; [@option]
  tls_inspect : bool prop option; [@option]
  match_ : match_ list;
      [@key "match"]
      [@default []]
      [@yojson_drop_default Stdlib.( = )]
  target_secure_tags : target_secure_tags list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_compute_region_network_firewall_policy_rule) -> ()

let yojson_of_google_compute_region_network_firewall_policy_rule =
  (function
   | {
       action = v_action;
       description = v_description;
       direction = v_direction;
       disabled = v_disabled;
       enable_logging = v_enable_logging;
       firewall_policy = v_firewall_policy;
       id = v_id;
       priority = v_priority;
       project = v_project;
       region = v_region;
       rule_name = v_rule_name;
       security_profile_group = v_security_profile_group;
       target_service_accounts = v_target_service_accounts;
       tls_inspect = v_tls_inspect;
       match_ = v_match_;
       target_secure_tags = v_target_secure_tags;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_target_secure_tags then bnds
         else
           let arg =
             (yojson_of_list yojson_of_target_secure_tags)
               v_target_secure_tags
           in
           let bnd = "target_secure_tags", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_match_ then bnds
         else
           let arg = (yojson_of_list yojson_of_match_) v_match_ in
           let bnd = "match", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tls_inspect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "tls_inspect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_service_accounts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "target_service_accounts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_profile_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_profile_group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rule_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rule_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_firewall_policy
         in
         ("firewall_policy", arg) :: bnds
       in
       let bnds =
         match v_enable_logging with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_logging", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_direction in
         ("direction", arg) :: bnds
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
    : google_compute_region_network_firewall_policy_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_region_network_firewall_policy_rule

[@@@deriving.end]

let match__layer4_configs ?ports ~ip_protocol () :
    match__layer4_configs =
  { ip_protocol; ports }

let match__src_secure_tags ~name () : match__src_secure_tags =
  { name }

let match_ ?dest_address_groups ?dest_fqdns ?dest_ip_ranges
    ?dest_region_codes ?dest_threat_intelligences ?src_address_groups
    ?src_fqdns ?src_ip_ranges ?src_region_codes
    ?src_threat_intelligences ?(src_secure_tags = []) ~layer4_configs
    () : match_ =
  {
    dest_address_groups;
    dest_fqdns;
    dest_ip_ranges;
    dest_region_codes;
    dest_threat_intelligences;
    src_address_groups;
    src_fqdns;
    src_ip_ranges;
    src_region_codes;
    src_threat_intelligences;
    layer4_configs;
    src_secure_tags;
  }

let target_secure_tags ~name () : target_secure_tags = { name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_region_network_firewall_policy_rule ?description
    ?disabled ?enable_logging ?id ?project ?region ?rule_name
    ?security_profile_group ?target_service_accounts ?tls_inspect
    ?(target_secure_tags = []) ?timeouts ~action ~direction
    ~firewall_policy ~priority ~match_ () :
    google_compute_region_network_firewall_policy_rule =
  {
    action;
    description;
    direction;
    disabled;
    enable_logging;
    firewall_policy;
    id;
    priority;
    project;
    region;
    rule_name;
    security_profile_group;
    target_service_accounts;
    tls_inspect;
    match_;
    target_secure_tags;
    timeouts;
  }

type t = {
  tf_name : string;
  action : string prop;
  description : string prop;
  direction : string prop;
  disabled : bool prop;
  enable_logging : bool prop;
  firewall_policy : string prop;
  id : string prop;
  kind : string prop;
  priority : float prop;
  project : string prop;
  region : string prop;
  rule_name : string prop;
  rule_tuple_count : float prop;
  security_profile_group : string prop;
  target_service_accounts : string list prop;
  tls_inspect : bool prop;
}

let make ?description ?disabled ?enable_logging ?id ?project ?region
    ?rule_name ?security_profile_group ?target_service_accounts
    ?tls_inspect ?(target_secure_tags = []) ?timeouts ~action
    ~direction ~firewall_policy ~priority ~match_ __id =
  let __type =
    "google_compute_region_network_firewall_policy_rule"
  in
  let __attrs =
    ({
       tf_name = __id;
       action = Prop.computed __type __id "action";
       description = Prop.computed __type __id "description";
       direction = Prop.computed __type __id "direction";
       disabled = Prop.computed __type __id "disabled";
       enable_logging = Prop.computed __type __id "enable_logging";
       firewall_policy = Prop.computed __type __id "firewall_policy";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       priority = Prop.computed __type __id "priority";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       rule_name = Prop.computed __type __id "rule_name";
       rule_tuple_count =
         Prop.computed __type __id "rule_tuple_count";
       security_profile_group =
         Prop.computed __type __id "security_profile_group";
       target_service_accounts =
         Prop.computed __type __id "target_service_accounts";
       tls_inspect = Prop.computed __type __id "tls_inspect";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_region_network_firewall_policy_rule
        (google_compute_region_network_firewall_policy_rule
           ?description ?disabled ?enable_logging ?id ?project
           ?region ?rule_name ?security_profile_group
           ?target_service_accounts ?tls_inspect ~target_secure_tags
           ?timeouts ~action ~direction ~firewall_policy ~priority
           ~match_ ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?disabled ?enable_logging ?id
    ?project ?region ?rule_name ?security_profile_group
    ?target_service_accounts ?tls_inspect ?(target_secure_tags = [])
    ?timeouts ~action ~direction ~firewall_policy ~priority ~match_
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?disabled ?enable_logging ?id ?project ?region
      ?rule_name ?security_profile_group ?target_service_accounts
      ?tls_inspect ~target_secure_tags ?timeouts ~action ~direction
      ~firewall_policy ~priority ~match_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
