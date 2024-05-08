(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type add_header_action = {
  header_name : string prop;
  header_value : string prop;
  position : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : add_header_action) -> ()

let yojson_of_add_header_action =
  (function
   | {
       header_name = v_header_name;
       header_value = v_header_value;
       position = v_position;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_position in
         ("position", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_value in
         ("header_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_name in
         ("header_name", arg) :: bnds
       in
       `Assoc bnds
    : add_header_action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_add_header_action

[@@@deriving.end]

type bounce_action = {
  message : string prop;
  position : float prop;
  sender : string prop;
  smtp_reply_code : string prop;
  status_code : string prop option; [@option]
  topic_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bounce_action) -> ()

let yojson_of_bounce_action =
  (function
   | {
       message = v_message;
       position = v_position;
       sender = v_sender;
       smtp_reply_code = v_smtp_reply_code;
       status_code = v_status_code;
       topic_arn = v_topic_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_topic_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "topic_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_status_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status_code", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_smtp_reply_code
         in
         ("smtp_reply_code", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sender in
         ("sender", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_position in
         ("position", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message in
         ("message", arg) :: bnds
       in
       `Assoc bnds
    : bounce_action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bounce_action

[@@@deriving.end]

type lambda_action = {
  function_arn : string prop;
  invocation_type : string prop option; [@option]
  position : float prop;
  topic_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lambda_action) -> ()

let yojson_of_lambda_action =
  (function
   | {
       function_arn = v_function_arn;
       invocation_type = v_invocation_type;
       position = v_position;
       topic_arn = v_topic_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_topic_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "topic_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_position in
         ("position", arg) :: bnds
       in
       let bnds =
         match v_invocation_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "invocation_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_function_arn in
         ("function_arn", arg) :: bnds
       in
       `Assoc bnds
    : lambda_action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lambda_action

[@@@deriving.end]

type s3_action = {
  bucket_name : string prop;
  kms_key_arn : string prop option; [@option]
  object_key_prefix : string prop option; [@option]
  position : float prop;
  topic_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : s3_action) -> ()

let yojson_of_s3_action =
  (function
   | {
       bucket_name = v_bucket_name;
       kms_key_arn = v_kms_key_arn;
       object_key_prefix = v_object_key_prefix;
       position = v_position;
       topic_arn = v_topic_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_topic_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "topic_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_position in
         ("position", arg) :: bnds
       in
       let bnds =
         match v_object_key_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "object_key_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : s3_action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3_action

[@@@deriving.end]

type sns_action = {
  encoding : string prop option; [@option]
  position : float prop;
  topic_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sns_action) -> ()

let yojson_of_sns_action =
  (function
   | {
       encoding = v_encoding;
       position = v_position;
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
         let arg = yojson_of_prop yojson_of_float v_position in
         ("position", arg) :: bnds
       in
       let bnds =
         match v_encoding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encoding", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sns_action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sns_action

[@@@deriving.end]

type stop_action = {
  position : float prop;
  scope : string prop;
  topic_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : stop_action) -> ()

let yojson_of_stop_action =
  (function
   | {
       position = v_position;
       scope = v_scope;
       topic_arn = v_topic_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_topic_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "topic_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_position in
         ("position", arg) :: bnds
       in
       `Assoc bnds
    : stop_action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_stop_action

[@@@deriving.end]

type workmail_action = {
  organization_arn : string prop;
  position : float prop;
  topic_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : workmail_action) -> ()

let yojson_of_workmail_action =
  (function
   | {
       organization_arn = v_organization_arn;
       position = v_position;
       topic_arn = v_topic_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_topic_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "topic_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_position in
         ("position", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_organization_arn
         in
         ("organization_arn", arg) :: bnds
       in
       `Assoc bnds
    : workmail_action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_workmail_action

[@@@deriving.end]

type aws_ses_receipt_rule = {
  after : string prop option; [@option]
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  recipients : string prop list option; [@option]
  rule_set_name : string prop;
  scan_enabled : bool prop option; [@option]
  tls_policy : string prop option; [@option]
  add_header_action : add_header_action list;
      [@default []] [@yojson_drop_default ( = )]
  bounce_action : bounce_action list;
      [@default []] [@yojson_drop_default ( = )]
  lambda_action : lambda_action list;
      [@default []] [@yojson_drop_default ( = )]
  s3_action : s3_action list;
      [@default []] [@yojson_drop_default ( = )]
  sns_action : sns_action list;
      [@default []] [@yojson_drop_default ( = )]
  stop_action : stop_action list;
      [@default []] [@yojson_drop_default ( = )]
  workmail_action : workmail_action list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ses_receipt_rule) -> ()

let yojson_of_aws_ses_receipt_rule =
  (function
   | {
       after = v_after;
       enabled = v_enabled;
       id = v_id;
       name = v_name;
       recipients = v_recipients;
       rule_set_name = v_rule_set_name;
       scan_enabled = v_scan_enabled;
       tls_policy = v_tls_policy;
       add_header_action = v_add_header_action;
       bounce_action = v_bounce_action;
       lambda_action = v_lambda_action;
       s3_action = v_s3_action;
       sns_action = v_sns_action;
       stop_action = v_stop_action;
       workmail_action = v_workmail_action;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_workmail_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_workmail_action)
               v_workmail_action
           in
           let bnd = "workmail_action", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_stop_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_stop_action) v_stop_action
           in
           let bnd = "stop_action", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_sns_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_sns_action) v_sns_action
           in
           let bnd = "sns_action", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_s3_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_s3_action) v_s3_action
           in
           let bnd = "s3_action", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_lambda_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_lambda_action) v_lambda_action
           in
           let bnd = "lambda_action", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_bounce_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_bounce_action) v_bounce_action
           in
           let bnd = "bounce_action", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_add_header_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_add_header_action)
               v_add_header_action
           in
           let bnd = "add_header_action", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tls_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tls_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scan_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "scan_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule_set_name in
         ("rule_set_name", arg) :: bnds
       in
       let bnds =
         match v_recipients with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "recipients", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_after with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "after", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ses_receipt_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ses_receipt_rule

[@@@deriving.end]

let add_header_action ~header_name ~header_value ~position () :
    add_header_action =
  { header_name; header_value; position }

let bounce_action ?status_code ?topic_arn ~message ~position ~sender
    ~smtp_reply_code () : bounce_action =
  {
    message;
    position;
    sender;
    smtp_reply_code;
    status_code;
    topic_arn;
  }

let lambda_action ?invocation_type ?topic_arn ~function_arn ~position
    () : lambda_action =
  { function_arn; invocation_type; position; topic_arn }

let s3_action ?kms_key_arn ?object_key_prefix ?topic_arn ~bucket_name
    ~position () : s3_action =
  {
    bucket_name;
    kms_key_arn;
    object_key_prefix;
    position;
    topic_arn;
  }

let sns_action ?encoding ~position ~topic_arn () : sns_action =
  { encoding; position; topic_arn }

let stop_action ?topic_arn ~position ~scope () : stop_action =
  { position; scope; topic_arn }

let workmail_action ?topic_arn ~organization_arn ~position () :
    workmail_action =
  { organization_arn; position; topic_arn }

let aws_ses_receipt_rule ?after ?enabled ?id ?recipients
    ?scan_enabled ?tls_policy ~name ~rule_set_name ~add_header_action
    ~bounce_action ~lambda_action ~s3_action ~sns_action ~stop_action
    ~workmail_action () : aws_ses_receipt_rule =
  {
    after;
    enabled;
    id;
    name;
    recipients;
    rule_set_name;
    scan_enabled;
    tls_policy;
    add_header_action;
    bounce_action;
    lambda_action;
    s3_action;
    sns_action;
    stop_action;
    workmail_action;
  }

type t = {
  tf_name : string;
  after : string prop;
  arn : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  recipients : string list prop;
  rule_set_name : string prop;
  scan_enabled : bool prop;
  tls_policy : string prop;
}

let make ?after ?enabled ?id ?recipients ?scan_enabled ?tls_policy
    ~name ~rule_set_name ~add_header_action ~bounce_action
    ~lambda_action ~s3_action ~sns_action ~stop_action
    ~workmail_action __id =
  let __type = "aws_ses_receipt_rule" in
  let __attrs =
    ({
       tf_name = __id;
       after = Prop.computed __type __id "after";
       arn = Prop.computed __type __id "arn";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       recipients = Prop.computed __type __id "recipients";
       rule_set_name = Prop.computed __type __id "rule_set_name";
       scan_enabled = Prop.computed __type __id "scan_enabled";
       tls_policy = Prop.computed __type __id "tls_policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ses_receipt_rule
        (aws_ses_receipt_rule ?after ?enabled ?id ?recipients
           ?scan_enabled ?tls_policy ~name ~rule_set_name
           ~add_header_action ~bounce_action ~lambda_action
           ~s3_action ~sns_action ~stop_action ~workmail_action ());
    attrs = __attrs;
  }

let register ?tf_module ?after ?enabled ?id ?recipients ?scan_enabled
    ?tls_policy ~name ~rule_set_name ~add_header_action
    ~bounce_action ~lambda_action ~s3_action ~sns_action ~stop_action
    ~workmail_action __id =
  let (r : _ Tf_core.resource) =
    make ?after ?enabled ?id ?recipients ?scan_enabled ?tls_policy
      ~name ~rule_set_name ~add_header_action ~bounce_action
      ~lambda_action ~s3_action ~sns_action ~stop_action
      ~workmail_action __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
