(** Manages Okta Threat Insight Settings. This resource allows you to configure Threat Insight Settings. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_threat_insight_settings

val okta_threat_insight_settings :
  ?id:string prop ->
  ?network_excludes:string prop list ->
  action:string prop ->
  unit ->
  okta_threat_insight_settings

val yojson_of_okta_threat_insight_settings :
  okta_threat_insight_settings -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  action : string prop;
  id : string prop;
  network_excludes : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?network_excludes:string prop list ->
  action:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?network_excludes:string prop list ->
  action:string prop ->
  string ->
  t Tf_core.resource
