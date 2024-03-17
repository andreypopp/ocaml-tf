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

type t = {
  application_failure_feedback_role_arn : string prop;
  application_success_feedback_role_arn : string prop;
  application_success_feedback_sample_rate : float prop;
  archive_policy : string prop;
  arn : string prop;
  beginning_archive_time : string prop;
  content_based_deduplication : bool prop;
  delivery_policy : string prop;
  display_name : string prop;
  fifo_topic : bool prop;
  firehose_failure_feedback_role_arn : string prop;
  firehose_success_feedback_role_arn : string prop;
  firehose_success_feedback_sample_rate : float prop;
  http_failure_feedback_role_arn : string prop;
  http_success_feedback_role_arn : string prop;
  http_success_feedback_sample_rate : float prop;
  id : string prop;
  kms_master_key_id : string prop;
  lambda_failure_feedback_role_arn : string prop;
  lambda_success_feedback_role_arn : string prop;
  lambda_success_feedback_sample_rate : float prop;
  name : string prop;
  name_prefix : string prop;
  owner : string prop;
  policy : string prop;
  signature_version : float prop;
  sqs_failure_feedback_role_arn : string prop;
  sqs_success_feedback_role_arn : string prop;
  sqs_success_feedback_sample_rate : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tracing_config : string prop;
}

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
    ({
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
      : aws_sns_topic)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sns_topic __resource);
  let __resource_attributes =
    ({
       application_failure_feedback_role_arn =
         Prop.computed __resource_type __resource_id
           "application_failure_feedback_role_arn";
       application_success_feedback_role_arn =
         Prop.computed __resource_type __resource_id
           "application_success_feedback_role_arn";
       application_success_feedback_sample_rate =
         Prop.computed __resource_type __resource_id
           "application_success_feedback_sample_rate";
       archive_policy =
         Prop.computed __resource_type __resource_id "archive_policy";
       arn = Prop.computed __resource_type __resource_id "arn";
       beginning_archive_time =
         Prop.computed __resource_type __resource_id
           "beginning_archive_time";
       content_based_deduplication =
         Prop.computed __resource_type __resource_id
           "content_based_deduplication";
       delivery_policy =
         Prop.computed __resource_type __resource_id
           "delivery_policy";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       fifo_topic =
         Prop.computed __resource_type __resource_id "fifo_topic";
       firehose_failure_feedback_role_arn =
         Prop.computed __resource_type __resource_id
           "firehose_failure_feedback_role_arn";
       firehose_success_feedback_role_arn =
         Prop.computed __resource_type __resource_id
           "firehose_success_feedback_role_arn";
       firehose_success_feedback_sample_rate =
         Prop.computed __resource_type __resource_id
           "firehose_success_feedback_sample_rate";
       http_failure_feedback_role_arn =
         Prop.computed __resource_type __resource_id
           "http_failure_feedback_role_arn";
       http_success_feedback_role_arn =
         Prop.computed __resource_type __resource_id
           "http_success_feedback_role_arn";
       http_success_feedback_sample_rate =
         Prop.computed __resource_type __resource_id
           "http_success_feedback_sample_rate";
       id = Prop.computed __resource_type __resource_id "id";
       kms_master_key_id =
         Prop.computed __resource_type __resource_id
           "kms_master_key_id";
       lambda_failure_feedback_role_arn =
         Prop.computed __resource_type __resource_id
           "lambda_failure_feedback_role_arn";
       lambda_success_feedback_role_arn =
         Prop.computed __resource_type __resource_id
           "lambda_success_feedback_role_arn";
       lambda_success_feedback_sample_rate =
         Prop.computed __resource_type __resource_id
           "lambda_success_feedback_sample_rate";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       owner = Prop.computed __resource_type __resource_id "owner";
       policy = Prop.computed __resource_type __resource_id "policy";
       signature_version =
         Prop.computed __resource_type __resource_id
           "signature_version";
       sqs_failure_feedback_role_arn =
         Prop.computed __resource_type __resource_id
           "sqs_failure_feedback_role_arn";
       sqs_success_feedback_role_arn =
         Prop.computed __resource_type __resource_id
           "sqs_success_feedback_role_arn";
       sqs_success_feedback_sample_rate =
         Prop.computed __resource_type __resource_id
           "sqs_success_feedback_sample_rate";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       tracing_config =
         Prop.computed __resource_type __resource_id "tracing_config";
     }
      : t)
  in
  __resource_attributes
