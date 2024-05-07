(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sqs_queue = {
  content_based_deduplication : bool prop option; [@option]
  deduplication_scope : string prop option; [@option]
  delay_seconds : float prop option; [@option]
  fifo_queue : bool prop option; [@option]
  fifo_throughput_limit : string prop option; [@option]
  id : string prop option; [@option]
  kms_data_key_reuse_period_seconds : float prop option; [@option]
  kms_master_key_id : string prop option; [@option]
  max_message_size : float prop option; [@option]
  message_retention_seconds : float prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  policy : string prop option; [@option]
  receive_wait_time_seconds : float prop option; [@option]
  redrive_allow_policy : string prop option; [@option]
  redrive_policy : string prop option; [@option]
  sqs_managed_sse_enabled : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  visibility_timeout_seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sqs_queue) -> ()

let yojson_of_aws_sqs_queue =
  (function
   | {
       content_based_deduplication = v_content_based_deduplication;
       deduplication_scope = v_deduplication_scope;
       delay_seconds = v_delay_seconds;
       fifo_queue = v_fifo_queue;
       fifo_throughput_limit = v_fifo_throughput_limit;
       id = v_id;
       kms_data_key_reuse_period_seconds =
         v_kms_data_key_reuse_period_seconds;
       kms_master_key_id = v_kms_master_key_id;
       max_message_size = v_max_message_size;
       message_retention_seconds = v_message_retention_seconds;
       name = v_name;
       name_prefix = v_name_prefix;
       policy = v_policy;
       receive_wait_time_seconds = v_receive_wait_time_seconds;
       redrive_allow_policy = v_redrive_allow_policy;
       redrive_policy = v_redrive_policy;
       sqs_managed_sse_enabled = v_sqs_managed_sse_enabled;
       tags = v_tags;
       tags_all = v_tags_all;
       visibility_timeout_seconds = v_visibility_timeout_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_visibility_timeout_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "visibility_timeout_seconds", arg in
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
         match v_sqs_managed_sse_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sqs_managed_sse_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redrive_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redrive_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redrive_allow_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redrive_allow_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_receive_wait_time_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "receive_wait_time_seconds", arg in
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
         match v_message_retention_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "message_retention_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_message_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_message_size", arg in
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
         match v_kms_data_key_reuse_period_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "kms_data_key_reuse_period_seconds", arg in
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
         match v_fifo_throughput_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fifo_throughput_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fifo_queue with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "fifo_queue", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delay_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "delay_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deduplication_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deduplication_scope", arg in
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
       `Assoc bnds
    : aws_sqs_queue -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sqs_queue

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
