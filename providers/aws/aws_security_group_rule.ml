(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_security_group_rule = {
  cidr_blocks : string prop list option; [@option]
  description : string prop option; [@option]
  from_port : float prop;
  id : string prop option; [@option]
  ipv6_cidr_blocks : string prop list option; [@option]
  prefix_list_ids : string prop list option; [@option]
  protocol : string prop;
  security_group_id : string prop;
  self : bool prop option; [@option]
  source_security_group_id : string prop option; [@option]
  to_port : float prop;
  type_ : string prop; [@key "type"]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_security_group_rule) -> ()

let yojson_of_aws_security_group_rule =
  (function
   | {
       cidr_blocks = v_cidr_blocks;
       description = v_description;
       from_port = v_from_port;
       id = v_id;
       ipv6_cidr_blocks = v_ipv6_cidr_blocks;
       prefix_list_ids = v_prefix_list_ids;
       protocol = v_protocol;
       security_group_id = v_security_group_id;
       self = v_self;
       source_security_group_id = v_source_security_group_id;
       to_port = v_to_port;
       type_ = v_type_;
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_to_port in
         ("to_port", arg) :: bnds
       in
       let bnds =
         match v_source_security_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_security_group_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_self with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "self", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_security_group_id
         in
         ("security_group_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         match v_prefix_list_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "prefix_list_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv6_cidr_blocks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ipv6_cidr_blocks", arg in
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
         let arg = yojson_of_prop yojson_of_float v_from_port in
         ("from_port", arg) :: bnds
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
         match v_cidr_blocks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "cidr_blocks", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_security_group_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_security_group_rule

[@@@deriving.end]

let timeouts ?create () : timeouts = { create }

let aws_security_group_rule ?cidr_blocks ?description ?id
    ?ipv6_cidr_blocks ?prefix_list_ids ?self
    ?source_security_group_id ?timeouts ~from_port ~protocol
    ~security_group_id ~to_port ~type_ () : aws_security_group_rule =
  {
    cidr_blocks;
    description;
    from_port;
    id;
    ipv6_cidr_blocks;
    prefix_list_ids;
    protocol;
    security_group_id;
    self;
    source_security_group_id;
    to_port;
    type_;
    timeouts;
  }

type t = {
  tf_name : string;
  cidr_blocks : string list prop;
  description : string prop;
  from_port : float prop;
  id : string prop;
  ipv6_cidr_blocks : string list prop;
  prefix_list_ids : string list prop;
  protocol : string prop;
  security_group_id : string prop;
  security_group_rule_id : string prop;
  self : bool prop;
  source_security_group_id : string prop;
  to_port : float prop;
  type_ : string prop;
}

let make ?cidr_blocks ?description ?id ?ipv6_cidr_blocks
    ?prefix_list_ids ?self ?source_security_group_id ?timeouts
    ~from_port ~protocol ~security_group_id ~to_port ~type_ __id =
  let __type = "aws_security_group_rule" in
  let __attrs =
    ({
       tf_name = __id;
       cidr_blocks = Prop.computed __type __id "cidr_blocks";
       description = Prop.computed __type __id "description";
       from_port = Prop.computed __type __id "from_port";
       id = Prop.computed __type __id "id";
       ipv6_cidr_blocks =
         Prop.computed __type __id "ipv6_cidr_blocks";
       prefix_list_ids = Prop.computed __type __id "prefix_list_ids";
       protocol = Prop.computed __type __id "protocol";
       security_group_id =
         Prop.computed __type __id "security_group_id";
       security_group_rule_id =
         Prop.computed __type __id "security_group_rule_id";
       self = Prop.computed __type __id "self";
       source_security_group_id =
         Prop.computed __type __id "source_security_group_id";
       to_port = Prop.computed __type __id "to_port";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_security_group_rule
        (aws_security_group_rule ?cidr_blocks ?description ?id
           ?ipv6_cidr_blocks ?prefix_list_ids ?self
           ?source_security_group_id ?timeouts ~from_port ~protocol
           ~security_group_id ~to_port ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?cidr_blocks ?description ?id
    ?ipv6_cidr_blocks ?prefix_list_ids ?self
    ?source_security_group_id ?timeouts ~from_port ~protocol
    ~security_group_id ~to_port ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?cidr_blocks ?description ?id ?ipv6_cidr_blocks
      ?prefix_list_ids ?self ?source_security_group_id ?timeouts
      ~from_port ~protocol ~security_group_id ~to_port ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
