(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type account_takeover_risk_configuration__actions__high_action = {
  event_action : string prop;  (** event_action *)
  notify : bool prop;  (** notify *)
}
[@@deriving yojson_of]
(** account_takeover_risk_configuration__actions__high_action *)

type account_takeover_risk_configuration__actions__low_action = {
  event_action : string prop;  (** event_action *)
  notify : bool prop;  (** notify *)
}
[@@deriving yojson_of]
(** account_takeover_risk_configuration__actions__low_action *)

type account_takeover_risk_configuration__actions__medium_action = {
  event_action : string prop;  (** event_action *)
  notify : bool prop;  (** notify *)
}
[@@deriving yojson_of]
(** account_takeover_risk_configuration__actions__medium_action *)

type account_takeover_risk_configuration__actions = {
  high_action :
    account_takeover_risk_configuration__actions__high_action list;
  low_action :
    account_takeover_risk_configuration__actions__low_action list;
  medium_action :
    account_takeover_risk_configuration__actions__medium_action list;
}
[@@deriving yojson_of]
(** account_takeover_risk_configuration__actions *)

type account_takeover_risk_configuration__notify_configuration__block_email = {
  html_body : string prop;  (** html_body *)
  subject : string prop;  (** subject *)
  text_body : string prop;  (** text_body *)
}
[@@deriving yojson_of]
(** account_takeover_risk_configuration__notify_configuration__block_email *)

type account_takeover_risk_configuration__notify_configuration__mfa_email = {
  html_body : string prop;  (** html_body *)
  subject : string prop;  (** subject *)
  text_body : string prop;  (** text_body *)
}
[@@deriving yojson_of]
(** account_takeover_risk_configuration__notify_configuration__mfa_email *)

type account_takeover_risk_configuration__notify_configuration__no_action_email = {
  html_body : string prop;  (** html_body *)
  subject : string prop;  (** subject *)
  text_body : string prop;  (** text_body *)
}
[@@deriving yojson_of]
(** account_takeover_risk_configuration__notify_configuration__no_action_email *)

type account_takeover_risk_configuration__notify_configuration = {
  from : string prop option; [@option]  (** from *)
  reply_to : string prop option; [@option]  (** reply_to *)
  source_arn : string prop;  (** source_arn *)
  block_email :
    account_takeover_risk_configuration__notify_configuration__block_email
    list;
  mfa_email :
    account_takeover_risk_configuration__notify_configuration__mfa_email
    list;
  no_action_email :
    account_takeover_risk_configuration__notify_configuration__no_action_email
    list;
}
[@@deriving yojson_of]
(** account_takeover_risk_configuration__notify_configuration *)

type account_takeover_risk_configuration = {
  actions : account_takeover_risk_configuration__actions list;
  notify_configuration :
    account_takeover_risk_configuration__notify_configuration list;
}
[@@deriving yojson_of]
(** account_takeover_risk_configuration *)

type compromised_credentials_risk_configuration__actions = {
  event_action : string prop;  (** event_action *)
}
[@@deriving yojson_of]
(** compromised_credentials_risk_configuration__actions *)

type compromised_credentials_risk_configuration = {
  event_filter : string prop list option; [@option]
      (** event_filter *)
  actions : compromised_credentials_risk_configuration__actions list;
}
[@@deriving yojson_of]
(** compromised_credentials_risk_configuration *)

type risk_exception_configuration = {
  blocked_ip_range_list : string prop list option; [@option]
      (** blocked_ip_range_list *)
  skipped_ip_range_list : string prop list option; [@option]
      (** skipped_ip_range_list *)
}
[@@deriving yojson_of]
(** risk_exception_configuration *)

type aws_cognito_risk_configuration = {
  client_id : string prop option; [@option]  (** client_id *)
  id : string prop option; [@option]  (** id *)
  user_pool_id : string prop;  (** user_pool_id *)
  account_takeover_risk_configuration :
    account_takeover_risk_configuration list;
  compromised_credentials_risk_configuration :
    compromised_credentials_risk_configuration list;
  risk_exception_configuration : risk_exception_configuration list;
}
[@@deriving yojson_of]
(** aws_cognito_risk_configuration *)

let account_takeover_risk_configuration__actions__high_action
    ~event_action ~notify () :
    account_takeover_risk_configuration__actions__high_action =
  { event_action; notify }

let account_takeover_risk_configuration__actions__low_action
    ~event_action ~notify () :
    account_takeover_risk_configuration__actions__low_action =
  { event_action; notify }

let account_takeover_risk_configuration__actions__medium_action
    ~event_action ~notify () :
    account_takeover_risk_configuration__actions__medium_action =
  { event_action; notify }

let account_takeover_risk_configuration__actions ~high_action
    ~low_action ~medium_action () :
    account_takeover_risk_configuration__actions =
  { high_action; low_action; medium_action }

let account_takeover_risk_configuration__notify_configuration__block_email
    ~html_body ~subject ~text_body () :
    account_takeover_risk_configuration__notify_configuration__block_email
    =
  { html_body; subject; text_body }

let account_takeover_risk_configuration__notify_configuration__mfa_email
    ~html_body ~subject ~text_body () :
    account_takeover_risk_configuration__notify_configuration__mfa_email
    =
  { html_body; subject; text_body }

let account_takeover_risk_configuration__notify_configuration__no_action_email
    ~html_body ~subject ~text_body () :
    account_takeover_risk_configuration__notify_configuration__no_action_email
    =
  { html_body; subject; text_body }

let account_takeover_risk_configuration__notify_configuration ?from
    ?reply_to ~source_arn ~block_email ~mfa_email ~no_action_email ()
    : account_takeover_risk_configuration__notify_configuration =
  {
    from;
    reply_to;
    source_arn;
    block_email;
    mfa_email;
    no_action_email;
  }

let account_takeover_risk_configuration ~actions
    ~notify_configuration () : account_takeover_risk_configuration =
  { actions; notify_configuration }

let compromised_credentials_risk_configuration__actions ~event_action
    () : compromised_credentials_risk_configuration__actions =
  { event_action }

let compromised_credentials_risk_configuration ?event_filter ~actions
    () : compromised_credentials_risk_configuration =
  { event_filter; actions }

let risk_exception_configuration ?blocked_ip_range_list
    ?skipped_ip_range_list () : risk_exception_configuration =
  { blocked_ip_range_list; skipped_ip_range_list }

let aws_cognito_risk_configuration ?client_id ?id ~user_pool_id
    ~account_takeover_risk_configuration
    ~compromised_credentials_risk_configuration
    ~risk_exception_configuration () : aws_cognito_risk_configuration
    =
  {
    client_id;
    id;
    user_pool_id;
    account_takeover_risk_configuration;
    compromised_credentials_risk_configuration;
    risk_exception_configuration;
  }

type t = {
  client_id : string prop;
  id : string prop;
  user_pool_id : string prop;
}

let make ?client_id ?id ~user_pool_id
    ~account_takeover_risk_configuration
    ~compromised_credentials_risk_configuration
    ~risk_exception_configuration __id =
  let __type = "aws_cognito_risk_configuration" in
  let __attrs =
    ({
       client_id = Prop.computed __type __id "client_id";
       id = Prop.computed __type __id "id";
       user_pool_id = Prop.computed __type __id "user_pool_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cognito_risk_configuration
        (aws_cognito_risk_configuration ?client_id ?id ~user_pool_id
           ~account_takeover_risk_configuration
           ~compromised_credentials_risk_configuration
           ~risk_exception_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?client_id ?id ~user_pool_id
    ~account_takeover_risk_configuration
    ~compromised_credentials_risk_configuration
    ~risk_exception_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?client_id ?id ~user_pool_id
      ~account_takeover_risk_configuration
      ~compromised_credentials_risk_configuration
      ~risk_exception_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
