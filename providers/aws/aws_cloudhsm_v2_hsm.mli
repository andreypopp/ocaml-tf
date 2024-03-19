(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_cloudhsm_v2_hsm

val aws_cloudhsm_v2_hsm :
  ?availability_zone:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?subnet_id:string prop ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  unit ->
  aws_cloudhsm_v2_hsm

val yojson_of_aws_cloudhsm_v2_hsm : aws_cloudhsm_v2_hsm -> json

(** RESOURCE REGISTRATION *)

type t = private {
  availability_zone : string prop;
  cluster_id : string prop;
  hsm_eni_id : string prop;
  hsm_id : string prop;
  hsm_state : string prop;
  id : string prop;
  ip_address : string prop;
  subnet_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?availability_zone:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?subnet_id:string prop ->
  ?timeouts:timeouts ->
  cluster_id:string prop ->
  string ->
  t
