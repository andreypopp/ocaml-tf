(** Provides a Cloudflare Teams rule resource. Teams rules comprise secure web gateway policies. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rule_settings__audit_ssh

val rule_settings__audit_ssh :
  command_logging:bool prop -> unit -> rule_settings__audit_ssh

type rule_settings__biso_admin_controls

val rule_settings__biso_admin_controls :
  ?disable_copy_paste:bool prop ->
  ?disable_download:bool prop ->
  ?disable_keyboard:bool prop ->
  ?disable_printing:bool prop ->
  ?disable_upload:bool prop ->
  unit ->
  rule_settings__biso_admin_controls

type rule_settings__check_session

val rule_settings__check_session :
  duration:string prop ->
  enforce:bool prop ->
  unit ->
  rule_settings__check_session

type rule_settings__egress

val rule_settings__egress :
  ?ipv4_fallback:string prop ->
  ipv4:string prop ->
  ipv6:string prop ->
  unit ->
  rule_settings__egress

type rule_settings__l4override

val rule_settings__l4override :
  ip:string prop ->
  port:float prop ->
  unit ->
  rule_settings__l4override

type rule_settings__notification_settings

val rule_settings__notification_settings :
  ?enabled:bool prop ->
  ?message:string prop ->
  ?support_url:string prop ->
  unit ->
  rule_settings__notification_settings

type rule_settings__payload_log

val rule_settings__payload_log :
  enabled:bool prop -> unit -> rule_settings__payload_log

type rule_settings__untrusted_cert

val rule_settings__untrusted_cert :
  ?action:string prop -> unit -> rule_settings__untrusted_cert

type rule_settings

val rule_settings :
  ?add_headers:(string * string prop) list ->
  ?allow_child_bypass:bool prop ->
  ?block_page_enabled:bool prop ->
  ?block_page_reason:string prop ->
  ?bypass_parent_rule:bool prop ->
  ?insecure_disable_dnssec_validation:bool prop ->
  ?ip_categories:bool prop ->
  ?override_host:string prop ->
  ?override_ips:string prop list ->
  ?audit_ssh:rule_settings__audit_ssh list ->
  ?biso_admin_controls:rule_settings__biso_admin_controls list ->
  ?check_session:rule_settings__check_session list ->
  ?egress:rule_settings__egress list ->
  ?l4override:rule_settings__l4override list ->
  ?notification_settings:rule_settings__notification_settings list ->
  ?payload_log:rule_settings__payload_log list ->
  ?untrusted_cert:rule_settings__untrusted_cert list ->
  unit ->
  rule_settings

type cloudflare_teams_rule

val cloudflare_teams_rule :
  ?device_posture:string prop ->
  ?enabled:bool prop ->
  ?filters:string prop list ->
  ?id:string prop ->
  ?identity:string prop ->
  ?traffic:string prop ->
  ?rule_settings:rule_settings list ->
  account_id:string prop ->
  action:string prop ->
  description:string prop ->
  name:string prop ->
  precedence:float prop ->
  unit ->
  cloudflare_teams_rule

val yojson_of_cloudflare_teams_rule : cloudflare_teams_rule -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?device_posture:string prop ->
  ?enabled:bool prop ->
  ?filters:string prop list ->
  ?id:string prop ->
  ?identity:string prop ->
  ?traffic:string prop ->
  ?rule_settings:rule_settings list ->
  account_id:string prop ->
  action:string prop ->
  description:string prop ->
  name:string prop ->
  precedence:float prop ->
  string ->
  t

val make :
  ?device_posture:string prop ->
  ?enabled:bool prop ->
  ?filters:string prop list ->
  ?id:string prop ->
  ?identity:string prop ->
  ?traffic:string prop ->
  ?rule_settings:rule_settings list ->
  account_id:string prop ->
  action:string prop ->
  description:string prop ->
  name:string prop ->
  precedence:float prop ->
  string ->
  t Tf_core.resource
