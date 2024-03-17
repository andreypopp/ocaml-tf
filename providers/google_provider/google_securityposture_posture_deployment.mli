(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_securityposture_posture_deployment__timeouts
type google_securityposture_posture_deployment

val google_securityposture_posture_deployment :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:google_securityposture_posture_deployment__timeouts ->
  location:string prop ->
  parent:string prop ->
  posture_deployment_id:string prop ->
  posture_id:string prop ->
  posture_revision_id:string prop ->
  target_resource:string prop ->
  string ->
  unit
