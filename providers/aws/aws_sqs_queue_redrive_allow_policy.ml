(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sqs_queue_redrive_allow_policy = {
  id : string prop option; [@option]  (** id *)
  queue_url : string prop;  (** queue_url *)
  redrive_allow_policy : string prop;  (** redrive_allow_policy *)
}
[@@deriving yojson_of]
(** aws_sqs_queue_redrive_allow_policy *)

let aws_sqs_queue_redrive_allow_policy ?id ~queue_url
    ~redrive_allow_policy () : aws_sqs_queue_redrive_allow_policy =
  { id; queue_url; redrive_allow_policy }

type t = {
  id : string prop;
  queue_url : string prop;
  redrive_allow_policy : string prop;
}

let register ?tf_module ?id ~queue_url ~redrive_allow_policy
    __resource_id =
  let __resource_type = "aws_sqs_queue_redrive_allow_policy" in
  let __resource =
    aws_sqs_queue_redrive_allow_policy ?id ~queue_url
      ~redrive_allow_policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sqs_queue_redrive_allow_policy __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       queue_url =
         Prop.computed __resource_type __resource_id "queue_url";
       redrive_allow_policy =
         Prop.computed __resource_type __resource_id
           "redrive_allow_policy";
     }
      : t)
  in
  __resource_attributes
