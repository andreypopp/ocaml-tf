(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sqs_queue_redrive_policy = {
  id : string prop option; [@option]  (** id *)
  queue_url : string prop;  (** queue_url *)
  redrive_policy : string prop;  (** redrive_policy *)
}
[@@deriving yojson_of]
(** aws_sqs_queue_redrive_policy *)

let aws_sqs_queue_redrive_policy ?id ~queue_url ~redrive_policy () :
    aws_sqs_queue_redrive_policy =
  { id; queue_url; redrive_policy }

type t = {
  id : string prop;
  queue_url : string prop;
  redrive_policy : string prop;
}

let make ?id ~queue_url ~redrive_policy __id =
  let __type = "aws_sqs_queue_redrive_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       queue_url = Prop.computed __type __id "queue_url";
       redrive_policy = Prop.computed __type __id "redrive_policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sqs_queue_redrive_policy
        (aws_sqs_queue_redrive_policy ?id ~queue_url ~redrive_policy
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~queue_url ~redrive_policy __id =
  let (r : _ Tf_core.resource) =
    make ?id ~queue_url ~redrive_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
