(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_iam_workforce_pool__access_restrictions__allowed_services
type google_iam_workforce_pool__access_restrictions
type google_iam_workforce_pool__timeouts
type google_iam_workforce_pool

val google_iam_workforce_pool :
  ?description:string ->
  ?disabled:bool ->
  ?display_name:string ->
  ?id:string ->
  ?session_duration:string ->
  ?timeouts:google_iam_workforce_pool__timeouts ->
  location:string ->
  parent:string ->
  workforce_pool_id:string ->
  access_restrictions:
    google_iam_workforce_pool__access_restrictions list ->
  string ->
  unit
