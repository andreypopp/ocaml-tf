(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_security_url_lists__timeouts
type google_network_security_url_lists

type t = private {
  create_time : string prop;
  description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  update_time : string prop;
  values : string list prop;
}

val google_network_security_url_lists :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_network_security_url_lists__timeouts ->
  location:string prop ->
  name:string prop ->
  values:string prop list ->
  string ->
  t
