(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type egress = {
  action : string prop;
  cidr_block : string prop;
  from_port : float prop;
  icmp_code : float prop;
  icmp_type : float prop;
  ipv6_cidr_block : string prop;
  protocol : string prop;
  rule_no : float prop;
  to_port : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : egress) -> ()

let yojson_of_egress =
  (function
   | {
       action = v_action;
       cidr_block = v_cidr_block;
       from_port = v_from_port;
       icmp_code = v_icmp_code;
       icmp_type = v_icmp_type;
       ipv6_cidr_block = v_ipv6_cidr_block;
       protocol = v_protocol;
       rule_no = v_rule_no;
       to_port = v_to_port;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_to_port in
         ("to_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_rule_no in
         ("rule_no", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ipv6_cidr_block
         in
         ("ipv6_cidr_block", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_icmp_type in
         ("icmp_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_icmp_code in
         ("icmp_code", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from_port in
         ("from_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr_block in
         ("cidr_block", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : egress -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_egress

[@@@deriving.end]

type ingress = {
  action : string prop;
  cidr_block : string prop;
  from_port : float prop;
  icmp_code : float prop;
  icmp_type : float prop;
  ipv6_cidr_block : string prop;
  protocol : string prop;
  rule_no : float prop;
  to_port : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ingress) -> ()

let yojson_of_ingress =
  (function
   | {
       action = v_action;
       cidr_block = v_cidr_block;
       from_port = v_from_port;
       icmp_code = v_icmp_code;
       icmp_type = v_icmp_type;
       ipv6_cidr_block = v_ipv6_cidr_block;
       protocol = v_protocol;
       rule_no = v_rule_no;
       to_port = v_to_port;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_to_port in
         ("to_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_rule_no in
         ("rule_no", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ipv6_cidr_block
         in
         ("ipv6_cidr_block", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_icmp_type in
         ("icmp_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_icmp_code in
         ("icmp_code", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from_port in
         ("from_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr_block in
         ("cidr_block", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : ingress -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ingress

[@@@deriving.end]

type aws_network_acl = {
  egress : egress list option; [@option]
  id : string prop option; [@option]
  ingress : ingress list option; [@option]
  subnet_ids : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_network_acl) -> ()

let yojson_of_aws_network_acl =
  (function
   | {
       egress = v_egress;
       id = v_id;
       ingress = v_ingress;
       subnet_ids = v_subnet_ids;
       tags = v_tags;
       tags_all = v_tags_all;
       vpc_id = v_vpc_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
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
         match v_subnet_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subnet_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ingress with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_ingress v in
             let bnd = "ingress", arg in
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
         match v_egress with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_list yojson_of_egress v in
             let bnd = "egress", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_network_acl -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_network_acl

[@@@deriving.end]

let aws_network_acl ?egress ?id ?ingress ?subnet_ids ?tags ?tags_all
    ~vpc_id () : aws_network_acl =
  { egress; id; ingress; subnet_ids; tags; tags_all; vpc_id }

type t = {
  tf_name : string;
  arn : string prop;
  egress : egress list prop;
  id : string prop;
  ingress : ingress list prop;
  owner_id : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let make ?egress ?id ?ingress ?subnet_ids ?tags ?tags_all ~vpc_id
    __id =
  let __type = "aws_network_acl" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       egress = Prop.computed __type __id "egress";
       id = Prop.computed __type __id "id";
       ingress = Prop.computed __type __id "ingress";
       owner_id = Prop.computed __type __id "owner_id";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_network_acl
        (aws_network_acl ?egress ?id ?ingress ?subnet_ids ?tags
           ?tags_all ~vpc_id ());
    attrs = __attrs;
  }

let register ?tf_module ?egress ?id ?ingress ?subnet_ids ?tags
    ?tags_all ~vpc_id __id =
  let (r : _ Tf_core.resource) =
    make ?egress ?id ?ingress ?subnet_ids ?tags ?tags_all ~vpc_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
