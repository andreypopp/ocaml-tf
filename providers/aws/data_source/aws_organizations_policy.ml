(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_organizations_policy = {
  id : string prop option; [@option]
  policy_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_organizations_policy) -> ()

let yojson_of_aws_organizations_policy =
  (function
   | { id = v_id; policy_id = v_policy_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_id in
         ("policy_id", arg) :: bnds
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
    : aws_organizations_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_organizations_policy

[@@@deriving.end]

let aws_organizations_policy ?id ~policy_id () :
    aws_organizations_policy =
  { id; policy_id }

type t = {
  tf_name : string;
  arn : string prop;
  aws_managed : bool prop;
  content : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  policy_id : string prop;
  type_ : string prop;
}

let make ?id ~policy_id __id =
  let __type = "aws_organizations_policy" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       aws_managed = Prop.computed __type __id "aws_managed";
       content = Prop.computed __type __id "content";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       policy_id = Prop.computed __type __id "policy_id";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_organizations_policy
        (aws_organizations_policy ?id ~policy_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~policy_id __id =
  let (r : _ Tf_core.resource) = make ?id ~policy_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
