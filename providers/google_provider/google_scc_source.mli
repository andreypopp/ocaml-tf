(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_scc_source__timeouts
type google_scc_source

type t = private {
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  organization : string prop;
}

val google_scc_source :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:google_scc_source__timeouts ->
  display_name:string prop ->
  organization:string prop ->
  string ->
  t
