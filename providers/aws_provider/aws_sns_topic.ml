(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sns_topic = {
  application_failure_feedback_role_arn : string option; [@option]
      (** application_failure_feedback_role_arn *)
  application_success_feedback_role_arn : string option; [@option]
      (** application_success_feedback_role_arn *)
  application_success_feedback_sample_rate : float option; [@option]
      (** application_success_feedback_sample_rate *)
  archive_policy : string option; [@option]  (** archive_policy *)
  content_based_deduplication : bool option; [@option]
      (** content_based_deduplication *)
  delivery_policy : string option; [@option]  (** delivery_policy *)
  display_name : string option; [@option]  (** display_name *)
  fifo_topic : bool option; [@option]  (** fifo_topic *)
  firehose_failure_feedback_role_arn : string option; [@option]
      (** firehose_failure_feedback_role_arn *)
  firehose_success_feedback_role_arn : string option; [@option]
      (** firehose_success_feedback_role_arn *)
  firehose_success_feedback_sample_rate : float option; [@option]
      (** firehose_success_feedback_sample_rate *)
  http_failure_feedback_role_arn : string option; [@option]
      (** http_failure_feedback_role_arn *)
  http_success_feedback_role_arn : string option; [@option]
      (** http_success_feedback_role_arn *)
  http_success_feedback_sample_rate : float option; [@option]
      (** http_success_feedback_sample_rate *)
  id : string option; [@option]  (** id *)
  kms_master_key_id : string option; [@option]
      (** kms_master_key_id *)
  lambda_failure_feedback_role_arn : string option; [@option]
      (** lambda_failure_feedback_role_arn *)
  lambda_success_feedback_role_arn : string option; [@option]
      (** lambda_success_feedback_role_arn *)
  lambda_success_feedback_sample_rate : float option; [@option]
      (** lambda_success_feedback_sample_rate *)
  name : string option; [@option]  (** name *)
  name_prefix : string option; [@option]  (** name_prefix *)
  policy : string option; [@option]  (** policy *)
  signature_version : float option; [@option]
      (** signature_version *)
  sqs_failure_feedback_role_arn : string option; [@option]
      (** sqs_failure_feedback_role_arn *)
  sqs_success_feedback_role_arn : string option; [@option]
      (** sqs_success_feedback_role_arn *)
  sqs_success_feedback_sample_rate : float option; [@option]
      (** sqs_success_feedback_sample_rate *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  tracing_config : string option; [@option]  (** tracing_config *)
}
[@@deriving yojson_of]
(** aws_sns_topic *)

let aws_sns_topic ?application_failure_feedback_role_arn
    ?application_success_feedback_role_arn
    ?application_success_feedback_sample_rate ?archive_policy
    ?content_based_deduplication ?delivery_policy ?display_name
    ?fifo_topic ?firehose_failure_feedback_role_arn
    ?firehose_success_feedback_role_arn
    ?firehose_success_feedback_sample_rate
    ?http_failure_feedback_role_arn ?http_success_feedback_role_arn
    ?http_success_feedback_sample_rate ?id ?kms_master_key_id
    ?lambda_failure_feedback_role_arn
    ?lambda_success_feedback_role_arn
    ?lambda_success_feedback_sample_rate ?name ?name_prefix ?policy
    ?signature_version ?sqs_failure_feedback_role_arn
    ?sqs_success_feedback_role_arn ?sqs_success_feedback_sample_rate
    ?tags ?tags_all ?tracing_config __resource_id =
  let __resource_type = "aws_sns_topic" in
  let __resource =
    {
      application_failure_feedback_role_arn;
      application_success_feedback_role_arn;
      application_success_feedback_sample_rate;
      archive_policy;
      content_based_deduplication;
      delivery_policy;
      display_name;
      fifo_topic;
      firehose_failure_feedback_role_arn;
      firehose_success_feedback_role_arn;
      firehose_success_feedback_sample_rate;
      http_failure_feedback_role_arn;
      http_success_feedback_role_arn;
      http_success_feedback_sample_rate;
      id;
      kms_master_key_id;
      lambda_failure_feedback_role_arn;
      lambda_success_feedback_role_arn;
      lambda_success_feedback_sample_rate;
      name;
      name_prefix;
      policy;
      signature_version;
      sqs_failure_feedback_role_arn;
      sqs_success_feedback_role_arn;
      sqs_success_feedback_sample_rate;
      tags;
      tags_all;
      tracing_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sns_topic __resource);
  ()
