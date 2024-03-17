(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_cognito_risk_configuration__account_takeover_risk_configuration__actions__high_action = {
  event_action : string;  (** event_action *)
  notify : bool;  (** notify *)
}
[@@deriving yojson_of]
(** aws_cognito_risk_configuration__account_takeover_risk_configuration__actions__high_action *)

type aws_cognito_risk_configuration__account_takeover_risk_configuration__actions__low_action = {
  event_action : string;  (** event_action *)
  notify : bool;  (** notify *)
}
[@@deriving yojson_of]
(** aws_cognito_risk_configuration__account_takeover_risk_configuration__actions__low_action *)

type aws_cognito_risk_configuration__account_takeover_risk_configuration__actions__medium_action = {
  event_action : string;  (** event_action *)
  notify : bool;  (** notify *)
}
[@@deriving yojson_of]
(** aws_cognito_risk_configuration__account_takeover_risk_configuration__actions__medium_action *)

type aws_cognito_risk_configuration__account_takeover_risk_configuration__actions = {
  high_action :
    aws_cognito_risk_configuration__account_takeover_risk_configuration__actions__high_action
    list;
  low_action :
    aws_cognito_risk_configuration__account_takeover_risk_configuration__actions__low_action
    list;
  medium_action :
    aws_cognito_risk_configuration__account_takeover_risk_configuration__actions__medium_action
    list;
}
[@@deriving yojson_of]
(** aws_cognito_risk_configuration__account_takeover_risk_configuration__actions *)

type aws_cognito_risk_configuration__account_takeover_risk_configuration__notify_configuration__block_email = {
  html_body : string;  (** html_body *)
  subject : string;  (** subject *)
  text_body : string;  (** text_body *)
}
[@@deriving yojson_of]
(** aws_cognito_risk_configuration__account_takeover_risk_configuration__notify_configuration__block_email *)

type aws_cognito_risk_configuration__account_takeover_risk_configuration__notify_configuration__mfa_email = {
  html_body : string;  (** html_body *)
  subject : string;  (** subject *)
  text_body : string;  (** text_body *)
}
[@@deriving yojson_of]
(** aws_cognito_risk_configuration__account_takeover_risk_configuration__notify_configuration__mfa_email *)

type aws_cognito_risk_configuration__account_takeover_risk_configuration__notify_configuration__no_action_email = {
  html_body : string;  (** html_body *)
  subject : string;  (** subject *)
  text_body : string;  (** text_body *)
}
[@@deriving yojson_of]
(** aws_cognito_risk_configuration__account_takeover_risk_configuration__notify_configuration__no_action_email *)

type aws_cognito_risk_configuration__account_takeover_risk_configuration__notify_configuration = {
  from : string option; [@option]  (** from *)
  reply_to : string option; [@option]  (** reply_to *)
  source_arn : string;  (** source_arn *)
  block_email :
    aws_cognito_risk_configuration__account_takeover_risk_configuration__notify_configuration__block_email
    list;
  mfa_email :
    aws_cognito_risk_configuration__account_takeover_risk_configuration__notify_configuration__mfa_email
    list;
  no_action_email :
    aws_cognito_risk_configuration__account_takeover_risk_configuration__notify_configuration__no_action_email
    list;
}
[@@deriving yojson_of]
(** aws_cognito_risk_configuration__account_takeover_risk_configuration__notify_configuration *)

type aws_cognito_risk_configuration__account_takeover_risk_configuration = {
  actions :
    aws_cognito_risk_configuration__account_takeover_risk_configuration__actions
    list;
  notify_configuration :
    aws_cognito_risk_configuration__account_takeover_risk_configuration__notify_configuration
    list;
}
[@@deriving yojson_of]
(** aws_cognito_risk_configuration__account_takeover_risk_configuration *)

type aws_cognito_risk_configuration__compromised_credentials_risk_configuration__actions = {
  event_action : string;  (** event_action *)
}
[@@deriving yojson_of]
(** aws_cognito_risk_configuration__compromised_credentials_risk_configuration__actions *)

type aws_cognito_risk_configuration__compromised_credentials_risk_configuration = {
  event_filter : string list option; [@option]  (** event_filter *)
  actions :
    aws_cognito_risk_configuration__compromised_credentials_risk_configuration__actions
    list;
}
[@@deriving yojson_of]
(** aws_cognito_risk_configuration__compromised_credentials_risk_configuration *)

type aws_cognito_risk_configuration__risk_exception_configuration = {
  blocked_ip_range_list : string list option; [@option]
      (** blocked_ip_range_list *)
  skipped_ip_range_list : string list option; [@option]
      (** skipped_ip_range_list *)
}
[@@deriving yojson_of]
(** aws_cognito_risk_configuration__risk_exception_configuration *)

type aws_cognito_risk_configuration = {
  client_id : string option; [@option]  (** client_id *)
  user_pool_id : string;  (** user_pool_id *)
  account_takeover_risk_configuration :
    aws_cognito_risk_configuration__account_takeover_risk_configuration
    list;
  compromised_credentials_risk_configuration :
    aws_cognito_risk_configuration__compromised_credentials_risk_configuration
    list;
  risk_exception_configuration :
    aws_cognito_risk_configuration__risk_exception_configuration list;
}
[@@deriving yojson_of]
(** aws_cognito_risk_configuration *)

let aws_cognito_risk_configuration ?client_id ~user_pool_id
    ~account_takeover_risk_configuration
    ~compromised_credentials_risk_configuration
    ~risk_exception_configuration __resource_id =
  let __resource_type = "aws_cognito_risk_configuration" in
  let __resource =
    {
      client_id;
      user_pool_id;
      account_takeover_risk_configuration;
      compromised_credentials_risk_configuration;
      risk_exception_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cognito_risk_configuration __resource);
  ()
