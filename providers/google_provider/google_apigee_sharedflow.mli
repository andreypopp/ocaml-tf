(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_sharedflow__timeouts

type google_apigee_sharedflow__meta_data = {
  created_at : string;  (** created_at *)
  last_modified_at : string;  (** last_modified_at *)
  sub_type : string;  (** sub_type *)
}
[@@deriving yojson_of]

type google_apigee_sharedflow

val google_apigee_sharedflow :
  ?detect_md5hash:string ->
  ?timeouts:google_apigee_sharedflow__timeouts ->
  config_bundle:string ->
  name:string ->
  org_id:string ->
  string ->
  unit
