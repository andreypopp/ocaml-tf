(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_deployment_manager_deployment__labels
type google_deployment_manager_deployment__target__config
type google_deployment_manager_deployment__target__imports
type google_deployment_manager_deployment__target
type google_deployment_manager_deployment__timeouts
type google_deployment_manager_deployment

val google_deployment_manager_deployment :
  ?create_policy:string ->
  ?delete_policy:string ->
  ?description:string ->
  ?preview:bool ->
  ?timeouts:google_deployment_manager_deployment__timeouts ->
  name:string ->
  labels:google_deployment_manager_deployment__labels list ->
  target:google_deployment_manager_deployment__target list ->
  string ->
  unit
