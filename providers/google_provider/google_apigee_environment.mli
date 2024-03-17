(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_environment__node_config
type google_apigee_environment__timeouts
type google_apigee_environment

val google_apigee_environment :
  ?api_proxy_type:string prop ->
  ?deployment_type:string prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?type_:string prop ->
  ?timeouts:google_apigee_environment__timeouts ->
  name:string prop ->
  org_id:string prop ->
  node_config:google_apigee_environment__node_config list ->
  string ->
  unit
