(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_iam_workforce_pool__access_restrictions__allowed_services
type google_iam_workforce_pool__access_restrictions
type google_iam_workforce_pool__timeouts
type google_iam_workforce_pool

type t = private {
  description : string prop;
  disabled : bool prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  parent : string prop;
  session_duration : string prop;
  state : string prop;
  workforce_pool_id : string prop;
}

val google_iam_workforce_pool :
  ?description:string prop ->
  ?disabled:bool prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?session_duration:string prop ->
  ?timeouts:google_iam_workforce_pool__timeouts ->
  location:string prop ->
  parent:string prop ->
  workforce_pool_id:string prop ->
  access_restrictions:
    google_iam_workforce_pool__access_restrictions list ->
  string ->
  t
