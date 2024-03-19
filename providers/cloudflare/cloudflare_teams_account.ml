(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type antivirus__notification_settings = {
  enabled : bool prop option; [@option]
      (** Enable notification settings. *)
  message : string prop option; [@option]
      (** Notification content. *)
  support_url : string prop option; [@option]
      (** Support URL to show in the notification. *)
}
[@@deriving yojson_of]
(** Set notifications for antivirus. *)

type antivirus = {
  enabled_download_phase : bool prop;  (** Scan on file download. *)
  enabled_upload_phase : bool prop;  (** Scan on file upload. *)
  fail_closed : bool prop;
      (** Block requests for files that cannot be scanned. *)
  notification_settings : antivirus__notification_settings list;
}
[@@deriving yojson_of]
(** Configuration block for antivirus traffic scanning. *)

type block_page = {
  background_color : string prop option; [@option]
      (** Hex code of block page background color. *)
  enabled : bool prop option; [@option]
      (** Indicator of enablement. *)
  footer_text : string prop option; [@option]
      (** Block page footer text. *)
  header_text : string prop option; [@option]
      (** Block page header text. *)
  logo_path : string prop option; [@option]
      (** URL of block page logo. *)
  mailto_address : string prop option; [@option]
      (** Admin email for users to contact. *)
  mailto_subject : string prop option; [@option]
      (** Subject line for emails created from block page. *)
  name : string prop option; [@option]
      (** Name of block page configuration. *)
}
[@@deriving yojson_of]
(** Configuration for a custom block page. *)

type body_scanning = {
  inspection_mode : string prop;
      (** Body scanning inspection mode. Available values: `deep`, `shallow`. *)
}
[@@deriving yojson_of]
(** Configuration for body scanning. *)

type extended_email_matching = {
  enabled : bool prop;
      (** Whether e-mails should be matched on all variants of user emails (with + or . modifiers) in Firewall policies. *)
}
[@@deriving yojson_of]
(** Configuration for extended e-mail matching. *)

type fips = {
  tls : bool prop option; [@option]
      (** Only allow FIPS-compliant TLS configuration. *)
}
[@@deriving yojson_of]
(** Configure compliance with Federal Information Processing Standards. *)

type logging__settings_by_rule_type__dns = {
  log_all : bool prop;  (** Whether to log all activity. *)
  log_blocks : bool prop;  (** log_blocks *)
}
[@@deriving yojson_of]
(** Logging configuration for DNS requests. *)

type logging__settings_by_rule_type__http = {
  log_all : bool prop;  (** Whether to log all activity. *)
  log_blocks : bool prop;  (** log_blocks *)
}
[@@deriving yojson_of]
(** Logging configuration for HTTP requests. *)

type logging__settings_by_rule_type__l4 = {
  log_all : bool prop;  (** Whether to log all activity. *)
  log_blocks : bool prop;  (** log_blocks *)
}
[@@deriving yojson_of]
(** Logging configuration for layer 4 requests. *)

type logging__settings_by_rule_type = {
  dns : logging__settings_by_rule_type__dns list;
  http : logging__settings_by_rule_type__http list;
  l4 : logging__settings_by_rule_type__l4 list;
}
[@@deriving yojson_of]
(** Represents whether all requests are logged or only the blocked requests are slogged in DNS, HTTP and L4 filters. *)

type logging = {
  redact_pii : bool prop;
      (** Redact personally identifiable information from activity logging (PII fields are: source IP, user email, user ID, device ID, URL, referrer, user agent). *)
  settings_by_rule_type : logging__settings_by_rule_type list;
}
[@@deriving yojson_of]
(** logging *)

type payload_log = {
  public_key : string prop;
      (** Public key used to encrypt matched payloads. *)
}
[@@deriving yojson_of]
(** Configuration for DLP Payload Logging. *)

type proxy = {
  root_ca : bool prop;
      (** Whether root ca is enabled account wide for ZT clients. *)
  tcp : bool prop;
      (** Whether gateway proxy is enabled on gateway devices for TCP traffic. *)
  udp : bool prop;
      (** Whether gateway proxy is enabled on gateway devices for UDP traffic. *)
}
[@@deriving yojson_of]
(** Configuration block for specifying which protocols are proxied. *)

type ssh_session_log = {
  public_key : string prop;
      (** Public key used to encrypt ssh session. *)
}
[@@deriving yojson_of]
(** Configuration for SSH Session Logging. *)

type cloudflare_teams_account = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  activity_log_enabled : bool prop option; [@option]
      (** Whether to enable the activity log. *)
  id : string prop option; [@option]  (** id *)
  non_identity_browser_isolation_enabled : bool prop option;
      [@option]
      (** Enable non-identity onramp for Browser Isolation. Defaults to `false`. *)
  protocol_detection_enabled : bool prop option; [@option]
      (** Indicator that protocol detection is enabled. *)
  tls_decrypt_enabled : bool prop option; [@option]
      (** Indicator that decryption of TLS traffic is enabled. *)
  url_browser_isolation_enabled : bool prop option; [@option]
      (** Safely browse websites in Browser Isolation through a URL. Defaults to `false`. *)
  antivirus : antivirus list;
  block_page : block_page list;
  body_scanning : body_scanning list;
  extended_email_matching : extended_email_matching list;
  fips : fips list;
  logging : logging list;
  payload_log : payload_log list;
  proxy : proxy list;
  ssh_session_log : ssh_session_log list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Teams Account resource. The Teams Account
resource defines configuration for secure web gateway.
 *)

