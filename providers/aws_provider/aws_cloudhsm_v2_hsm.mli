(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_cloudhsm_v2_hsm__timeouts
type aws_cloudhsm_v2_hsm

val aws_cloudhsm_v2_hsm :
  ?availability_zone:string ->
  ?id:string ->
  ?ip_address:string ->
  ?subnet_id:string ->
  ?timeouts:aws_cloudhsm_v2_hsm__timeouts ->
  cluster_id:string ->
  string ->
  unit
