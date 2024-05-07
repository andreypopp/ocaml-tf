(** Provides a Cloudflare Teams Account resource. The Teams Account
resource defines configuration for secure web gateway.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type antivirus__notification_settings

val antivirus__notification_settings :
  ?enabled:bool prop ->
  ?message:string prop ->
  ?support_url:string prop ->
  unit ->
  antivirus__notification_settings

type antivirus

val antivirus :
  ?notification_settings:antivirus__notification_settings list ->
  enabled_download_phase:bool prop ->
  enabled_upload_phase:bool prop ->
  fail_closed:bool prop ->
  unit ->
  antivirus

type block_page

val block_page :
  ?background_color:string prop ->
  ?enabled:bool prop ->
  ?footer_text:string prop ->
  ?header_text:string prop ->
  ?logo_path:string prop ->
  ?mailto_address:string prop ->
  ?mailto_subject:string prop ->
  ?name:string prop ->
  unit ->
  block_page

type body_scanning

val body_scanning :
  inspection_mode:string prop -> unit -> body_scanning

type extended_email_matching

val extended_email_matching :
  enabled:bool prop -> unit -> extended_email_matching

type fips

val fips : ?tls:bool prop -> unit -> fips

type logging__settings_by_rule_type__dns

val logging__settings_by_rule_type__dns :
  log_all:bool prop ->
  log_blocks:bool prop ->
  unit ->
  logging__settings_by_rule_type__dns

type logging__settings_by_rule_type__http

val logging__settings_by_rule_type__http :
  log_all:bool prop ->
  log_blocks:bool prop ->
  unit ->
  logging__settings_by_rule_type__http

type logging__settings_by_rule_type__l4

val logging__settings_by_rule_type__l4 :
  log_all:bool prop ->
  log_blocks:bool prop ->
  unit ->
  logging__settings_by_rule_type__l4

type logging__settings_by_rule_type

val logging__settings_by_rule_type :
  dns:logging__settings_by_rule_type__dns list ->
  http:logging__settings_by_rule_type__http list ->
  l4:logging__settings_by_rule_type__l4 list ->
  unit ->
  logging__settings_by_rule_type

type logging

val logging :
  redact_pii:bool prop ->
  settings_by_rule_type:logging__settings_by_rule_type list ->
  unit ->
  logging

type payload_log

val payload_log : public_key:string prop -> unit -> payload_log

type proxy

val proxy :
  root_ca:bool prop ->
  tcp:bool prop ->
  udp:bool prop ->
  unit ->
  proxy

type ssh_session_log

val ssh_session_log :
  public_key:string prop -> unit -> ssh_session_log

type cloudflare_teams_account

val cloudflare_teams_account :
  ?activity_log_enabled:bool prop ->
  ?id:string prop ->
  ?non_identity_browser_isolation_enabled:bool prop ->
  ?protocol_detection_enabled:bool prop ->
  ?tls_decrypt_enabled:bool prop ->
  ?url_browser_isolation_enabled:bool prop ->
  ?antivirus:antivirus list ->
  ?block_page:block_page list ->
  ?body_scanning:body_scanning list ->
  ?extended_email_matching:extended_email_matching list ->
  ?fips:fips list ->
  ?logging:logging list ->
  ?payload_log:payload_log list ->
  ?proxy:proxy list ->
  ?ssh_session_log:ssh_session_log list ->
  account_id:string prop ->
  unit ->
  cloudflare_teams_account

val yojson_of_cloudflare_teams_account :
  cloudflare_teams_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  activity_log_enabled : bool prop;
  id : string prop;
  non_identity_browser_isolation_enabled : bool prop;
  protocol_detection_enabled : bool prop;
  tls_decrypt_enabled : bool prop;
  url_browser_isolation_enabled : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?activity_log_enabled:bool prop ->
  ?id:string prop ->
  ?non_identity_browser_isolation_enabled:bool prop ->
  ?protocol_detection_enabled:bool prop ->
  ?tls_decrypt_enabled:bool prop ->
  ?url_browser_isolation_enabled:bool prop ->
  ?antivirus:antivirus list ->
  ?block_page:block_page list ->
  ?body_scanning:body_scanning list ->
  ?extended_email_matching:extended_email_matching list ->
  ?fips:fips list ->
  ?logging:logging list ->
  ?payload_log:payload_log list ->
  ?proxy:proxy list ->
  ?ssh_session_log:ssh_session_log list ->
  account_id:string prop ->
  string ->
  t

val make :
  ?activity_log_enabled:bool prop ->
  ?id:string prop ->
  ?non_identity_browser_isolation_enabled:bool prop ->
  ?protocol_detection_enabled:bool prop ->
  ?tls_decrypt_enabled:bool prop ->
  ?url_browser_isolation_enabled:bool prop ->
  ?antivirus:antivirus list ->
  ?block_page:block_page list ->
  ?body_scanning:body_scanning list ->
  ?extended_email_matching:extended_email_matching list ->
  ?fips:fips list ->
  ?logging:logging list ->
  ?payload_log:payload_log list ->
  ?proxy:proxy list ->
  ?ssh_session_log:ssh_session_log list ->
  account_id:string prop ->
  string ->
  t Tf_core.resource