let antivirus__notification_settings ?enabled ?message ?support_url
    () : antivirus__notification_settings =
  { enabled; message; support_url }

let antivirus ~enabled_download_phase ~enabled_upload_phase
    ~fail_closed ~notification_settings () : antivirus =
  {
    enabled_download_phase;
    enabled_upload_phase;
    fail_closed;
    notification_settings;
  }

let block_page ?background_color ?enabled ?footer_text ?header_text
    ?logo_path ?mailto_address ?mailto_subject ?name () : block_page
    =
  {
    background_color;
    enabled;
    footer_text;
    header_text;
    logo_path;
    mailto_address;
    mailto_subject;
    name;
  }

let body_scanning ~inspection_mode () : body_scanning =
  { inspection_mode }

let extended_email_matching ~enabled () : extended_email_matching =
  { enabled }

let fips ?tls () : fips = { tls }

let logging__settings_by_rule_type__dns ~log_all ~log_blocks () :
    logging__settings_by_rule_type__dns =
  { log_all; log_blocks }

let logging__settings_by_rule_type__http ~log_all ~log_blocks () :
    logging__settings_by_rule_type__http =
  { log_all; log_blocks }

let logging__settings_by_rule_type__l4 ~log_all ~log_blocks () :
    logging__settings_by_rule_type__l4 =
  { log_all; log_blocks }

let logging__settings_by_rule_type ~dns ~http ~l4 () :
    logging__settings_by_rule_type =
  { dns; http; l4 }

let logging ~redact_pii ~settings_by_rule_type () : logging =
  { redact_pii; settings_by_rule_type }

let payload_log ~public_key () : payload_log = { public_key }
let proxy ~root_ca ~tcp ~udp () : proxy = { root_ca; tcp; udp }
let ssh_session_log ~public_key () : ssh_session_log = { public_key }

let cloudflare_teams_account ?activity_log_enabled ?id
    ?non_identity_browser_isolation_enabled
    ?protocol_detection_enabled ?tls_decrypt_enabled
    ?url_browser_isolation_enabled ~account_id ~antivirus ~block_page
    ~body_scanning ~extended_email_matching ~fips ~logging
    ~payload_log ~proxy ~ssh_session_log () :
    cloudflare_teams_account =
  {
    account_id;
    activity_log_enabled;
    id;
    non_identity_browser_isolation_enabled;
    protocol_detection_enabled;
    tls_decrypt_enabled;
    url_browser_isolation_enabled;
    antivirus;
    block_page;
    body_scanning;
    extended_email_matching;
    fips;
    logging;
    payload_log;
    proxy;
    ssh_session_log;
  }

type t = {
  account_id : string prop;
  activity_log_enabled : bool prop;
  id : string prop;
  non_identity_browser_isolation_enabled : bool prop;
  protocol_detection_enabled : bool prop;
  tls_decrypt_enabled : bool prop;
  url_browser_isolation_enabled : bool prop;
}

let register ?tf_module ?activity_log_enabled ?id
    ?non_identity_browser_isolation_enabled
    ?protocol_detection_enabled ?tls_decrypt_enabled
    ?url_browser_isolation_enabled ~account_id ~antivirus ~block_page
    ~body_scanning ~extended_email_matching ~fips ~logging
    ~payload_log ~proxy ~ssh_session_log __resource_id =
  let __resource_type = "cloudflare_teams_account" in
  let __resource =
    cloudflare_teams_account ?activity_log_enabled ?id
      ?non_identity_browser_isolation_enabled
      ?protocol_detection_enabled ?tls_decrypt_enabled
      ?url_browser_isolation_enabled ~account_id ~antivirus
      ~block_page ~body_scanning ~extended_email_matching ~fips
      ~logging ~payload_log ~proxy ~ssh_session_log ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_teams_account __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       activity_log_enabled =
         Prop.computed __resource_type __resource_id
           "activity_log_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       non_identity_browser_isolation_enabled =
         Prop.computed __resource_type __resource_id
           "non_identity_browser_isolation_enabled";
       protocol_detection_enabled =
         Prop.computed __resource_type __resource_id
           "protocol_detection_enabled";
       tls_decrypt_enabled =
         Prop.computed __resource_type __resource_id
           "tls_decrypt_enabled";
       url_browser_isolation_enabled =
         Prop.computed __resource_type __resource_id
           "url_browser_isolation_enabled";
     }
      : t)
  in
  __resource_attributes
