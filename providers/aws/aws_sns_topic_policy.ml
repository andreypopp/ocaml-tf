(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sns_topic_policy = {
  arn : string prop;
  id : string prop option; [@option]
  policy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sns_topic_policy) -> ()

let yojson_of_aws_sns_topic_policy =
  (function
   | { arn = v_arn; id = v_id; policy = v_policy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy in
         ("policy", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_sns_topic_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sns_topic_policy

[@@@deriving.end]

let aws_sns_topic_policy ?id ~arn ~policy () : aws_sns_topic_policy =
  { arn; id; policy }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  owner : string prop;
  policy : string prop;
}

let make ?id ~arn ~policy __id =
  let __type = "aws_sns_topic_policy" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       owner = Prop.computed __type __id "owner";
       policy = Prop.computed __type __id "policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sns_topic_policy
        (aws_sns_topic_policy ?id ~arn ~policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~arn ~policy __id =
  let (r : _ Tf_core.resource) = make ?id ~arn ~policy __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
