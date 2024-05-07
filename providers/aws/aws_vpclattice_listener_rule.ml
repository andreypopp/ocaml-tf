(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action__fixed_response = { status_code : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : action__fixed_response) -> ()

let yojson_of_action__fixed_response =
  (function
   | { status_code = v_status_code } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_status_code in
         ("status_code", arg) :: bnds
       in
       `Assoc bnds
    : action__fixed_response -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action__fixed_response

[@@@deriving.end]

type action__forward__target_groups = {
  target_group_identifier : string prop;
  weight : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action__forward__target_groups) -> ()

let yojson_of_action__forward__target_groups =
  (function
   | {
       target_group_identifier = v_target_group_identifier;
       weight = v_weight;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "weight", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_group_identifier
         in
         ("target_group_identifier", arg) :: bnds
       in
       `Assoc bnds
    : action__forward__target_groups ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action__forward__target_groups

[@@@deriving.end]

type action__forward = {
  target_groups : action__forward__target_groups list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action__forward) -> ()

let yojson_of_action__forward =
  (function
   | { target_groups = v_target_groups } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_action__forward__target_groups
             v_target_groups
         in
         ("target_groups", arg) :: bnds
       in
       `Assoc bnds
    : action__forward -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action__forward

[@@@deriving.end]

type action = {
  fixed_response : action__fixed_response list;
  forward : action__forward list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action) -> ()

let yojson_of_action =
  (function
   | { fixed_response = v_fixed_response; forward = v_forward } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_action__forward v_forward
         in
         ("forward", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_action__fixed_response
             v_fixed_response
         in
         ("fixed_response", arg) :: bnds
       in
       `Assoc bnds
    : action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action

[@@@deriving.end]

type match__http_match__header_matches__match = {
  contains : string prop option; [@option]
  exact : string prop option; [@option]
  prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : match__http_match__header_matches__match) -> ()

let yojson_of_match__http_match__header_matches__match =
  (function
   | { contains = v_contains; exact = v_exact; prefix = v_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exact with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exact", arg in
             bnd :: bnds
       in
       let bnds =
         match v_contains with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "contains", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : match__http_match__header_matches__match ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_match__http_match__header_matches__match

[@@@deriving.end]

type match__http_match__header_matches = {
  case_sensitive : bool prop option; [@option]
  name : string prop;
  match_ : match__http_match__header_matches__match list;
      [@key "match"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : match__http_match__header_matches) -> ()

let yojson_of_match__http_match__header_matches =
  (function
   | {
       case_sensitive = v_case_sensitive;
       name = v_name;
       match_ = v_match_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_match__http_match__header_matches__match
             v_match_
         in
         ("match", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_case_sensitive with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "case_sensitive", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : match__http_match__header_matches ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_match__http_match__header_matches

[@@@deriving.end]

type match__http_match__path_match__match = {
  exact : string prop option; [@option]
  prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : match__http_match__path_match__match) -> ()

let yojson_of_match__http_match__path_match__match =
  (function
   | { exact = v_exact; prefix = v_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exact with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exact", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : match__http_match__path_match__match ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_match__http_match__path_match__match

[@@@deriving.end]

type match__http_match__path_match = {
  case_sensitive : bool prop option; [@option]
  match_ : match__http_match__path_match__match list; [@key "match"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : match__http_match__path_match) -> ()

let yojson_of_match__http_match__path_match =
  (function
   | { case_sensitive = v_case_sensitive; match_ = v_match_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_match__http_match__path_match__match v_match_
         in
         ("match", arg) :: bnds
       in
       let bnds =
         match v_case_sensitive with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "case_sensitive", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : match__http_match__path_match ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_match__http_match__path_match

[@@@deriving.end]

type match__http_match = {
  method_ : string prop option; [@option] [@key "method"]
  header_matches : match__http_match__header_matches list;
  path_match : match__http_match__path_match list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : match__http_match) -> ()

let yojson_of_match__http_match =
  (function
   | {
       method_ = v_method_;
       header_matches = v_header_matches;
       path_match = v_path_match;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_match__http_match__path_match
             v_path_match
         in
         ("path_match", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_match__http_match__header_matches
             v_header_matches
         in
         ("header_matches", arg) :: bnds
       in
       let bnds =
         match v_method_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "method", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : match__http_match -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_match__http_match

[@@@deriving.end]

type match_ = { http_match : match__http_match list }
[@@deriving_inline yojson_of]

let _ = fun (_ : match_) -> ()

let yojson_of_match_ =
  (function
   | { http_match = v_http_match } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_match__http_match v_http_match
         in
         ("http_match", arg) :: bnds
       in
       `Assoc bnds
    : match_ -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_match_

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

type aws_vpclattice_listener_rule = {
  id : string prop option; [@option]
  listener_identifier : string prop;
  name : string prop;
  priority : float prop;
  service_identifier : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  action : action list;
  match_ : match_ list; [@key "match"]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpclattice_listener_rule) -> ()

let yojson_of_aws_vpclattice_listener_rule =
  (function
   | {
       id = v_id;
       listener_identifier = v_listener_identifier;
       name = v_name;
       priority = v_priority;
       service_identifier = v_service_identifier;
       tags = v_tags;
       tags_all = v_tags_all;
       action = v_action;
       match_ = v_match_;
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
         let arg = yojson_of_list yojson_of_match_ v_match_ in
         ("match", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_action v_action in
         ("action", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_service_identifier
         in
         ("service_identifier", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_listener_identifier
         in
         ("listener_identifier", arg) :: bnds
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
    : aws_vpclattice_listener_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpclattice_listener_rule

[@@@deriving.end]

let action__fixed_response ~status_code () : action__fixed_response =
  { status_code }

let action__forward__target_groups ?weight ~target_group_identifier
    () : action__forward__target_groups =
  { target_group_identifier; weight }

let action__forward ~target_groups () : action__forward =
  { target_groups }

let action ?(fixed_response = []) ?(forward = []) () : action =
  { fixed_response; forward }

let match__http_match__header_matches__match ?contains ?exact ?prefix
    () : match__http_match__header_matches__match =
  { contains; exact; prefix }

let match__http_match__header_matches ?case_sensitive ~name ~match_
    () : match__http_match__header_matches =
  { case_sensitive; name; match_ }

let match__http_match__path_match__match ?exact ?prefix () :
    match__http_match__path_match__match =
  { exact; prefix }

let match__http_match__path_match ?case_sensitive ~match_ () :
    match__http_match__path_match =
  { case_sensitive; match_ }

let match__http_match ?method_ ?(header_matches = [])
    ?(path_match = []) () : match__http_match =
  { method_; header_matches; path_match }

let match_ ?(http_match = []) () : match_ = { http_match }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_vpclattice_listener_rule ?id ?tags ?tags_all ?timeouts
    ~listener_identifier ~name ~priority ~service_identifier ~action
    ~match_ () : aws_vpclattice_listener_rule =
  {
    id;
    listener_identifier;
    name;
    priority;
    service_identifier;
    tags;
    tags_all;
    action;
    match_;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  listener_identifier : string prop;
  name : string prop;
  priority : float prop;
  rule_id : string prop;
  service_identifier : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?timeouts ~listener_identifier ~name
    ~priority ~service_identifier ~action ~match_ __id =
  let __type = "aws_vpclattice_listener_rule" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       listener_identifier =
         Prop.computed __type __id "listener_identifier";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
       rule_id = Prop.computed __type __id "rule_id";
       service_identifier =
         Prop.computed __type __id "service_identifier";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpclattice_listener_rule
        (aws_vpclattice_listener_rule ?id ?tags ?tags_all ?timeouts
           ~listener_identifier ~name ~priority ~service_identifier
           ~action ~match_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts
    ~listener_identifier ~name ~priority ~service_identifier ~action
    ~match_ __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~listener_identifier ~name
      ~priority ~service_identifier ~action ~match_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
