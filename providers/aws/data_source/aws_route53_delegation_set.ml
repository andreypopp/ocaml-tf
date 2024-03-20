(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_route53_delegation_set = { id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_delegation_set) -> ()

let yojson_of_aws_route53_delegation_set =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : aws_route53_delegation_set -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_delegation_set

[@@@deriving.end]

let aws_route53_delegation_set ~id () : aws_route53_delegation_set =
  { id }

type t = {
  arn : string prop;
  caller_reference : string prop;
  id : string prop;
  name_servers : string list prop;
}

let make ~id __id =
  let __type = "aws_route53_delegation_set" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       caller_reference =
         Prop.computed __type __id "caller_reference";
       id = Prop.computed __type __id "id";
       name_servers = Prop.computed __type __id "name_servers";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_delegation_set
        (aws_route53_delegation_set ~id ());
    attrs = __attrs;
  }

let register ?tf_module ~id __id =
  let (r : _ Tf_core.resource) = make ~id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
