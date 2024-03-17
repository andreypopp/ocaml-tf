(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_healthcare_dicom_store__notification_config
type google_healthcare_dicom_store__timeouts
type google_healthcare_dicom_store

type t = private {
  dataset : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  self_link : string prop;
  terraform_labels : (string * string) list prop;
}

val google_healthcare_dicom_store :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?timeouts:google_healthcare_dicom_store__timeouts ->
  dataset:string prop ->
  name:string prop ->
  notification_config:
    google_healthcare_dicom_store__notification_config list ->
  string ->
  t
