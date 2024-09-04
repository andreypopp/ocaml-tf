(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type egress = {
  cidr_blocks : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  description : string prop;
  from_port : float prop;
  ipv6_cidr_blocks : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  prefix_list_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  protocol : string prop;
  security_groups : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  self : bool prop;
  to_port : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : egress) -> ()

let yojson_of_egress =
  (function
   | {
       cidr_blocks = v_cidr_blocks;
       description = v_description;
       from_port = v_from_port;
       ipv6_cidr_blocks = v_ipv6_cidr_blocks;
       prefix_list_ids = v_prefix_list_ids;
       protocol = v_protocol;
       security_groups = v_security_groups;
       self = v_self;
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
         let arg = yojson_of_prop yojson_of_bool v_self in
         ("self", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_security_groups then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_security_groups
           in
           let bnd = "security_groups", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_prefix_list_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_prefix_list_ids
           in
           let bnd = "prefix_list_ids", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ipv6_cidr_blocks then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_ipv6_cidr_blocks
           in
           let bnd = "ipv6_cidr_blocks", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from_port in
         ("from_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cidr_blocks then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_cidr_blocks
           in
           let bnd = "cidr_blocks", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : egress -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_egress

[@@@deriving.end]

type ingress = {
  cidr_blocks : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  description : string prop;
  from_port : float prop;
  ipv6_cidr_blocks : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  prefix_list_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  protocol : string prop;
  security_groups : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  self : bool prop;
  to_port : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ingress) -> ()

let yojson_of_ingress =
  (function
   | {
       cidr_blocks = v_cidr_blocks;
       description = v_description;
       from_port = v_from_port;
       ipv6_cidr_blocks = v_ipv6_cidr_blocks;
       prefix_list_ids = v_prefix_list_ids;
       protocol = v_protocol;
       security_groups = v_security_groups;
       self = v_self;
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
         let arg = yojson_of_prop yojson_of_bool v_self in
         ("self", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_security_groups then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_security_groups
           in
           let bnd = "security_groups", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_prefix_list_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_prefix_list_ids
           in
           let bnd = "prefix_list_ids", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ipv6_cidr_blocks then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_ipv6_cidr_blocks
           in
           let bnd = "ipv6_cidr_blocks", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_from_port in
         ("from_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cidr_blocks then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_cidr_blocks
           in
           let bnd = "cidr_blocks", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : ingress -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ingress

[@@@deriving.end]

type aws_security_group = {
  description : string prop option; [@option]
  egress : egress list option; [@option]
  id : string prop option; [@option]
  ingress : ingress list option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  revoke_rules_on_delete : bool prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  vpc_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_security_group) -> ()

let yojson_of_aws_security_group =
  (function
   | {
       description = v_description;
       egress = v_egress;
       id = v_id;
       ingress = v_ingress;
       name = v_name;
       name_prefix = v_name_prefix;
       revoke_rules_on_delete = v_revoke_rules_on_delete;
       tags = v_tags;
       tags_all = v_tags_all;
       vpc_id = v_vpc_id;
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
         match v_vpc_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_revoke_rules_on_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "revoke_rules_on_delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_security_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_security_group

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_security_group ?description ?egress ?id ?ingress ?name
    ?name_prefix ?revoke_rules_on_delete ?tags ?tags_all ?vpc_id
    ?timeouts () : aws_security_group =
  {
    description;
    egress;
    id;
    ingress;
    name;
    name_prefix;
    revoke_rules_on_delete;
    tags;
    tags_all;
    vpc_id;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  egress : egress list prop;
  id : string prop;
  ingress : ingress list prop;
  name : string prop;
  name_prefix : string prop;
  owner_id : string prop;
  revoke_rules_on_delete : bool prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_id : string prop;
}

let make ?description ?egress ?id ?ingress ?name ?name_prefix
    ?revoke_rules_on_delete ?tags ?tags_all ?vpc_id ?timeouts __id =
  let __type = "aws_security_group" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       egress = Prop.computed __type __id "egress";
       id = Prop.computed __type __id "id";
       ingress = Prop.computed __type __id "ingress";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       owner_id = Prop.computed __type __id "owner_id";
       revoke_rules_on_delete =
         Prop.computed __type __id "revoke_rules_on_delete";
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
      yojson_of_aws_security_group
        (aws_security_group ?description ?egress ?id ?ingress ?name
           ?name_prefix ?revoke_rules_on_delete ?tags ?tags_all
           ?vpc_id ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?egress ?id ?ingress ?name
    ?name_prefix ?revoke_rules_on_delete ?tags ?tags_all ?vpc_id
    ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?description ?egress ?id ?ingress ?name ?name_prefix
      ?revoke_rules_on_delete ?tags ?tags_all ?vpc_id ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
