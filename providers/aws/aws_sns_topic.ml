(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sns_topic = {
  application_failure_feedback_role_arn : string prop option;
      [@option]
  application_success_feedback_role_arn : string prop option;
      [@option]
  application_success_feedback_sample_rate : float prop option;
      [@option]
  archive_policy : string prop option; [@option]
  content_based_deduplication : bool prop option; [@option]
  delivery_policy : string prop option; [@option]
  display_name : string prop option; [@option]
  fifo_topic : bool prop option; [@option]
  firehose_failure_feedback_role_arn : string prop option; [@option]
  firehose_success_feedback_role_arn : string prop option; [@option]
  firehose_success_feedback_sample_rate : float prop option;
      [@option]
  http_failure_feedback_role_arn : string prop option; [@option]
  http_success_feedback_role_arn : string prop option; [@option]
  http_success_feedback_sample_rate : float prop option; [@option]
  id : string prop option; [@option]
  kms_master_key_id : string prop option; [@option]
  lambda_failure_feedback_role_arn : string prop option; [@option]
  lambda_success_feedback_role_arn : string prop option; [@option]
  lambda_success_feedback_sample_rate : float prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  policy : string prop option; [@option]
  signature_version : float prop option; [@option]
  sqs_failure_feedback_role_arn : string prop option; [@option]
  sqs_success_feedback_role_arn : string prop option; [@option]
  sqs_success_feedback_sample_rate : float prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  tracing_config : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sns_topic) -> ()

let yojson_of_aws_sns_topic =
  (function
   | {
       application_failure_feedback_role_arn =
         v_application_failure_feedback_role_arn;
       application_success_feedback_role_arn =
         v_application_success_feedback_role_arn;
       application_success_feedback_sample_rate =
         v_application_success_feedback_sample_rate;
       archive_policy = v_archive_policy;
       content_based_deduplication = v_content_based_deduplication;
       delivery_policy = v_delivery_policy;
       display_name = v_display_name;
       fifo_topic = v_fifo_topic;
       firehose_failure_feedback_role_arn =
         v_firehose_failure_feedback_role_arn;
       firehose_success_feedback_role_arn =
         v_firehose_success_feedback_role_arn;
       firehose_success_feedback_sample_rate =
         v_firehose_success_feedback_sample_rate;
       http_failure_feedback_role_arn =
         v_http_failure_feedback_role_arn;
       http_success_feedback_role_arn =
         v_http_success_feedback_role_arn;
       http_success_feedback_sample_rate =
         v_http_success_feedback_sample_rate;
       id = v_id;
       kms_master_key_id = v_kms_master_key_id;
       lambda_failure_feedback_role_arn =
         v_lambda_failure_feedback_role_arn;
       lambda_success_feedback_role_arn =
         v_lambda_success_feedback_role_arn;
       lambda_success_feedback_sample_rate =
         v_lambda_success_feedback_sample_rate;
       name = v_name;
       name_prefix = v_name_prefix;
       policy = v_policy;
       signature_version = v_signature_version;
       sqs_failure_feedback_role_arn =
         v_sqs_failure_feedback_role_arn;
       sqs_success_feedback_role_arn =
         v_sqs_success_feedback_role_arn;
       sqs_success_feedback_sample_rate =
         v_sqs_success_feedback_sample_rate;
       tags = v_tags;
       tags_all = v_tags_all;
       tracing_config = v_tracing_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tracing_config with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tracing_config", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sqs_success_feedback_sample_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sqs_success_feedback_sample_rate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sqs_success_feedback_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sqs_success_feedback_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sqs_failure_feedback_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sqs_failure_feedback_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_signature_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "signature_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lambda_success_feedback_sample_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "lambda_success_feedback_sample_rate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lambda_success_feedback_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lambda_success_feedback_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lambda_failure_feedback_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lambda_failure_feedback_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_master_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_master_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_success_feedback_sample_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "http_success_feedback_sample_rate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_success_feedback_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_success_feedback_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_failure_feedback_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_failure_feedback_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_firehose_success_feedback_sample_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "firehose_success_feedback_sample_rate", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_firehose_success_feedback_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "firehose_success_feedback_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_firehose_failure_feedback_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "firehose_failure_feedback_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fifo_topic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "fifo_topic", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delivery_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delivery_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_based_deduplication with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "content_based_deduplication", arg in
             bnd :: bnds
       in
       let bnds =
         match v_archive_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "archive_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_application_success_feedback_sample_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "application_success_feedback_sample_rate", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_application_success_feedback_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "application_success_feedback_role_arn", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_application_failure_feedback_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "application_failure_feedback_role_arn", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_sns_topic -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sns_topic

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
