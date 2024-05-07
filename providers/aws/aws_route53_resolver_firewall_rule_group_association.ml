(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_resolver_firewall_rule_group_association = {
  firewall_rule_group_id : string prop;
  id : string prop option; [@option]
  mutation_protection : string prop option; [@option]
  name : string prop;
  priority : float prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_route53_resolver_firewall_rule_group_association) -> ()

let yojson_of_aws_route53_resolver_firewall_rule_group_association =
  (function
   | {
       firewall_rule_group_id = v_firewall_rule_group_id;
       id = v_id;
       mutation_protection = v_mutation_protection;
       name = v_name;
       priority = v_priority;
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
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_mutation_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mutation_protection", arg in
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
           yojson_of_prop yojson_of_string v_firewall_rule_group_id
         in
         ("firewall_rule_group_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_route53_resolver_firewall_rule_group_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_aws_route53_resolver_firewall_rule_group_association

[@@@deriving.end]

let aws_route53_resolver_firewall_rule_group_association ?id
    ?mutation_protection ?tags ?tags_all ~firewall_rule_group_id
    ~name ~priority ~vpc_id () :
    aws_route53_resolver_firewall_rule_group_association =
  {
    firewall_rule_group_id;
    id;
    mutation_protection;
    name;
    priority;
    tags;
    tags_all;
    vpc_id;
  }

type t = {
  tf_name : string;
  arn : string prop;
  firewall_rule_group_id : string prop;
  id : string prop;
  mutation_protection : string prop;
  name : string prop;
  priority : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let make ?id ?mutation_protection ?tags ?tags_all
    ~firewall_rule_group_id ~name ~priority ~vpc_id __id =
  let __type =
    "aws_route53_resolver_firewall_rule_group_association"
  in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       firewall_rule_group_id =
         Prop.computed __type __id "firewall_rule_group_id";
       id = Prop.computed __type __id "id";
       mutation_protection =
         Prop.computed __type __id "mutation_protection";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
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
      yojson_of_aws_route53_resolver_firewall_rule_group_association
        (aws_route53_resolver_firewall_rule_group_association ?id
           ?mutation_protection ?tags ?tags_all
           ~firewall_rule_group_id ~name ~priority ~vpc_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?mutation_protection ?tags ?tags_all
    ~firewall_rule_group_id ~name ~priority ~vpc_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?mutation_protection ?tags ?tags_all
      ~firewall_rule_group_id ~name ~priority ~vpc_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
