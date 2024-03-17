(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_resource_manager_lien__timeouts
type google_resource_manager_lien

type t = private {
  create_time : string prop;
  id : string prop;
  name : string prop;
  origin : string prop;
  parent : string prop;
  reason : string prop;
  restrictions : string list prop;
}

val google_resource_manager_lien :
  ?id:string prop ->
  ?timeouts:google_resource_manager_lien__timeouts ->
  origin:string prop ->
  parent:string prop ->
  reason:string prop ->
  restrictions:string prop list ->
  string ->
  t
