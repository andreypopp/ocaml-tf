(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudhsm_v2_hsm__timeouts
type aws_cloudhsm_v2_hsm

val aws_cloudhsm_v2_hsm :
  ?availability_zone:string prop ->
  ?id:string prop ->
  ?ip_address:string prop ->
  ?subnet_id:string prop ->
  ?timeouts:aws_cloudhsm_v2_hsm__timeouts ->
  cluster_id:string prop ->
  string ->
  unit
