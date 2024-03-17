(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_data_catalog_policy_tag__timeouts
type google_data_catalog_policy_tag

type t = private {
  child_policy_tags : string list prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  parent_policy_tag : string prop;
  taxonomy : string prop;
}

val google_data_catalog_policy_tag :
  ?description:string prop ->
  ?id:string prop ->
  ?parent_policy_tag:string prop ->
  ?timeouts:google_data_catalog_policy_tag__timeouts ->
  display_name:string prop ->
  taxonomy:string prop ->
  string ->
  t
