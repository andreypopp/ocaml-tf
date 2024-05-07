(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_network_acl_rule = {
  cidr_block : string prop option; [@option]
  egress : bool prop option; [@option]
  from_port : float prop option; [@option]
  icmp_code : float prop option; [@option]
  icmp_type : float prop option; [@option]
  id : string prop option; [@option]
  ipv6_cidr_block : string prop option; [@option]
  network_acl_id : string prop;
  protocol : string prop;
  rule_action : string prop;
  rule_number : float prop;
  to_port : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_network_acl_rule) -> ()

let yojson_of_aws_network_acl_rule =
  (function
   | {
       cidr_block = v_cidr_block;
       egress = v_egress;
       from_port = v_from_port;
       icmp_code = v_icmp_code;
       icmp_type = v_icmp_type;
       id = v_id;
       ipv6_cidr_block = v_ipv6_cidr_block;
       network_acl_id = v_network_acl_id;
       protocol = v_protocol;
       rule_action = v_rule_action;
       rule_number = v_rule_number;
       to_port = v_to_port;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_to_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "to_port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_rule_number in
         ("rule_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule_action in
         ("rule_action", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_acl_id
         in
         ("network_acl_id", arg) :: bnds
       in
       let bnds =
         match v_ipv6_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ipv6_cidr_block", arg in
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
         match v_icmp_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "icmp_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_icmp_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "icmp_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_from_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "from_port", arg in
             bnd :: bnds
       in
       let bnds =
         match v_egress with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "egress", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cidr_block", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_network_acl_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_network_acl_rule

[@@@deriving.end]

let aws_network_acl_rule ?cidr_block ?egress ?from_port ?icmp_code
    ?icmp_type ?id ?ipv6_cidr_block ?to_port ~network_acl_id
    ~protocol ~rule_action ~rule_number () : aws_network_acl_rule =
  {
    cidr_block;
    egress;
    from_port;
    icmp_code;
    icmp_type;
    id;
    ipv6_cidr_block;
    network_acl_id;
    protocol;
    rule_action;
    rule_number;
    to_port;
  }

type t = {
  tf_name : string;
  cidr_block : string prop;
  egress : bool prop;
  from_port : float prop;
  icmp_code : float prop;
  icmp_type : float prop;
  id : string prop;
  ipv6_cidr_block : string prop;
  network_acl_id : string prop;
  protocol : string prop;
  rule_action : string prop;
  rule_number : float prop;
  to_port : float prop;
}

let make ?cidr_block ?egress ?from_port ?icmp_code ?icmp_type ?id
    ?ipv6_cidr_block ?to_port ~network_acl_id ~protocol ~rule_action
    ~rule_number __id =
  let __type = "aws_network_acl_rule" in
  let __attrs =
    ({
       tf_name = __id;
       cidr_block = Prop.computed __type __id "cidr_block";
       egress = Prop.computed __type __id "egress";
       from_port = Prop.computed __type __id "from_port";
       icmp_code = Prop.computed __type __id "icmp_code";
       icmp_type = Prop.computed __type __id "icmp_type";
       id = Prop.computed __type __id "id";
       ipv6_cidr_block = Prop.computed __type __id "ipv6_cidr_block";
       network_acl_id = Prop.computed __type __id "network_acl_id";
       protocol = Prop.computed __type __id "protocol";
       rule_action = Prop.computed __type __id "rule_action";
       rule_number = Prop.computed __type __id "rule_number";
       to_port = Prop.computed __type __id "to_port";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_network_acl_rule
        (aws_network_acl_rule ?cidr_block ?egress ?from_port
           ?icmp_code ?icmp_type ?id ?ipv6_cidr_block ?to_port
           ~network_acl_id ~protocol ~rule_action ~rule_number ());
    attrs = __attrs;
  }

let register ?tf_module ?cidr_block ?egress ?from_port ?icmp_code
    ?icmp_type ?id ?ipv6_cidr_block ?to_port ~network_acl_id
    ~protocol ~rule_action ~rule_number __id =
  let (r : _ Tf_core.resource) =
    make ?cidr_block ?egress ?from_port ?icmp_code ?icmp_type ?id
      ?ipv6_cidr_block ?to_port ~network_acl_id ~protocol
      ~rule_action ~rule_number __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
