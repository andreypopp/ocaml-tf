(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sqs_queue_redrive_policy = {
  id : string prop option; [@option]  (** id *)
  queue_url : string prop;  (** queue_url *)
  redrive_policy : string prop;  (** redrive_policy *)
}
[@@deriving yojson_of]
(** aws_sqs_queue_redrive_policy *)

type t = {
  id : string prop;
  queue_url : string prop;
  redrive_policy : string prop;
}

let aws_sqs_queue_redrive_policy ?id ~queue_url ~redrive_policy
    __resource_id =
  let __resource_type = "aws_sqs_queue_redrive_policy" in
  let __resource =
    ({ id; queue_url; redrive_policy }
      : aws_sqs_queue_redrive_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sqs_queue_redrive_policy __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       queue_url =
         Prop.computed __resource_type __resource_id "queue_url";
       redrive_policy =
         Prop.computed __resource_type __resource_id "redrive_policy";
     }
      : t)
  in
  __resource_attributes
