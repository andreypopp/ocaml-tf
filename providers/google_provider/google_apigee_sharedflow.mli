(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_sharedflow__timeouts

type google_apigee_sharedflow__meta_data = {
  created_at : string prop;  (** created_at *)
  last_modified_at : string prop;  (** last_modified_at *)
  sub_type : string prop;  (** sub_type *)
}

type google_apigee_sharedflow

type t = private {
  config_bundle : string prop;
  detect_md5hash : string prop;
  id : string prop;
  latest_revision_id : string prop;
  md5hash : string prop;
  meta_data : google_apigee_sharedflow__meta_data list prop;
  name : string prop;
  org_id : string prop;
  revision : string list prop;
}

val google_apigee_sharedflow :
  ?detect_md5hash:string prop ->
  ?id:string prop ->
  ?timeouts:google_apigee_sharedflow__timeouts ->
  config_bundle:string prop ->
  name:string prop ->
  org_id:string prop ->
  string ->
  t
