(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_catalog_tag__fields
type google_data_catalog_tag__timeouts
type google_data_catalog_tag

val google_data_catalog_tag :
  ?column:string prop ->
  ?id:string prop ->
  ?parent:string prop ->
  ?timeouts:google_data_catalog_tag__timeouts ->
  template:string prop ->
  fields:google_data_catalog_tag__fields list ->
  string ->
  unit
