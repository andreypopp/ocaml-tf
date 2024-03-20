(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type target_ip = {
  ip : string prop;
  port : float prop option; [@option]
  protocol : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_ip) -> ()

let yojson_of_target_ip =
  (function
   | { ip = v_ip; port = v_port; protocol = v_protocol } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_ip in
         ("ip", arg) :: bnds
       in
       `Assoc bnds
    : target_ip -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_ip

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

type aws_route53_resolver_rule = {
  domain_name : string prop;
  id : string prop option; [@option]
  name : string prop option; [@option]
  resolver_endpoint_id : string prop option; [@option]
  rule_type : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  target_ip : target_ip list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_resolver_rule) -> ()

let yojson_of_aws_route53_resolver_rule =
  (function
   | {
       domain_name = v_domain_name;
       id = v_id;
       name = v_name;
       resolver_endpoint_id = v_resolver_endpoint_id;
       rule_type = v_rule_type;
       tags = v_tags;
       tags_all = v_tags_all;
       target_ip = v_target_ip;
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
         let arg = yojson_of_list yojson_of_target_ip v_target_ip in
         ("target_ip", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_rule_type in
         ("rule_type", arg) :: bnds
       in
       let bnds =
         match v_resolver_endpoint_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resolver_endpoint_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_route53_resolver_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_resolver_rule

[@@@deriving.end]

let target_ip ?port ?protocol ~ip () : target_ip =
  { ip; port; protocol }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_route53_resolver_rule ?id ?name ?resolver_endpoint_id ?tags
    ?tags_all ?timeouts ~domain_name ~rule_type ~target_ip () :
    aws_route53_resolver_rule =
  {
    domain_name;
    id;
    name;
    resolver_endpoint_id;
    rule_type;
    tags;
    tags_all;
    target_ip;
    timeouts;
  }

type t = {
  arn : string prop;
  domain_name : string prop;
  id : string prop;
  name : string prop;
  owner_id : string prop;
  resolver_endpoint_id : string prop;
  rule_type : string prop;
  share_status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?name ?resolver_endpoint_id ?tags ?tags_all ?timeouts
    ~domain_name ~rule_type ~target_ip __id =
  let __type = "aws_route53_resolver_rule" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       owner_id = Prop.computed __type __id "owner_id";
       resolver_endpoint_id =
         Prop.computed __type __id "resolver_endpoint_id";
       rule_type = Prop.computed __type __id "rule_type";
       share_status = Prop.computed __type __id "share_status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_resolver_rule
        (aws_route53_resolver_rule ?id ?name ?resolver_endpoint_id
           ?tags ?tags_all ?timeouts ~domain_name ~rule_type
           ~target_ip ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?resolver_endpoint_id ?tags
    ?tags_all ?timeouts ~domain_name ~rule_type ~target_ip __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?resolver_endpoint_id ?tags ?tags_all ?timeouts
      ~domain_name ~rule_type ~target_ip __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
