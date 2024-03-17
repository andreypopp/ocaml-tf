(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sns_topic = {
  application_failure_feedback_role_arn : string prop option;
      [@option]
      (** application_failure_feedback_role_arn *)
  application_success_feedback_role_arn : string prop option;
      [@option]
      (** application_success_feedback_role_arn *)
  application_success_feedback_sample_rate : float prop option;
      [@option]
      (** application_success_feedback_sample_rate *)
  archive_policy : string prop option; [@option]
      (** archive_policy *)
  content_based_deduplication : bool prop option; [@option]
      (** content_based_deduplication *)
  delivery_policy : string prop option; [@option]
      (** delivery_policy *)
  display_name : string prop option; [@option]  (** display_name *)
  fifo_topic : bool prop option; [@option]  (** fifo_topic *)
  firehose_failure_feedback_role_arn : string prop option; [@option]
      (** firehose_failure_feedback_role_arn *)
  firehose_success_feedback_role_arn : string prop option; [@option]
      (** firehose_success_feedback_role_arn *)
  firehose_success_feedback_sample_rate : float prop option;
      [@option]
      (** firehose_success_feedback_sample_rate *)
  http_failure_feedback_role_arn : string prop option; [@option]
      (** http_failure_feedback_role_arn *)
  http_success_feedback_role_arn : string prop option; [@option]
      (** http_success_feedback_role_arn *)
  http_success_feedback_sample_rate : float prop option; [@option]
      (** http_success_feedback_sample_rate *)
  id : string prop option; [@option]  (** id *)
  kms_master_key_id : string prop option; [@option]
      (** kms_master_key_id *)
  lambda_failure_feedback_role_arn : string prop option; [@option]
      (** lambda_failure_feedback_role_arn *)
  lambda_success_feedback_role_arn : string prop option; [@option]
      (** lambda_success_feedback_role_arn *)
  lambda_success_feedback_sample_rate : float prop option; [@option]
      (** lambda_success_feedback_sample_rate *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  policy : string prop option; [@option]  (** policy *)
  signature_version : float prop option; [@option]
      (** signature_version *)
  sqs_failure_feedback_role_arn : string prop option; [@option]
      (** sqs_failure_feedback_role_arn *)
  sqs_success_feedback_role_arn : string prop option; [@option]
      (** sqs_success_feedback_role_arn *)
  sqs_success_feedback_sample_rate : float prop option; [@option]
      (** sqs_success_feedback_sample_rate *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  tracing_config : string prop option; [@option]
      (** tracing_config *)
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
