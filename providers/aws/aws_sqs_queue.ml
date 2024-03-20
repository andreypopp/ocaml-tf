(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sqs_queue = {
  content_based_deduplication : bool prop option; [@option]
      (** content_based_deduplication *)
  deduplication_scope : string prop option; [@option]
      (** deduplication_scope *)
  delay_seconds : float prop option; [@option]  (** delay_seconds *)
  fifo_queue : bool prop option; [@option]  (** fifo_queue *)
  fifo_throughput_limit : string prop option; [@option]
      (** fifo_throughput_limit *)
  id : string prop option; [@option]  (** id *)
  kms_data_key_reuse_period_seconds : float prop option; [@option]
      (** kms_data_key_reuse_period_seconds *)
  kms_master_key_id : string prop option; [@option]
      (** kms_master_key_id *)
  max_message_size : float prop option; [@option]
      (** max_message_size *)
  message_retention_seconds : float prop option; [@option]
      (** message_retention_seconds *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  policy : string prop option; [@option]  (** policy *)
  receive_wait_time_seconds : float prop option; [@option]
      (** receive_wait_time_seconds *)
  redrive_allow_policy : string prop option; [@option]
      (** redrive_allow_policy *)
  redrive_policy : string prop option; [@option]
      (** redrive_policy *)
  sqs_managed_sse_enabled : bool prop option; [@option]
      (** sqs_managed_sse_enabled *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  visibility_timeout_seconds : float prop option; [@option]
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
    ?visibility_timeout_seconds () : aws_sqs_queue =
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

type t = {
  arn : string prop;
  content_based_deduplication : bool prop;
  deduplication_scope : string prop;
  delay_seconds : float prop;
  fifo_queue : bool prop;
  fifo_throughput_limit : string prop;
  id : string prop;
  kms_data_key_reuse_period_seconds : float prop;
  kms_master_key_id : string prop;
  max_message_size : float prop;
  message_retention_seconds : float prop;
  name : string prop;
  name_prefix : string prop;
  policy : string prop;
  receive_wait_time_seconds : float prop;
  redrive_allow_policy : string prop;
  redrive_policy : string prop;
  sqs_managed_sse_enabled : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  url : string prop;
  visibility_timeout_seconds : float prop;
}

let make ?content_based_deduplication ?deduplication_scope
    ?delay_seconds ?fifo_queue ?fifo_throughput_limit ?id
    ?kms_data_key_reuse_period_seconds ?kms_master_key_id
    ?max_message_size ?message_retention_seconds ?name ?name_prefix
    ?policy ?receive_wait_time_seconds ?redrive_allow_policy
    ?redrive_policy ?sqs_managed_sse_enabled ?tags ?tags_all
    ?visibility_timeout_seconds __id =
  let __type = "aws_sqs_queue" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       content_based_deduplication =
         Prop.computed __type __id "content_based_deduplication";
       deduplication_scope =
         Prop.computed __type __id "deduplication_scope";
       delay_seconds = Prop.computed __type __id "delay_seconds";
       fifo_queue = Prop.computed __type __id "fifo_queue";
       fifo_throughput_limit =
         Prop.computed __type __id "fifo_throughput_limit";
       id = Prop.computed __type __id "id";
       kms_data_key_reuse_period_seconds =
         Prop.computed __type __id
           "kms_data_key_reuse_period_seconds";
       kms_master_key_id =
         Prop.computed __type __id "kms_master_key_id";
       max_message_size =
         Prop.computed __type __id "max_message_size";
       message_retention_seconds =
         Prop.computed __type __id "message_retention_seconds";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       policy = Prop.computed __type __id "policy";
       receive_wait_time_seconds =
         Prop.computed __type __id "receive_wait_time_seconds";
       redrive_allow_policy =
         Prop.computed __type __id "redrive_allow_policy";
       redrive_policy = Prop.computed __type __id "redrive_policy";
       sqs_managed_sse_enabled =
         Prop.computed __type __id "sqs_managed_sse_enabled";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       url = Prop.computed __type __id "url";
       visibility_timeout_seconds =
         Prop.computed __type __id "visibility_timeout_seconds";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sqs_queue
        (aws_sqs_queue ?content_based_deduplication
           ?deduplication_scope ?delay_seconds ?fifo_queue
           ?fifo_throughput_limit ?id
           ?kms_data_key_reuse_period_seconds ?kms_master_key_id
           ?max_message_size ?message_retention_seconds ?name
           ?name_prefix ?policy ?receive_wait_time_seconds
           ?redrive_allow_policy ?redrive_policy
           ?sqs_managed_sse_enabled ?tags ?tags_all
           ?visibility_timeout_seconds ());
    attrs = __attrs;
  }

let register ?tf_module ?content_based_deduplication
    ?deduplication_scope ?delay_seconds ?fifo_queue
    ?fifo_throughput_limit ?id ?kms_data_key_reuse_period_seconds
    ?kms_master_key_id ?max_message_size ?message_retention_seconds
    ?name ?name_prefix ?policy ?receive_wait_time_seconds
    ?redrive_allow_policy ?redrive_policy ?sqs_managed_sse_enabled
    ?tags ?tags_all ?visibility_timeout_seconds __id =
  let (r : _ Tf_core.resource) =
    make ?content_based_deduplication ?deduplication_scope
      ?delay_seconds ?fifo_queue ?fifo_throughput_limit ?id
      ?kms_data_key_reuse_period_seconds ?kms_master_key_id
      ?max_message_size ?message_retention_seconds ?name ?name_prefix
      ?policy ?receive_wait_time_seconds ?redrive_allow_policy
      ?redrive_policy ?sqs_managed_sse_enabled ?tags ?tags_all
      ?visibility_timeout_seconds __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
