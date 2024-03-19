(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ~policy ~queue_url __resource_id =
  let __resource_type = "aws_sqs_queue_policy" in
  let __resource = aws_sqs_queue_policy ?id ~policy ~queue_url () in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sqs_queue_policy __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       policy = Prop.computed __resource_type __resource_id "policy";
       queue_url =
         Prop.computed __resource_type __resource_id "queue_url";
     }
      : t)
  in
  __resource_attributes
