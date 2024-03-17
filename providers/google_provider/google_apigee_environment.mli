(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_environment__node_config
type google_apigee_environment__timeouts
type google_apigee_environment

val google_apigee_environment :
  ?api_proxy_type:string ->
  ?deployment_type:string ->
  ?description:string ->
  ?display_name:string ->
  ?id:string ->
  ?type_:string ->
  ?timeouts:google_apigee_environment__timeouts ->
  name:string ->
  org_id:string ->
  node_config:google_apigee_environment__node_config list ->
  string ->
  unit
