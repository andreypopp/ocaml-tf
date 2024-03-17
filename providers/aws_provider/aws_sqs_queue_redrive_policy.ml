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

let aws_sqs_queue_redrive_policy ?id ~queue_url ~redrive_policy
    __resource_id =
  let __resource_type = "aws_sqs_queue_redrive_policy" in
  let __resource = { id; queue_url; redrive_policy } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sqs_queue_redrive_policy __resource);
  ()
