(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type lambda_function = {
  events : string prop list;
  filter_prefix : string prop option; [@option]
  filter_suffix : string prop option; [@option]
  id : string prop option; [@option]
  lambda_function_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lambda_function) -> ()

let yojson_of_lambda_function =
  (function
   | {
       events = v_events;
       filter_prefix = v_filter_prefix;
       filter_suffix = v_filter_suffix;
       id = v_id;
       lambda_function_arn = v_lambda_function_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_lambda_function_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lambda_function_arn", arg in
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
         match v_filter_suffix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter_suffix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filter_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_events
         in
         ("events", arg) :: bnds
       in
       `Assoc bnds
    : lambda_function -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lambda_function

[@@@deriving.end]

type queue = {
  events : string prop list;
  filter_prefix : string prop option; [@option]
  filter_suffix : string prop option; [@option]
  id : string prop option; [@option]
  queue_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : queue) -> ()

let yojson_of_queue =
  (function
   | {
       events = v_events;
       filter_prefix = v_filter_prefix;
       filter_suffix = v_filter_suffix;
       id = v_id;
       queue_arn = v_queue_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_queue_arn in
         ("queue_arn", arg) :: bnds
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
         match v_filter_suffix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter_suffix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filter_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_events
         in
         ("events", arg) :: bnds
       in
       `Assoc bnds
    : queue -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_queue

[@@@deriving.end]

type topic = {
  events : string prop list;
  filter_prefix : string prop option; [@option]
  filter_suffix : string prop option; [@option]
  id : string prop option; [@option]
  topic_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : topic) -> ()

let yojson_of_topic =
  (function
   | {
       events = v_events;
       filter_prefix = v_filter_prefix;
       filter_suffix = v_filter_suffix;
       id = v_id;
       topic_arn = v_topic_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic_arn in
         ("topic_arn", arg) :: bnds
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
         match v_filter_suffix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter_suffix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filter_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_events
         in
         ("events", arg) :: bnds
       in
       `Assoc bnds
    : topic -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_topic

[@@@deriving.end]

type aws_s3_bucket_notification = {
  bucket : string prop;
  eventbridge : bool prop option; [@option]
  id : string prop option; [@option]
  lambda_function : lambda_function list;
  queue : queue list;
  topic : topic list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3_bucket_notification) -> ()

let yojson_of_aws_s3_bucket_notification =
  (function
   | {
       bucket = v_bucket;
       eventbridge = v_eventbridge;
       id = v_id;
       lambda_function = v_lambda_function;
       queue = v_queue;
       topic = v_topic;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_topic v_topic in
         ("topic", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_queue v_queue in
         ("queue", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_lambda_function v_lambda_function
         in
         ("lambda_function", arg) :: bnds
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
         match v_eventbridge with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "eventbridge", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : aws_s3_bucket_notification -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3_bucket_notification

[@@@deriving.end]

let lambda_function ?filter_prefix ?filter_suffix ?id
    ?lambda_function_arn ~events () : lambda_function =
  { events; filter_prefix; filter_suffix; id; lambda_function_arn }

let queue ?filter_prefix ?filter_suffix ?id ~events ~queue_arn () :
    queue =
  { events; filter_prefix; filter_suffix; id; queue_arn }

let topic ?filter_prefix ?filter_suffix ?id ~events ~topic_arn () :
    topic =
  { events; filter_prefix; filter_suffix; id; topic_arn }

let aws_s3_bucket_notification ?eventbridge ?id
    ?(lambda_function = []) ?(queue = []) ?(topic = []) ~bucket () :
    aws_s3_bucket_notification =
  { bucket; eventbridge; id; lambda_function; queue; topic }

type t = {
  tf_name : string;
  bucket : string prop;
  eventbridge : bool prop;
  id : string prop;
}

let make ?eventbridge ?id ?(lambda_function = []) ?(queue = [])
    ?(topic = []) ~bucket __id =
  let __type = "aws_s3_bucket_notification" in
  let __attrs =
    ({
       tf_name = __id;
       bucket = Prop.computed __type __id "bucket";
       eventbridge = Prop.computed __type __id "eventbridge";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_notification
        (aws_s3_bucket_notification ?eventbridge ?id ~lambda_function
           ~queue ~topic ~bucket ());
    attrs = __attrs;
  }

let register ?tf_module ?eventbridge ?id ?(lambda_function = [])
    ?(queue = []) ?(topic = []) ~bucket __id =
  let (r : _ Tf_core.resource) =
    make ?eventbridge ?id ~lambda_function ~queue ~topic ~bucket __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
