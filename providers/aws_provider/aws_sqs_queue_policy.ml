(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sqs_queue_policy = {
  id : string option; [@option]  (** id *)
  policy : string;  (** policy *)
  queue_url : string;  (** queue_url *)
}
[@@deriving yojson_of]
(** aws_sqs_queue_policy *)

let aws_sqs_queue_policy ?id ~policy ~queue_url __resource_id =
  let __resource_type = "aws_sqs_queue_policy" in
  let __resource = { id; policy; queue_url } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sqs_queue_policy __resource);
  ()
