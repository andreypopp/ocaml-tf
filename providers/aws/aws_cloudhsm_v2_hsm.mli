(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudhsm_v2_hsm__timeouts
type aws_cloudhsm_v2_hsm

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

val aws_cloudhsm_v2_hsm :
  ?availability_zone:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?subnet_id:string prop ->
  ?timeouts:aws_cloudhsm_v2_hsm__timeouts ->
  cluster_id:string prop ->
  string ->
  t
