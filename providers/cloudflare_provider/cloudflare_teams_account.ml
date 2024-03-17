(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_teams_account__antivirus__notification_settings = {
  enabled : bool option; [@option]
      (** Enable notification settings. *)
  message : string option; [@option]  (** Notification content. *)
  support_url : string option; [@option]
      (** Support URL to show in the notification. *)
}
[@@deriving yojson_of]
(** Set notifications for antivirus. *)

type cloudflare_teams_account__antivirus = {
  enabled_download_phase : bool;  (** Scan on file download. *)
  enabled_upload_phase : bool;  (** Scan on file upload. *)
  fail_closed : bool;
      (** Block requests for files that cannot be scanned. *)
  notification_settings :
    cloudflare_teams_account__antivirus__notification_settings list;
}
[@@deriving yojson_of]
(** Configuration block for antivirus traffic scanning. *)

type cloudflare_teams_account__block_page = {
  background_color : string option; [@option]
      (** Hex code of block page background color. *)
  enabled : bool option; [@option]  (** Indicator of enablement. *)
  footer_text : string option; [@option]
      (** Block page footer text. *)
  header_text : string option; [@option]
      (** Block page header text. *)
  logo_path : string option; [@option]
      (** URL of block page logo. *)
  mailto_address : string option; [@option]
      (** Admin email for users to contact. *)
  mailto_subject : string option; [@option]
      (** Subject line for emails created from block page. *)
  name : string option; [@option]
      (** Name of block page configuration. *)
}
[@@deriving yojson_of]
(** Configuration for a custom block page. *)

type cloudflare_teams_account__body_scanning = {
  inspection_mode : string;
      (** Body scanning inspection mode. Available values: `deep`, `shallow`. *)
}
[@@deriving yojson_of]
(** Configuration for body scanning. *)

type cloudflare_teams_account__extended_email_matching = {
  enabled : bool;
      (** Whether e-mails should be matched on all variants of user emails (with + or . modifiers) in Firewall policies. *)
}
[@@deriving yojson_of]
(** Configuration for extended e-mail matching. *)

type cloudflare_teams_account__fips = {
  tls : bool option; [@option]
      (** Only allow FIPS-compliant TLS configuration. *)
}
[@@deriving yojson_of]
(** Configure compliance with Federal Information Processing Standards. *)

type cloudflare_teams_account__logging__settings_by_rule_type__dns = {
  log_all : bool;  (** Whether to log all activity. *)
  log_blocks : bool;  (** log_blocks *)
}
[@@deriving yojson_of]
(** Logging configuration for DNS requests. *)

type cloudflare_teams_account__logging__settings_by_rule_type__http = {
  log_all : bool;  (** Whether to log all activity. *)
  log_blocks : bool;  (** log_blocks *)
}
[@@deriving yojson_of]
(** Logging configuration for HTTP requests. *)

type cloudflare_teams_account__logging__settings_by_rule_type__l4 = {
  log_all : bool;  (** Whether to log all activity. *)
  log_blocks : bool;  (** log_blocks *)
}
[@@deriving yojson_of]
(** Logging configuration for layer 4 requests. *)

type cloudflare_teams_account__logging__settings_by_rule_type = {
  dns :
    cloudflare_teams_account__logging__settings_by_rule_type__dns
    list;
  http :
    cloudflare_teams_account__logging__settings_by_rule_type__http
    list;
  l4 :
    cloudflare_teams_account__logging__settings_by_rule_type__l4 list;
}
[@@deriving yojson_of]
(** Represents whether all requests are logged or only the blocked requests are slogged in DNS, HTTP and L4 filters. *)

type cloudflare_teams_account__logging = {
  redact_pii : bool;
      (** Redact personally identifiable information from activity logging (PII fields are: source IP, user email, user ID, device ID, URL, referrer, user agent). *)
  settings_by_rule_type :
    cloudflare_teams_account__logging__settings_by_rule_type list;
}
[@@deriving yojson_of]
(** cloudflare_teams_account__logging *)

type cloudflare_teams_account__payload_log = {
  public_key : string;
      (** Public key used to encrypt matched payloads. *)
}
[@@deriving yojson_of]
(** Configuration for DLP Payload Logging. *)

type cloudflare_teams_account__proxy = {
  root_ca : bool;
      (** Whether root ca is enabled account wide for ZT clients. *)
  tcp : bool;
      (** Whether gateway proxy is enabled on gateway devices for TCP traffic. *)
  udp : bool;
      (** Whether gateway proxy is enabled on gateway devices for UDP traffic. *)
}
[@@deriving yojson_of]
(** Configuration block for specifying which protocols are proxied. *)

type cloudflare_teams_account__ssh_session_log = {
  public_key : string;  (** Public key used to encrypt ssh session. *)
}
[@@deriving yojson_of]
(** Configuration for SSH Session Logging. *)

type cloudflare_teams_account = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  activity_log_enabled : bool option; [@option]
      (** Whether to enable the activity log. *)
  non_identity_browser_isolation_enabled : bool option; [@option]
      (** Enable non-identity onramp for Browser Isolation. Defaults to `false`. *)
  protocol_detection_enabled : bool option; [@option]
      (** Indicator that protocol detection is enabled. *)
  tls_decrypt_enabled : bool option; [@option]
      (** Indicator that decryption of TLS traffic is enabled. *)
  url_browser_isolation_enabled : bool option; [@option]
      (** Safely browse websites in Browser Isolation through a URL. Defaults to `false`. *)
  antivirus : cloudflare_teams_account__antivirus list;
  block_page : cloudflare_teams_account__block_page list;
  body_scanning : cloudflare_teams_account__body_scanning list;
  extended_email_matching :
    cloudflare_teams_account__extended_email_matching list;
  fips : cloudflare_teams_account__fips list;
  logging : cloudflare_teams_account__logging list;
  payload_log : cloudflare_teams_account__payload_log list;
  proxy : cloudflare_teams_account__proxy list;
  ssh_session_log : cloudflare_teams_account__ssh_session_log list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Teams Account resource. The Teams Account
resource defines configuration for secure web gateway.
 *)

let cloudflare_teams_account ?activity_log_enabled
    ?non_identity_browser_isolation_enabled
    ?protocol_detection_enabled ?tls_decrypt_enabled
    ?url_browser_isolation_enabled ~account_id ~antivirus ~block_page
    ~body_scanning ~extended_email_matching ~fips ~logging
    ~payload_log ~proxy ~ssh_session_log __resource_id =
  let __resource_type = "cloudflare_teams_account" in
  let __resource =
    {
      account_id;
      activity_log_enabled;
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_teams_account __resource);
  ()
