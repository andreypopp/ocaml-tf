(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sns_topic_policy = {
  arn : string prop;  (** arn *)
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_sns_topic_policy *)

let aws_sns_topic_policy ?id ~arn ~policy () : aws_sns_topic_policy =
  { arn; id; policy }

type t = {
  arn : string prop;
  id : string prop;
  owner : string prop;
  policy : string prop;
}

let make ?id ~arn ~policy __id =
  let __type = "aws_sns_topic_policy" in
  let __attrs =
    ({
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
