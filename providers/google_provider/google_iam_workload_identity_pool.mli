(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_iam_workload_identity_pool__timeouts
type google_iam_workload_identity_pool

val google_iam_workload_identity_pool :
  ?description:string prop ->
  ?disabled:bool prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_iam_workload_identity_pool__timeouts ->
  workload_identity_pool_id:string prop ->
  string ->
  unit
