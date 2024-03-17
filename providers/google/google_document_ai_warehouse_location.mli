(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_document_ai_warehouse_location__timeouts
type google_document_ai_warehouse_location

type t = private {
  access_control_mode : string prop;
  database_type : string prop;
  document_creator_default_role : string prop;
  id : string prop;
  kms_key : string prop;
  location : string prop;
  project_number : string prop;
}

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
  t
