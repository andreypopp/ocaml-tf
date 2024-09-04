(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_vpc_security_group_egress_rule = {
  cidr_ipv4 : string prop option; [@option]
  cidr_ipv6 : string prop option; [@option]
  description : string prop option; [@option]
  from_port : float prop option; [@option]
  ip_protocol : string prop;
  prefix_list_id : string prop option; [@option]
  referenced_security_group_id : string prop option; [@option]
  security_group_id : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  to_port : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_security_group_egress_rule) -> ()

let yojson_of_aws_vpc_security_group_egress_rule =
  (function
   | {
       cidr_ipv4 = v_cidr_ipv4;
       cidr_ipv6 = v_cidr_ipv6;
       description = v_description;
       from_port = v_from_port;
       ip_protocol = v_ip_protocol;
       prefix_list_id = v_prefix_list_id;
       referenced_security_group_id = v_referenced_security_group_id;
       security_group_id = v_security_group_id;
       tags = v_tags;
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
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_security_group_id
         in
         ("security_group_id", arg) :: bnds
       in
       let bnds =
         match v_referenced_security_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "referenced_security_group_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prefix_list_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix_list_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_protocol in
         ("ip_protocol", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cidr_ipv6 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cidr_ipv6", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cidr_ipv4 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cidr_ipv4", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_vpc_security_group_egress_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_security_group_egress_rule

[@@@deriving.end]

let aws_vpc_security_group_egress_rule ?cidr_ipv4 ?cidr_ipv6
    ?description ?from_port ?prefix_list_id
    ?referenced_security_group_id ?tags ?to_port ~ip_protocol
    ~security_group_id () : aws_vpc_security_group_egress_rule =
  {
    cidr_ipv4;
    cidr_ipv6;
    description;
    from_port;
    ip_protocol;
    prefix_list_id;
    referenced_security_group_id;
    security_group_id;
    tags;
    to_port;
  }

type t = {
  tf_name : string;
  arn : string prop;
  cidr_ipv4 : string prop;
  cidr_ipv6 : string prop;
  description : string prop;
  from_port : float prop;
  id : string prop;
  ip_protocol : string prop;
  prefix_list_id : string prop;
  referenced_security_group_id : string prop;
  security_group_id : string prop;
  security_group_rule_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  to_port : float prop;
}

let make ?cidr_ipv4 ?cidr_ipv6 ?description ?from_port
    ?prefix_list_id ?referenced_security_group_id ?tags ?to_port
    ~ip_protocol ~security_group_id __id =
  let __type = "aws_vpc_security_group_egress_rule" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       cidr_ipv4 = Prop.computed __type __id "cidr_ipv4";
       cidr_ipv6 = Prop.computed __type __id "cidr_ipv6";
       description = Prop.computed __type __id "description";
       from_port = Prop.computed __type __id "from_port";
       id = Prop.computed __type __id "id";
       ip_protocol = Prop.computed __type __id "ip_protocol";
       prefix_list_id = Prop.computed __type __id "prefix_list_id";
       referenced_security_group_id =
         Prop.computed __type __id "referenced_security_group_id";
       security_group_id =
         Prop.computed __type __id "security_group_id";
       security_group_rule_id =
         Prop.computed __type __id "security_group_rule_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       to_port = Prop.computed __type __id "to_port";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_security_group_egress_rule
        (aws_vpc_security_group_egress_rule ?cidr_ipv4 ?cidr_ipv6
           ?description ?from_port ?prefix_list_id
           ?referenced_security_group_id ?tags ?to_port ~ip_protocol
           ~security_group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?cidr_ipv4 ?cidr_ipv6 ?description ?from_port
    ?prefix_list_id ?referenced_security_group_id ?tags ?to_port
    ~ip_protocol ~security_group_id __id =
  let (r : _ Tf_core.resource) =
    make ?cidr_ipv4 ?cidr_ipv6 ?description ?from_port
      ?prefix_list_id ?referenced_security_group_id ?tags ?to_port
      ~ip_protocol ~security_group_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
