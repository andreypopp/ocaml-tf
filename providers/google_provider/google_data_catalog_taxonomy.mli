(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_catalog_taxonomy__timeouts
type google_data_catalog_taxonomy

type t = private {
  activated_policy_types : string list prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
}

val google_data_catalog_taxonomy :
  ?activated_policy_types:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?timeouts:google_data_catalog_taxonomy__timeouts ->
  display_name:string prop ->
  string ->
  t
