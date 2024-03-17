(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_securityposture_posture_deployment__timeouts
type google_securityposture_posture_deployment

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
  t
