(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_securityposture_posture_deployment

val google_securityposture_posture_deployment :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  parent:string prop ->
  posture_deployment_id:string prop ->
  posture_id:string prop ->
  posture_revision_id:string prop ->
  target_resource:string prop ->
  unit ->
  google_securityposture_posture_deployment

val yojson_of_google_securityposture_posture_deployment :
  google_securityposture_posture_deployment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  description : string prop;
  desired_posture_id : string prop;
  desired_posture_revision_id : string prop;
  etag : string prop;
  failure_message : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  parent : string prop;
  posture_deployment_id : string prop;
  posture_id : string prop;
  posture_revision_id : string prop;
  reconciling : bool prop;
  state : string prop;
  target_resource : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  parent:string prop ->
  posture_deployment_id:string prop ->
  posture_id:string prop ->
  posture_revision_id:string prop ->
  target_resource:string prop ->
  string ->
  t
