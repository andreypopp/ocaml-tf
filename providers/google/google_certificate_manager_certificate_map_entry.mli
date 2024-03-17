(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_certificate_manager_certificate_map_entry__timeouts
type google_certificate_manager_certificate_map_entry

type t = private {
  certificates : string list prop;
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  hostname : string prop;
  id : string prop;
  labels : (string * string) list prop;
  map : string prop;
  matcher : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

val google_certificate_manager_certificate_map_entry :
  ?description:string prop ->
  ?hostname:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?matcher:string prop ->
  ?project:string prop ->
  ?timeouts:
    google_certificate_manager_certificate_map_entry__timeouts ->
  certificates:string prop list ->
  map:string prop ->
  name:string prop ->
  string ->
  t
