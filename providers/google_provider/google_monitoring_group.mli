(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_monitoring_group__timeouts
type google_monitoring_group

val google_monitoring_group :
  ?id:string ->
  ?is_cluster:bool ->
  ?parent_name:string ->
  ?project:string ->
  ?timeouts:google_monitoring_group__timeouts ->
  display_name:string ->
  filter:string ->
  string ->
  unit
