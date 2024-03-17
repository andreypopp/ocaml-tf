(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_catalog_entry_group__timeouts
type google_data_catalog_entry_group

type t = private {
  description : string prop;
  display_name : string prop;
  entry_group_id : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
}

val google_data_catalog_entry_group :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:google_data_catalog_entry_group__timeouts ->
  entry_group_id:string prop ->
  string ->
  t
