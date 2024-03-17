(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_healthcare_dicom_store__notification_config
type google_healthcare_dicom_store__timeouts
type google_healthcare_dicom_store

val google_healthcare_dicom_store :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?timeouts:google_healthcare_dicom_store__timeouts ->
  dataset:string prop ->
  name:string prop ->
  notification_config:
    google_healthcare_dicom_store__notification_config list ->
  string ->
  unit
