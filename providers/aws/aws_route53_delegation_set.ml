(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_delegation_set = {
  id : string prop option; [@option]
  reference_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_delegation_set) -> ()

let yojson_of_aws_route53_delegation_set =
  (function
   | { id = v_id; reference_name = v_reference_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_reference_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reference_name", arg in
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
    : aws_route53_delegation_set -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_delegation_set

[@@@deriving.end]

let aws_route53_delegation_set ?id ?reference_name () :
    aws_route53_delegation_set =
  { id; reference_name }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name_servers : string list prop;
  reference_name : string prop;
}

let make ?id ?reference_name __id =
  let __type = "aws_route53_delegation_set" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name_servers = Prop.computed __type __id "name_servers";
       reference_name = Prop.computed __type __id "reference_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_delegation_set
        (aws_route53_delegation_set ?id ?reference_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?reference_name __id =
  let (r : _ Tf_core.resource) = make ?id ?reference_name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
