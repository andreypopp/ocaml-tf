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

type t = private {
  account_id : string prop;
  action : string prop;
  description : string prop;
  device_posture : string prop;
  enabled : bool prop;
  filters : string list prop;
  id : string prop;
  identity : string prop;
  name : string prop;
  precedence : float prop;
  traffic : string prop;
  version : float prop;
}

val cloudflare_teams_rule :
  ?device_posture:string prop ->
  ?enabled:bool prop ->
  ?filters:string prop list ->
  ?id:string prop ->
  ?identity:string prop ->
  ?traffic:string prop ->
  account_id:string prop ->
  action:string prop ->
  description:string prop ->
  name:string prop ->
  precedence:float prop ->
  rule_settings:cloudflare_teams_rule__rule_settings list ->
  string ->
  t
