(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_healthcare_hl7_v2_store__notification_config
type google_healthcare_hl7_v2_store__notification_configs
type google_healthcare_hl7_v2_store__parser_config
type google_healthcare_hl7_v2_store__timeouts
type google_healthcare_hl7_v2_store

val google_healthcare_hl7_v2_store :
  ?id:string ->
  ?labels:(string * string) list ->
  ?reject_duplicate_message:bool ->
  ?timeouts:google_healthcare_hl7_v2_store__timeouts ->
  dataset:string ->
  name:string ->
  notification_config:
    google_healthcare_hl7_v2_store__notification_config list ->
  notification_configs:
    google_healthcare_hl7_v2_store__notification_configs list ->
  parser_config:google_healthcare_hl7_v2_store__parser_config list ->
  string ->
  unit
