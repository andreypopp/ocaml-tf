(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_service_account__timeouts
type google_service_account

type t = private {
  account_id : string prop;
  create_ignore_already_exists : bool prop;
  description : string prop;
  disabled : bool prop;
  display_name : string prop;
  email : string prop;
  id : string prop;
  member : string prop;
  name : string prop;
  project : string prop;
  unique_id : string prop;
}

val google_service_account :
  ?create_ignore_already_exists:bool prop ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_service_account__timeouts ->
  account_id:string prop ->
  string ->
  t
