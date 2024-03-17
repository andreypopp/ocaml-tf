(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_addons_config__addons_config__advanced_api_ops_config

type google_apigee_addons_config__addons_config__api_security_config

type google_apigee_addons_config__addons_config__connectors_platform_config

type google_apigee_addons_config__addons_config__integration_config
type google_apigee_addons_config__addons_config__monetization_config
type google_apigee_addons_config__addons_config
type google_apigee_addons_config__timeouts
type google_apigee_addons_config
type t = private { id : string prop; org : string prop }

val google_apigee_addons_config :
  ?id:string prop ->
  ?timeouts:google_apigee_addons_config__timeouts ->
  org:string prop ->
  addons_config:google_apigee_addons_config__addons_config list ->
  string ->
  t
