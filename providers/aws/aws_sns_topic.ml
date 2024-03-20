(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
    ?tags ?tags_all ?tracing_config () : aws_sns_topic =
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

let make ?application_failure_feedback_role_arn
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
    ?tags ?tags_all ?tracing_config __id =
  let __type = "aws_sns_topic" in
  let __attrs =
    ({
       application_failure_feedback_role_arn =
         Prop.computed __type __id
           "application_failure_feedback_role_arn";
       application_success_feedback_role_arn =
         Prop.computed __type __id
           "application_success_feedback_role_arn";
       application_success_feedback_sample_rate =
         Prop.computed __type __id
           "application_success_feedback_sample_rate";
       archive_policy = Prop.computed __type __id "archive_policy";
       arn = Prop.computed __type __id "arn";
       beginning_archive_time =
         Prop.computed __type __id "beginning_archive_time";
       content_based_deduplication =
         Prop.computed __type __id "content_based_deduplication";
       delivery_policy = Prop.computed __type __id "delivery_policy";
       display_name = Prop.computed __type __id "display_name";
       fifo_topic = Prop.computed __type __id "fifo_topic";
       firehose_failure_feedback_role_arn =
         Prop.computed __type __id
           "firehose_failure_feedback_role_arn";
       firehose_success_feedback_role_arn =
         Prop.computed __type __id
           "firehose_success_feedback_role_arn";
       firehose_success_feedback_sample_rate =
         Prop.computed __type __id
           "firehose_success_feedback_sample_rate";
       http_failure_feedback_role_arn =
         Prop.computed __type __id "http_failure_feedback_role_arn";
       http_success_feedback_role_arn =
         Prop.computed __type __id "http_success_feedback_role_arn";
       http_success_feedback_sample_rate =
         Prop.computed __type __id
           "http_success_feedback_sample_rate";
       id = Prop.computed __type __id "id";
       kms_master_key_id =
         Prop.computed __type __id "kms_master_key_id";
       lambda_failure_feedback_role_arn =
         Prop.computed __type __id "lambda_failure_feedback_role_arn";
       lambda_success_feedback_role_arn =
         Prop.computed __type __id "lambda_success_feedback_role_arn";
       lambda_success_feedback_sample_rate =
         Prop.computed __type __id
           "lambda_success_feedback_sample_rate";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       owner = Prop.computed __type __id "owner";
       policy = Prop.computed __type __id "policy";
       signature_version =
         Prop.computed __type __id "signature_version";
       sqs_failure_feedback_role_arn =
         Prop.computed __type __id "sqs_failure_feedback_role_arn";
       sqs_success_feedback_role_arn =
         Prop.computed __type __id "sqs_success_feedback_role_arn";
       sqs_success_feedback_sample_rate =
         Prop.computed __type __id "sqs_success_feedback_sample_rate";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       tracing_config = Prop.computed __type __id "tracing_config";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sns_topic
        (aws_sns_topic ?application_failure_feedback_role_arn
           ?application_success_feedback_role_arn
           ?application_success_feedback_sample_rate ?archive_policy
           ?content_based_deduplication ?delivery_policy
           ?display_name ?fifo_topic
           ?firehose_failure_feedback_role_arn
           ?firehose_success_feedback_role_arn
           ?firehose_success_feedback_sample_rate
           ?http_failure_feedback_role_arn
           ?http_success_feedback_role_arn
           ?http_success_feedback_sample_rate ?id ?kms_master_key_id
           ?lambda_failure_feedback_role_arn
           ?lambda_success_feedback_role_arn
           ?lambda_success_feedback_sample_rate ?name ?name_prefix
           ?policy ?signature_version ?sqs_failure_feedback_role_arn
           ?sqs_success_feedback_role_arn
           ?sqs_success_feedback_sample_rate ?tags ?tags_all
           ?tracing_config ());
    attrs = __attrs;
  }

let register ?tf_module ?application_failure_feedback_role_arn
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
    ?tags ?tags_all ?tracing_config __id =
  let (r : _ Tf_core.resource) =
    make ?application_failure_feedback_role_arn
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
      ?sqs_success_feedback_role_arn
      ?sqs_success_feedback_sample_rate ?tags ?tags_all
      ?tracing_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
