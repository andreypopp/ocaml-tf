(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  name : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type aws_vpc_security_group_rule = {
  security_group_rule_id : string prop option; [@option]
  filter : filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_security_group_rule) -> ()

let yojson_of_aws_vpc_security_group_rule =
  (function
   | {
       security_group_rule_id = v_security_group_rule_id;
       filter = v_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         match v_security_group_rule_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_group_rule_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_vpc_security_group_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_security_group_rule

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }

let aws_vpc_security_group_rule ?security_group_rule_id ~filter () :
    aws_vpc_security_group_rule =
  { security_group_rule_id; filter }

type t = {
  tf_name : string;
  arn : string prop;
  cidr_ipv4 : string prop;
  cidr_ipv6 : string prop;
  description : string prop;
  from_port : float prop;
  id : string prop;
  ip_protocol : string prop;
  is_egress : bool prop;
  prefix_list_id : string prop;
  referenced_security_group_id : string prop;
  security_group_id : string prop;
  security_group_rule_id : string prop;
  tags : (string * string) list prop;
  to_port : float prop;
}

let make ?security_group_rule_id ~filter __id =
  let __type = "aws_vpc_security_group_rule" in
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
       is_egress = Prop.computed __type __id "is_egress";
       prefix_list_id = Prop.computed __type __id "prefix_list_id";
       referenced_security_group_id =
         Prop.computed __type __id "referenced_security_group_id";
       security_group_id =
         Prop.computed __type __id "security_group_id";
       security_group_rule_id =
         Prop.computed __type __id "security_group_rule_id";
       tags = Prop.computed __type __id "tags";
       to_port = Prop.computed __type __id "to_port";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_security_group_rule
        (aws_vpc_security_group_rule ?security_group_rule_id ~filter
           ());
    attrs = __attrs;
  }

let register ?tf_module ?security_group_rule_id ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?security_group_rule_id ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
