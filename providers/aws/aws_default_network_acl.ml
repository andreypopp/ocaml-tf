(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type egress = {
  action : string prop;
  cidr_block : string prop option; [@option]
  from_port : float prop;
  icmp_code : float prop option; [@option]
  icmp_type : float prop option; [@option]
  ipv6_cidr_block : string prop option; [@option]
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
         match v_ipv6_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ipv6_cidr_block", arg in
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
         let arg = yojson_of_prop yojson_of_float v_from_port in
         ("from_port", arg) :: bnds
       in
       let bnds =
         match v_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cidr_block", arg in
             bnd :: bnds
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
  cidr_block : string prop option; [@option]
  from_port : float prop;
  icmp_code : float prop option; [@option]
  icmp_type : float prop option; [@option]
  ipv6_cidr_block : string prop option; [@option]
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
         match v_ipv6_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ipv6_cidr_block", arg in
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
         let arg = yojson_of_prop yojson_of_float v_from_port in
         ("from_port", arg) :: bnds
       in
       let bnds =
         match v_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cidr_block", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : ingress -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ingress

[@@@deriving.end]

type aws_default_network_acl = {
  default_network_acl_id : string prop;
  id : string prop option; [@option]
  subnet_ids : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  egress : egress list;
  ingress : ingress list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_default_network_acl) -> ()

let yojson_of_aws_default_network_acl =
  (function
   | {
       default_network_acl_id = v_default_network_acl_id;
       id = v_id;
       subnet_ids = v_subnet_ids;
       tags = v_tags;
       tags_all = v_tags_all;
       egress = v_egress;
       ingress = v_ingress;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_ingress v_ingress in
         ("ingress", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_egress v_egress in
         ("egress", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_default_network_acl_id
         in
         ("default_network_acl_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_default_network_acl -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_default_network_acl

[@@@deriving.end]

let egress ?cidr_block ?icmp_code ?icmp_type ?ipv6_cidr_block ~action
    ~from_port ~protocol ~rule_no ~to_port () : egress =
  {
    action;
    cidr_block;
    from_port;
    icmp_code;
    icmp_type;
    ipv6_cidr_block;
    protocol;
    rule_no;
    to_port;
  }

let ingress ?cidr_block ?icmp_code ?icmp_type ?ipv6_cidr_block
    ~action ~from_port ~protocol ~rule_no ~to_port () : ingress =
  {
    action;
    cidr_block;
    from_port;
    icmp_code;
    icmp_type;
    ipv6_cidr_block;
    protocol;
    rule_no;
    to_port;
  }

let aws_default_network_acl ?id ?subnet_ids ?tags ?tags_all
    ~default_network_acl_id ~egress ~ingress () :
    aws_default_network_acl =
  {
    default_network_acl_id;
    id;
    subnet_ids;
    tags;
    tags_all;
    egress;
    ingress;
  }

type t = {
  arn : string prop;
  default_network_acl_id : string prop;
  id : string prop;
  owner_id : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let make ?id ?subnet_ids ?tags ?tags_all ~default_network_acl_id
    ~egress ~ingress __id =
  let __type = "aws_default_network_acl" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       default_network_acl_id =
         Prop.computed __type __id "default_network_acl_id";
       id = Prop.computed __type __id "id";
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
      yojson_of_aws_default_network_acl
        (aws_default_network_acl ?id ?subnet_ids ?tags ?tags_all
           ~default_network_acl_id ~egress ~ingress ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?subnet_ids ?tags ?tags_all
    ~default_network_acl_id ~egress ~ingress __id =
  let (r : _ Tf_core.resource) =
    make ?id ?subnet_ids ?tags ?tags_all ~default_network_acl_id
      ~egress ~ingress __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
