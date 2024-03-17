(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ses_receipt_rule__add_header_action = {
  header_name : string prop;  (** header_name *)
  header_value : string prop;  (** header_value *)
  position : float prop;  (** position *)
}
[@@deriving yojson_of]
(** aws_ses_receipt_rule__add_header_action *)

type aws_ses_receipt_rule__bounce_action = {
  message : string prop;  (** message *)
  position : float prop;  (** position *)
  sender : string prop;  (** sender *)
  smtp_reply_code : string prop;  (** smtp_reply_code *)
  status_code : string prop option; [@option]  (** status_code *)
  topic_arn : string prop option; [@option]  (** topic_arn *)
}
[@@deriving yojson_of]
(** aws_ses_receipt_rule__bounce_action *)

type aws_ses_receipt_rule__lambda_action = {
  function_arn : string prop;  (** function_arn *)
  invocation_type : string prop option; [@option]
      (** invocation_type *)
  position : float prop;  (** position *)
  topic_arn : string prop option; [@option]  (** topic_arn *)
}
[@@deriving yojson_of]
(** aws_ses_receipt_rule__lambda_action *)

type aws_ses_receipt_rule__s3_action = {
  bucket_name : string prop;  (** bucket_name *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  object_key_prefix : string prop option; [@option]
      (** object_key_prefix *)
  position : float prop;  (** position *)
  topic_arn : string prop option; [@option]  (** topic_arn *)
}
[@@deriving yojson_of]
(** aws_ses_receipt_rule__s3_action *)

type aws_ses_receipt_rule__sns_action = {
  encoding : string prop option; [@option]  (** encoding *)
  position : float prop;  (** position *)
  topic_arn : string prop;  (** topic_arn *)
}
[@@deriving yojson_of]
(** aws_ses_receipt_rule__sns_action *)

type aws_ses_receipt_rule__stop_action = {
  position : float prop;  (** position *)
  scope : string prop;  (** scope *)
  topic_arn : string prop option; [@option]  (** topic_arn *)
}
[@@deriving yojson_of]
(** aws_ses_receipt_rule__stop_action *)

type aws_ses_receipt_rule__workmail_action = {
  organization_arn : string prop;  (** organization_arn *)
  position : float prop;  (** position *)
  topic_arn : string prop option; [@option]  (** topic_arn *)
}
[@@deriving yojson_of]
(** aws_ses_receipt_rule__workmail_action *)

type aws_ses_receipt_rule = {
  after : string prop option; [@option]  (** after *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  recipients : string prop list option; [@option]  (** recipients *)
  rule_set_name : string prop;  (** rule_set_name *)
  scan_enabled : bool prop option; [@option]  (** scan_enabled *)
  tls_policy : string prop option; [@option]  (** tls_policy *)
  add_header_action : aws_ses_receipt_rule__add_header_action list;
  bounce_action : aws_ses_receipt_rule__bounce_action list;
  lambda_action : aws_ses_receipt_rule__lambda_action list;
  s3_action : aws_ses_receipt_rule__s3_action list;
  sns_action : aws_ses_receipt_rule__sns_action list;
  stop_action : aws_ses_receipt_rule__stop_action list;
  workmail_action : aws_ses_receipt_rule__workmail_action list;
}
[@@deriving yojson_of]
(** aws_ses_receipt_rule *)

let aws_ses_receipt_rule ?after ?enabled ?id ?recipients
    ?scan_enabled ?tls_policy ~name ~rule_set_name ~add_header_action
    ~bounce_action ~lambda_action ~s3_action ~sns_action ~stop_action
    ~workmail_action __resource_id =
  let __resource_type = "aws_ses_receipt_rule" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_receipt_rule __resource);
  ()
