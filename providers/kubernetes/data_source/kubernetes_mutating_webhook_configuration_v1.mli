(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type webhook__rule = {
  api_groups : string prop list;  (** api_groups *)
  api_versions : string prop list;  (** api_versions *)
  operations : string prop list;  (** operations *)
  resources : string prop list;  (** resources *)
  scope : string prop;  (** scope *)
}

type webhook__object_selector__match_expressions = {
  key : string prop;  (** key *)
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}

type webhook__object_selector = {
  match_expressions :
    webhook__object_selector__match_expressions list;
      (** match_expressions *)
  match_labels : (string * string prop) list;  (** match_labels *)
}

type webhook__namespace_selector__match_expressions = {
  key : string prop;  (** key *)
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}

type webhook__namespace_selector = {
  match_expressions :
    webhook__namespace_selector__match_expressions list;
      (** match_expressions *)
  match_labels : (string * string prop) list;  (** match_labels *)
}

type webhook__client_config__service = {
  name : string prop;  (** name *)
  namespace : string prop;  (** namespace *)
  path : string prop;  (** path *)
  port : float prop;  (** port *)
}

type webhook__client_config = {
  ca_bundle : string prop;  (** ca_bundle *)
  service : webhook__client_config__service list;  (** service *)
  url : string prop;  (** url *)
}

type webhook = {
  admission_review_versions : string prop list;
      (** admission_review_versions *)
  client_config : webhook__client_config list;  (** client_config *)
  failure_policy : string prop;  (** failure_policy *)
  match_policy : string prop;  (** match_policy *)
  name : string prop;  (** name *)
  namespace_selector : webhook__namespace_selector list;
      (** namespace_selector *)
  object_selector : webhook__object_selector list;
      (** object_selector *)
  reinvocation_policy : string prop;  (** reinvocation_policy *)
  rule : webhook__rule list;  (** rule *)
  side_effects : string prop;  (** side_effects *)
  timeout_seconds : float prop;  (** timeout_seconds *)
}

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  unit ->
  metadata

type kubernetes_mutating_webhook_configuration_v1

val kubernetes_mutating_webhook_configuration_v1 :
  ?id:string prop ->
  metadata:metadata list ->
  unit ->
  kubernetes_mutating_webhook_configuration_v1

val yojson_of_kubernetes_mutating_webhook_configuration_v1 :
  kubernetes_mutating_webhook_configuration_v1 -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; webhook : webhook list prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  metadata:metadata list ->
  string ->
  t

val make :
  ?id:string prop ->
  metadata:metadata list ->
  string ->
  t Tf_core.resource
