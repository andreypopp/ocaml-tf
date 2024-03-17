(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_deployment_manager_deployment__labels
type google_deployment_manager_deployment__target__config
type google_deployment_manager_deployment__target__imports
type google_deployment_manager_deployment__target
type google_deployment_manager_deployment__timeouts
type google_deployment_manager_deployment

val google_deployment_manager_deployment :
  ?create_policy:string prop ->
  ?delete_policy:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?preview:bool prop ->
  ?project:string prop ->
  ?timeouts:google_deployment_manager_deployment__timeouts ->
  name:string prop ->
  labels:google_deployment_manager_deployment__labels list ->
  target:google_deployment_manager_deployment__target list ->
  string ->
  unit
