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

type aws_route53_resolver_rule_association = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  resolver_rule_id : string prop;
  vpc_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_resolver_rule_association) -> ()

let yojson_of_aws_route53_resolver_rule_association =
  (function
   | {
       id = v_id;
       name = v_name;
       resolver_rule_id = v_resolver_rule_id;
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
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resolver_rule_id
         in
         ("resolver_rule_id", arg) :: bnds
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
       `Assoc bnds
    : aws_route53_resolver_rule_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_resolver_rule_association

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_route53_resolver_rule_association ?id ?name ?timeouts
    ~resolver_rule_id ~vpc_id () :
    aws_route53_resolver_rule_association =
  { id; name; resolver_rule_id; vpc_id; timeouts }

type t = {
  id : string prop;
  name : string prop;
  resolver_rule_id : string prop;
  vpc_id : string prop;
}

let make ?id ?name ?timeouts ~resolver_rule_id ~vpc_id __id =
  let __type = "aws_route53_resolver_rule_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resolver_rule_id =
         Prop.computed __type __id "resolver_rule_id";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_resolver_rule_association
        (aws_route53_resolver_rule_association ?id ?name ?timeouts
           ~resolver_rule_id ~vpc_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?timeouts ~resolver_rule_id ~vpc_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?timeouts ~resolver_rule_id ~vpc_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
