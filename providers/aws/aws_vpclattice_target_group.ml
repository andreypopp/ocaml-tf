(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type config__health_check__matcher = {
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__health_check__matcher) -> ()

let yojson_of_config__health_check__matcher =
  (function
   | { value = v_value } ->
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
       `Assoc bnds
    : config__health_check__matcher ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__health_check__matcher

[@@@deriving.end]

type config__health_check = {
  enabled : bool prop option; [@option]
  health_check_interval_seconds : float prop option; [@option]
  health_check_timeout_seconds : float prop option; [@option]
  healthy_threshold_count : float prop option; [@option]
  path : string prop option; [@option]
  port : float prop option; [@option]
  protocol : string prop option; [@option]
  protocol_version : string prop option; [@option]
  unhealthy_threshold_count : float prop option; [@option]
  matcher : config__health_check__matcher list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__health_check) -> ()

let yojson_of_config__health_check =
  (function
   | {
       enabled = v_enabled;
       health_check_interval_seconds =
         v_health_check_interval_seconds;
       health_check_timeout_seconds = v_health_check_timeout_seconds;
       healthy_threshold_count = v_healthy_threshold_count;
       path = v_path;
       port = v_port;
       protocol = v_protocol;
       protocol_version = v_protocol_version;
       unhealthy_threshold_count = v_unhealthy_threshold_count;
       matcher = v_matcher;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_config__health_check__matcher
             v_matcher
         in
         ("matcher", arg) :: bnds
       in
       let bnds =
         match v_unhealthy_threshold_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "unhealthy_threshold_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocol_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_healthy_threshold_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "healthy_threshold_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_health_check_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "health_check_timeout_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_health_check_interval_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "health_check_interval_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config__health_check -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__health_check

[@@@deriving.end]

type config = {
  ip_address_type : string prop option; [@option]
  lambda_event_structure_version : string prop option; [@option]
  port : float prop option; [@option]
  protocol : string prop option; [@option]
  protocol_version : string prop option; [@option]
  vpc_identifier : string prop option; [@option]
  health_check : config__health_check list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config) -> ()

let yojson_of_config =
  (function
   | {
       ip_address_type = v_ip_address_type;
       lambda_event_structure_version =
         v_lambda_event_structure_version;
       port = v_port;
       protocol = v_protocol;
       protocol_version = v_protocol_version;
       vpc_identifier = v_vpc_identifier;
       health_check = v_health_check;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_config__health_check
             v_health_check
         in
         ("health_check", arg) :: bnds
       in
       let bnds =
         match v_vpc_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocol_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lambda_event_structure_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lambda_event_structure_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_address_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config

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

type aws_vpclattice_target_group = {
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  type_ : string prop; [@key "type"]
  config : config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpclattice_target_group) -> ()

let yojson_of_aws_vpclattice_target_group =
  (function
   | {
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
       config = v_config;
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
         let arg = yojson_of_list yojson_of_config v_config in
         ("config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : aws_vpclattice_target_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpclattice_target_group

[@@@deriving.end]

let config__health_check__matcher ?value () :
    config__health_check__matcher =
  { value }

let config__health_check ?enabled ?health_check_interval_seconds
    ?health_check_timeout_seconds ?healthy_threshold_count ?path
    ?port ?protocol ?protocol_version ?unhealthy_threshold_count
    ?(matcher = []) () : config__health_check =
  {
    enabled;
    health_check_interval_seconds;
    health_check_timeout_seconds;
    healthy_threshold_count;
    path;
    port;
    protocol;
    protocol_version;
    unhealthy_threshold_count;
    matcher;
  }

let config ?ip_address_type ?lambda_event_structure_version ?port
    ?protocol ?protocol_version ?vpc_identifier ?(health_check = [])
    () : config =
  {
    ip_address_type;
    lambda_event_structure_version;
    port;
    protocol;
    protocol_version;
    vpc_identifier;
    health_check;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_vpclattice_target_group ?id ?tags ?tags_all ?(config = [])
    ?timeouts ~name ~type_ () : aws_vpclattice_target_group =
  { id; name; tags; tags_all; type_; config; timeouts }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?id ?tags ?tags_all ?(config = []) ?timeouts ~name ~type_
    __id =
  let __type = "aws_vpclattice_target_group" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpclattice_target_group
        (aws_vpclattice_target_group ?id ?tags ?tags_all ~config
           ?timeouts ~name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?(config = []) ?timeouts
    ~name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~config ?timeouts ~name ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
