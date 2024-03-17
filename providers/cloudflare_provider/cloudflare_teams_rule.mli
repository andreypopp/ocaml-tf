(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_teams_rule__rule_settings__audit_ssh
type cloudflare_teams_rule__rule_settings__biso_admin_controls
type cloudflare_teams_rule__rule_settings__check_session
type cloudflare_teams_rule__rule_settings__egress
type cloudflare_teams_rule__rule_settings__l4override
type cloudflare_teams_rule__rule_settings__notification_settings
type cloudflare_teams_rule__rule_settings__payload_log
type cloudflare_teams_rule__rule_settings__untrusted_cert
type cloudflare_teams_rule__rule_settings
type cloudflare_teams_rule

val cloudflare_teams_rule :
  ?device_posture:string ->
  ?enabled:bool ->
  ?filters:string list ->
  ?id:string ->
  ?identity:string ->
  ?traffic:string ->
  account_id:string ->
  action:string ->
  description:string ->
  name:string ->
  precedence:float ->
  rule_settings:cloudflare_teams_rule__rule_settings list ->
  string ->
  unit
