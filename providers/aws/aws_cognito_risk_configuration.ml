(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type account_takeover_risk_configuration__actions__high_action = {
  event_action : string prop;
  notify : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : account_takeover_risk_configuration__actions__high_action) ->
  ()

let yojson_of_account_takeover_risk_configuration__actions__high_action
    =
  (function
   | { event_action = v_event_action; notify = v_notify } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_notify in
         ("notify", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_event_action in
         ("event_action", arg) :: bnds
       in
       `Assoc bnds
    : account_takeover_risk_configuration__actions__high_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_account_takeover_risk_configuration__actions__high_action

[@@@deriving.end]

type account_takeover_risk_configuration__actions__low_action = {
  event_action : string prop;
  notify : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : account_takeover_risk_configuration__actions__low_action) ->
  ()

let yojson_of_account_takeover_risk_configuration__actions__low_action
    =
  (function
   | { event_action = v_event_action; notify = v_notify } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_notify in
         ("notify", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_event_action in
         ("event_action", arg) :: bnds
       in
       `Assoc bnds
    : account_takeover_risk_configuration__actions__low_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_account_takeover_risk_configuration__actions__low_action

[@@@deriving.end]

type account_takeover_risk_configuration__actions__medium_action = {
  event_action : string prop;
  notify : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       account_takeover_risk_configuration__actions__medium_action) ->
  ()

let yojson_of_account_takeover_risk_configuration__actions__medium_action
    =
  (function
   | { event_action = v_event_action; notify = v_notify } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_notify in
         ("notify", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_event_action in
         ("event_action", arg) :: bnds
       in
       `Assoc bnds
    : account_takeover_risk_configuration__actions__medium_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_account_takeover_risk_configuration__actions__medium_action

[@@@deriving.end]

type account_takeover_risk_configuration__actions = {
  high_action :
    account_takeover_risk_configuration__actions__high_action list;
  low_action :
    account_takeover_risk_configuration__actions__low_action list;
  medium_action :
    account_takeover_risk_configuration__actions__medium_action list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : account_takeover_risk_configuration__actions) -> ()

let yojson_of_account_takeover_risk_configuration__actions =
  (function
   | {
       high_action = v_high_action;
       low_action = v_low_action;
       medium_action = v_medium_action;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_account_takeover_risk_configuration__actions__medium_action
             v_medium_action
         in
         ("medium_action", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_account_takeover_risk_configuration__actions__low_action
             v_low_action
         in
         ("low_action", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_account_takeover_risk_configuration__actions__high_action
             v_high_action
         in
         ("high_action", arg) :: bnds
       in
       `Assoc bnds
    : account_takeover_risk_configuration__actions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_account_takeover_risk_configuration__actions

[@@@deriving.end]

type account_takeover_risk_configuration__notify_configuration__block_email = {
  html_body : string prop;
  subject : string prop;
  text_body : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       account_takeover_risk_configuration__notify_configuration__block_email) ->
  ()

let yojson_of_account_takeover_risk_configuration__notify_configuration__block_email
    =
  (function
   | {
       html_body = v_html_body;
       subject = v_subject;
       text_body = v_text_body;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_text_body in
         ("text_body", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subject in
         ("subject", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_html_body in
         ("html_body", arg) :: bnds
       in
       `Assoc bnds
    : account_takeover_risk_configuration__notify_configuration__block_email ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_account_takeover_risk_configuration__notify_configuration__block_email

[@@@deriving.end]

type account_takeover_risk_configuration__notify_configuration__mfa_email = {
  html_body : string prop;
  subject : string prop;
  text_body : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       account_takeover_risk_configuration__notify_configuration__mfa_email) ->
  ()

let yojson_of_account_takeover_risk_configuration__notify_configuration__mfa_email
    =
  (function
   | {
       html_body = v_html_body;
       subject = v_subject;
       text_body = v_text_body;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_text_body in
         ("text_body", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subject in
         ("subject", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_html_body in
         ("html_body", arg) :: bnds
       in
       `Assoc bnds
    : account_takeover_risk_configuration__notify_configuration__mfa_email ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_account_takeover_risk_configuration__notify_configuration__mfa_email

[@@@deriving.end]

type account_takeover_risk_configuration__notify_configuration__no_action_email = {
  html_body : string prop;
  subject : string prop;
  text_body : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       account_takeover_risk_configuration__notify_configuration__no_action_email) ->
  ()

let yojson_of_account_takeover_risk_configuration__notify_configuration__no_action_email
    =
  (function
   | {
       html_body = v_html_body;
       subject = v_subject;
       text_body = v_text_body;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_text_body in
         ("text_body", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subject in
         ("subject", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_html_body in
         ("html_body", arg) :: bnds
       in
       `Assoc bnds
    : account_takeover_risk_configuration__notify_configuration__no_action_email ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_account_takeover_risk_configuration__notify_configuration__no_action_email

[@@@deriving.end]

type account_takeover_risk_configuration__notify_configuration = {
  from : string prop option; [@option]
  reply_to : string prop option; [@option]
  source_arn : string prop;
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
[@@deriving_inline yojson_of]

let _ =
 fun (_ : account_takeover_risk_configuration__notify_configuration) ->
  ()

let yojson_of_account_takeover_risk_configuration__notify_configuration
    =
  (function
   | {
       from = v_from;
       reply_to = v_reply_to;
       source_arn = v_source_arn;
       block_email = v_block_email;
       mfa_email = v_mfa_email;
       no_action_email = v_no_action_email;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_account_takeover_risk_configuration__notify_configuration__no_action_email
             v_no_action_email
         in
         ("no_action_email", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_account_takeover_risk_configuration__notify_configuration__mfa_email
             v_mfa_email
         in
         ("mfa_email", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_account_takeover_risk_configuration__notify_configuration__block_email
             v_block_email
         in
         ("block_email", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_arn in
         ("source_arn", arg) :: bnds
       in
       let bnds =
         match v_reply_to with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "reply_to", arg in
             bnd :: bnds
       in
       let bnds =
         match v_from with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "from", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : account_takeover_risk_configuration__notify_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_account_takeover_risk_configuration__notify_configuration

[@@@deriving.end]

type account_takeover_risk_configuration = {
  actions : account_takeover_risk_configuration__actions list;
  notify_configuration :
    account_takeover_risk_configuration__notify_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : account_takeover_risk_configuration) -> ()

let yojson_of_account_takeover_risk_configuration =
  (function
   | {
       actions = v_actions;
       notify_configuration = v_notify_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_account_takeover_risk_configuration__notify_configuration
             v_notify_configuration
         in
         ("notify_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_account_takeover_risk_configuration__actions
             v_actions
         in
         ("actions", arg) :: bnds
       in
       `Assoc bnds
    : account_takeover_risk_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_account_takeover_risk_configuration

[@@@deriving.end]

type compromised_credentials_risk_configuration__actions = {
  event_action : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : compromised_credentials_risk_configuration__actions) -> ()

let yojson_of_compromised_credentials_risk_configuration__actions =
  (function
   | { event_action = v_event_action } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_event_action in
         ("event_action", arg) :: bnds
       in
       `Assoc bnds
    : compromised_credentials_risk_configuration__actions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_compromised_credentials_risk_configuration__actions

[@@@deriving.end]

type compromised_credentials_risk_configuration = {
  event_filter : string prop list option; [@option]
  actions : compromised_credentials_risk_configuration__actions list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : compromised_credentials_risk_configuration) -> ()

let yojson_of_compromised_credentials_risk_configuration =
  (function
   | { event_filter = v_event_filter; actions = v_actions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_compromised_credentials_risk_configuration__actions
             v_actions
         in
         ("actions", arg) :: bnds
       in
       let bnds =
         match v_event_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "event_filter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : compromised_credentials_risk_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_compromised_credentials_risk_configuration

[@@@deriving.end]

type risk_exception_configuration = {
  blocked_ip_range_list : string prop list option; [@option]
  skipped_ip_range_list : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : risk_exception_configuration) -> ()

let yojson_of_risk_exception_configuration =
  (function
   | {
       blocked_ip_range_list = v_blocked_ip_range_list;
       skipped_ip_range_list = v_skipped_ip_range_list;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_skipped_ip_range_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "skipped_ip_range_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_blocked_ip_range_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "blocked_ip_range_list", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : risk_exception_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_risk_exception_configuration

[@@@deriving.end]

type aws_cognito_risk_configuration = {
  client_id : string prop option; [@option]
  id : string prop option; [@option]
  user_pool_id : string prop;
  account_takeover_risk_configuration :
    account_takeover_risk_configuration list;
  compromised_credentials_risk_configuration :
    compromised_credentials_risk_configuration list;
  risk_exception_configuration : risk_exception_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cognito_risk_configuration) -> ()

let yojson_of_aws_cognito_risk_configuration =
  (function
   | {
       client_id = v_client_id;
       id = v_id;
       user_pool_id = v_user_pool_id;
       account_takeover_risk_configuration =
         v_account_takeover_risk_configuration;
       compromised_credentials_risk_configuration =
         v_compromised_credentials_risk_configuration;
       risk_exception_configuration = v_risk_exception_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_risk_exception_configuration
             v_risk_exception_configuration
         in
         ("risk_exception_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_compromised_credentials_risk_configuration
             v_compromised_credentials_risk_configuration
         in
         ("compromised_credentials_risk_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_account_takeover_risk_configuration
             v_account_takeover_risk_configuration
         in
         ("account_takeover_risk_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_pool_id in
         ("user_pool_id", arg) :: bnds
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
         match v_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cognito_risk_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cognito_risk_configuration

[@@@deriving.end]

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

let account_takeover_risk_configuration__actions ?(high_action = [])
    ?(low_action = []) ?(medium_action = []) () :
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
    ?reply_to ?(block_email = []) ?(mfa_email = [])
    ?(no_action_email = []) ~source_arn () :
    account_takeover_risk_configuration__notify_configuration =
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

let aws_cognito_risk_configuration ?client_id ?id
    ?(account_takeover_risk_configuration = [])
    ?(compromised_credentials_risk_configuration = [])
    ?(risk_exception_configuration = []) ~user_pool_id () :
    aws_cognito_risk_configuration =
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

let make ?client_id ?id ?(account_takeover_risk_configuration = [])
    ?(compromised_credentials_risk_configuration = [])
    ?(risk_exception_configuration = []) ~user_pool_id __id =
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
        (aws_cognito_risk_configuration ?client_id ?id
           ~account_takeover_risk_configuration
           ~compromised_credentials_risk_configuration
           ~risk_exception_configuration ~user_pool_id ());
    attrs = __attrs;
  }

let register ?tf_module ?client_id ?id
    ?(account_takeover_risk_configuration = [])
    ?(compromised_credentials_risk_configuration = [])
    ?(risk_exception_configuration = []) ~user_pool_id __id =
  let (r : _ Tf_core.resource) =
    make ?client_id ?id ~account_takeover_risk_configuration
      ~compromised_credentials_risk_configuration
      ~risk_exception_configuration ~user_pool_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
