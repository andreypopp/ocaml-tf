(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_monitoring_group__timeouts
type google_monitoring_group

type t = private {
  display_name : string prop;
  filter : string prop;
  id : string prop;
  is_cluster : bool prop;
  name : string prop;
  parent_name : string prop;
  project : string prop;
}

val google_monitoring_group :
  ?id:string prop ->
  ?is_cluster:bool prop ->
  ?parent_name:string prop ->
  ?project:string prop ->
  ?timeouts:google_monitoring_group__timeouts ->
  display_name:string prop ->
  filter:string prop ->
  string ->
  t
