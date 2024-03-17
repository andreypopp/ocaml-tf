(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sqs_queue = {
  content_based_deduplication : bool option; [@option]
      (** content_based_deduplication *)
  deduplication_scope : string option; [@option]
      (** deduplication_scope *)
  delay_seconds : float option; [@option]  (** delay_seconds *)
  fifo_queue : bool option; [@option]  (** fifo_queue *)
  fifo_throughput_limit : string option; [@option]
      (** fifo_throughput_limit *)
  id : string option; [@option]  (** id *)
  kms_data_key_reuse_period_seconds : float option; [@option]
      (** kms_data_key_reuse_period_seconds *)
  kms_master_key_id : string option; [@option]
      (** kms_master_key_id *)
  max_message_size : float option; [@option]  (** max_message_size *)
  message_retention_seconds : float option; [@option]
      (** message_retention_seconds *)
  name : string option; [@option]  (** name *)
  name_prefix : string option; [@option]  (** name_prefix *)
  policy : string option; [@option]  (** policy *)
  receive_wait_time_seconds : float option; [@option]
      (** receive_wait_time_seconds *)
  redrive_allow_policy : string option; [@option]
      (** redrive_allow_policy *)
  redrive_policy : string option; [@option]  (** redrive_policy *)
  sqs_managed_sse_enabled : bool option; [@option]
      (** sqs_managed_sse_enabled *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  visibility_timeout_seconds : float option; [@option]
      (** visibility_timeout_seconds *)
}
[@@deriving yojson_of]
(** aws_sqs_queue *)

let aws_sqs_queue ?content_based_deduplication ?deduplication_scope
    ?delay_seconds ?fifo_queue ?fifo_throughput_limit ?id
    ?kms_data_key_reuse_period_seconds ?kms_master_key_id
    ?max_message_size ?message_retention_seconds ?name ?name_prefix
    ?policy ?receive_wait_time_seconds ?redrive_allow_policy
    ?redrive_policy ?sqs_managed_sse_enabled ?tags ?tags_all
    ?visibility_timeout_seconds __resource_id =
  let __resource_type = "aws_sqs_queue" in
  let __resource =
    {
      content_based_deduplication;
      deduplication_scope;
      delay_seconds;
      fifo_queue;
      fifo_throughput_limit;
      id;
      kms_data_key_reuse_period_seconds;
      kms_master_key_id;
      max_message_size;
      message_retention_seconds;
      name;
      name_prefix;
      policy;
      receive_wait_time_seconds;
      redrive_allow_policy;
      redrive_policy;
      sqs_managed_sse_enabled;
      tags;
      tags_all;
      visibility_timeout_seconds;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sqs_queue __resource);
  ()
