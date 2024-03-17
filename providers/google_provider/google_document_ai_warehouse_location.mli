(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_document_ai_warehouse_location__timeouts
type google_document_ai_warehouse_location

val google_document_ai_warehouse_location :
  ?document_creator_default_role:string prop ->
  ?id:string prop ->
  ?kms_key:string prop ->
  ?timeouts:google_document_ai_warehouse_location__timeouts ->
  access_control_mode:string prop ->
  database_type:string prop ->
  location:string prop ->
  project_number:string prop ->
  string ->
  unit
