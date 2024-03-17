(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_sqs_queue = {
  content_based_deduplication : bool option; [@option]
      (** content_based_deduplication *)
  delay_seconds : float option; [@option]  (** delay_seconds *)
  fifo_queue : bool option; [@option]  (** fifo_queue *)
  kms_master_key_id : string option; [@option]
      (** kms_master_key_id *)
  max_message_size : float option; [@option]  (** max_message_size *)
  message_retention_seconds : float option; [@option]
      (** message_retention_seconds *)
  receive_wait_time_seconds : float option; [@option]
      (** receive_wait_time_seconds *)
  tags : (string * string) list option; [@option]  (** tags *)
  visibility_timeout_seconds : float option; [@option]
      (** visibility_timeout_seconds *)
}
[@@deriving yojson_of]
(** aws_sqs_queue *)

let aws_sqs_queue ?content_based_deduplication ?delay_seconds
    ?fifo_queue ?kms_master_key_id ?max_message_size
    ?message_retention_seconds ?receive_wait_time_seconds ?tags
    ?visibility_timeout_seconds __resource_id =
  let __resource_type = "aws_sqs_queue" in
  let __resource =
    {
      content_based_deduplication;
      delay_seconds;
      fifo_queue;
      kms_master_key_id;
      max_message_size;
      message_retention_seconds;
      receive_wait_time_seconds;
      tags;
      visibility_timeout_seconds;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sqs_queue __resource);
  ()
