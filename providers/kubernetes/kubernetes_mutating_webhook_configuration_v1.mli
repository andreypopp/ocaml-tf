(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?generate_name:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  unit ->
  metadata

type webhook__client_config__service

val webhook__client_config__service :
  ?path:string prop ->
  ?port:float prop ->
  name:string prop ->
  namespace:string prop ->
  unit ->
  webhook__client_config__service

type webhook__client_config

val webhook__client_config :
  ?ca_bundle:string prop ->
  ?url:string prop ->
  ?service:webhook__client_config__service list ->
  unit ->
  webhook__client_config

type webhook__namespace_selector__match_expressions

val webhook__namespace_selector__match_expressions :
  ?key:string prop ->
  ?operator:string prop ->
  ?values:string prop list ->
  unit ->
  webhook__namespace_selector__match_expressions

type webhook__namespace_selector

val webhook__namespace_selector :
  ?match_labels:(string * string prop) list ->
  ?match_expressions:
    webhook__namespace_selector__match_expressions list ->
  unit ->
  webhook__namespace_selector

type webhook__object_selector__match_expressions

val webhook__object_selector__match_expressions :
  ?key:string prop ->
  ?operator:string prop ->
  ?values:string prop list ->
  unit ->
  webhook__object_selector__match_expressions

type webhook__object_selector

val webhook__object_selector :
  ?match_labels:(string * string prop) list ->
  ?match_expressions:webhook__object_selector__match_expressions list ->
  unit ->
  webhook__object_selector

type webhook__rule

val webhook__rule :
  ?scope:string prop ->
  api_groups:string prop list ->
  api_versions:string prop list ->
  operations:string prop list ->
  resources:string prop list ->
  unit ->
  webhook__rule

type webhook

val webhook :
  ?admission_review_versions:string prop list ->
  ?failure_policy:string prop ->
  ?match_policy:string prop ->
  ?reinvocation_policy:string prop ->
  ?side_effects:string prop ->
  ?timeout_seconds:float prop ->
  ?namespace_selector:webhook__namespace_selector list ->
  ?object_selector:webhook__object_selector list ->
  ?rule:webhook__rule list ->
  name:string prop ->
  client_config:webhook__client_config list ->
  unit ->
  webhook

type kubernetes_mutating_webhook_configuration_v1

val kubernetes_mutating_webhook_configuration_v1 :
  ?id:string prop ->
  metadata:metadata list ->
  webhook:webhook list ->
  unit ->
  kubernetes_mutating_webhook_configuration_v1

val yojson_of_kubernetes_mutating_webhook_configuration_v1 :
  kubernetes_mutating_webhook_configuration_v1 -> json

(** RESOURCE REGISTRATION *)

type t = private { tf_name : string; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  metadata:metadata list ->
  webhook:webhook list ->
  string ->
  t

val make :
  ?id:string prop ->
  metadata:metadata list ->
  webhook:webhook list ->
  string ->
  t Tf_core.resource
