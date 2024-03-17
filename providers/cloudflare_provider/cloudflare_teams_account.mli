(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_teams_account__antivirus__notification_settings
type cloudflare_teams_account__antivirus
type cloudflare_teams_account__block_page
type cloudflare_teams_account__body_scanning
type cloudflare_teams_account__extended_email_matching
type cloudflare_teams_account__fips
type cloudflare_teams_account__logging__settings_by_rule_type__dns
type cloudflare_teams_account__logging__settings_by_rule_type__http
type cloudflare_teams_account__logging__settings_by_rule_type__l4
type cloudflare_teams_account__logging__settings_by_rule_type
type cloudflare_teams_account__logging
type cloudflare_teams_account__payload_log
type cloudflare_teams_account__proxy
type cloudflare_teams_account__ssh_session_log
type cloudflare_teams_account

val cloudflare_teams_account :
  ?activity_log_enabled:bool prop ->
  ?id:string prop ->
  ?non_identity_browser_isolation_enabled:bool prop ->
  ?protocol_detection_enabled:bool prop ->
  ?tls_decrypt_enabled:bool prop ->
  ?url_browser_isolation_enabled:bool prop ->
  account_id:string prop ->
  antivirus:cloudflare_teams_account__antivirus list ->
  block_page:cloudflare_teams_account__block_page list ->
  body_scanning:cloudflare_teams_account__body_scanning list ->
  extended_email_matching:
    cloudflare_teams_account__extended_email_matching list ->
  fips:cloudflare_teams_account__fips list ->
  logging:cloudflare_teams_account__logging list ->
  payload_log:cloudflare_teams_account__payload_log list ->
  proxy:cloudflare_teams_account__proxy list ->
  ssh_session_log:cloudflare_teams_account__ssh_session_log list ->
  string ->
  unit
