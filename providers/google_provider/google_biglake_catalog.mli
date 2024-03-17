(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_biglake_catalog__timeouts
type google_biglake_catalog

type t = private {
  create_time : string prop;
  delete_time : string prop;
  expire_time : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  update_time : string prop;
}

val google_biglake_catalog :
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_biglake_catalog__timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t
