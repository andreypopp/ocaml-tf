(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sqs_queue_policy = {
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
  queue_url : string prop;  (** queue_url *)
}
[@@deriving yojson_of]
(** aws_sqs_queue_policy *)

let aws_sqs_queue_policy ?id ~policy ~queue_url () :
    aws_sqs_queue_policy =
  { id; policy; queue_url }

type t = {
  id : string prop;
  policy : string prop;
  queue_url : string prop;
}

let make ?id ~policy ~queue_url __id =
  let __type = "aws_sqs_queue_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       queue_url = Prop.computed __type __id "queue_url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sqs_queue_policy
        (aws_sqs_queue_policy ?id ~policy ~queue_url ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~policy ~queue_url __id =
  let (r : _ Tf_core.resource) = make ?id ~policy ~queue_url __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
