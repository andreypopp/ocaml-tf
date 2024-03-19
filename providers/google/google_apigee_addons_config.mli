(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type addons_config__advanced_api_ops_config

val addons_config__advanced_api_ops_config :
  ?enabled:bool prop ->
  unit ->
  addons_config__advanced_api_ops_config

type addons_config__api_security_config

val addons_config__api_security_config :
  ?enabled:bool prop -> unit -> addons_config__api_security_config

type addons_config__connectors_platform_config

val addons_config__connectors_platform_config :
  ?enabled:bool prop ->
  unit ->
  addons_config__connectors_platform_config

type addons_config__integration_config

val addons_config__integration_config :
  ?enabled:bool prop -> unit -> addons_config__integration_config

type addons_config__monetization_config

val addons_config__monetization_config :
  ?enabled:bool prop -> unit -> addons_config__monetization_config

type addons_config

val addons_config :
  advanced_api_ops_config:addons_config__advanced_api_ops_config list ->
  api_security_config:addons_config__api_security_config list ->
  connectors_platform_config:
    addons_config__connectors_platform_config list ->
  integration_config:addons_config__integration_config list ->
  monetization_config:addons_config__monetization_config list ->
  unit ->
  addons_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_apigee_addons_config

val google_apigee_addons_config :
  ?id:string prop ->
  ?timeouts:timeouts ->
  org:string prop ->
  addons_config:addons_config list ->
  unit ->
  google_apigee_addons_config

val yojson_of_google_apigee_addons_config :
  google_apigee_addons_config -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; org : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  org:string prop ->
  addons_config:addons_config list ->
  string ->
  t
