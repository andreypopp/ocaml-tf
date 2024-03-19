(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_scc_source

val google_scc_source :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  organization:string prop ->
  unit ->
  google_scc_source

val yojson_of_google_scc_source : google_scc_source -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  organization : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  organization:string prop ->
  string ->
  t
