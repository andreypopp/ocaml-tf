(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type add_header_action = {
  header_name : string prop;  (** header_name *)
  header_value : string prop;  (** header_value *)
  position : float prop;  (** position *)
}
[@@deriving yojson_of]
(** add_header_action *)

type bounce_action = {
  message : string prop;  (** message *)
  position : float prop;  (** position *)
  sender : string prop;  (** sender *)
  smtp_reply_code : string prop;  (** smtp_reply_code *)
  status_code : string prop option; [@option]  (** status_code *)
  topic_arn : string prop option; [@option]  (** topic_arn *)
}
[@@deriving yojson_of]
(** bounce_action *)

type lambda_action = {
  function_arn : string prop;  (** function_arn *)
  invocation_type : string prop option; [@option]
      (** invocation_type *)
  position : float prop;  (** position *)
  topic_arn : string prop option; [@option]  (** topic_arn *)
}
[@@deriving yojson_of]
(** lambda_action *)

type s3_action = {
  bucket_name : string prop;  (** bucket_name *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  object_key_prefix : string prop option; [@option]
      (** object_key_prefix *)
  position : float prop;  (** position *)
  topic_arn : string prop option; [@option]  (** topic_arn *)
}
[@@deriving yojson_of]
(** s3_action *)

type sns_action = {
  encoding : string prop option; [@option]  (** encoding *)
  position : float prop;  (** position *)
  topic_arn : string prop;  (** topic_arn *)
}
[@@deriving yojson_of]
(** sns_action *)

type stop_action = {
  position : float prop;  (** position *)
  scope : string prop;  (** scope *)
  topic_arn : string prop option; [@option]  (** topic_arn *)
}
[@@deriving yojson_of]
(** stop_action *)

type workmail_action = {
  organization_arn : string prop;  (** organization_arn *)
  position : float prop;  (** position *)
  topic_arn : string prop option; [@option]  (** topic_arn *)
}
[@@deriving yojson_of]
(** workmail_action *)

type aws_ses_receipt_rule = {
  after : string prop option; [@option]  (** after *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  recipients : string prop list option; [@option]  (** recipients *)
  rule_set_name : string prop;  (** rule_set_name *)
  scan_enabled : bool prop option; [@option]  (** scan_enabled *)
  tls_policy : string prop option; [@option]  (** tls_policy *)
  add_header_action : add_header_action list;
  bounce_action : bounce_action list;
  lambda_action : lambda_action list;
  s3_action : s3_action list;
  sns_action : sns_action list;
  stop_action : stop_action list;
  workmail_action : workmail_action list;
}
[@@deriving yojson_of]
(** aws_ses_receipt_rule *)

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

let register ?tf_module ?after ?enabled ?id ?recipients ?scan_enabled
    ?tls_policy ~name ~rule_set_name ~add_header_action
    ~bounce_action ~lambda_action ~s3_action ~sns_action ~stop_action
    ~workmail_action __resource_id =
  let __resource_type = "aws_ses_receipt_rule" in
  let __resource =
    aws_ses_receipt_rule ?after ?enabled ?id ?recipients
      ?scan_enabled ?tls_policy ~name ~rule_set_name
      ~add_header_action ~bounce_action ~lambda_action ~s3_action
      ~sns_action ~stop_action ~workmail_action ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_receipt_rule __resource);
  let __resource_attributes =
    ({
       after = Prop.computed __resource_type __resource_id "after";
       arn = Prop.computed __resource_type __resource_id "arn";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       recipients =
         Prop.computed __resource_type __resource_id "recipients";
       rule_set_name =
         Prop.computed __resource_type __resource_id "rule_set_name";
       scan_enabled =
         Prop.computed __resource_type __resource_id "scan_enabled";
       tls_policy =
         Prop.computed __resource_type __resource_id "tls_policy";
     }
      : t)
  in
  __resource_attributes
