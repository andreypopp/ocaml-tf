(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_healthcare_hl7_v2_store__notification_config
type google_healthcare_hl7_v2_store__notification_configs
type google_healthcare_hl7_v2_store__parser_config
type google_healthcare_hl7_v2_store__timeouts
type google_healthcare_hl7_v2_store

type t = private {
  dataset : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  reject_duplicate_message : bool prop;
  self_link : string prop;
  terraform_labels : (string * string) list prop;
}

val google_healthcare_hl7_v2_store :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?reject_duplicate_message:bool prop ->
  ?timeouts:google_healthcare_hl7_v2_store__timeouts ->
  dataset:string prop ->
  name:string prop ->
  notification_config:
    google_healthcare_hl7_v2_store__notification_config list ->
  notification_configs:
    google_healthcare_hl7_v2_store__notification_configs list ->
  parser_config:google_healthcare_hl7_v2_store__parser_config list ->
  string ->
  t
