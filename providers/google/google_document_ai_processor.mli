(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_document_ai_processor__timeouts
type google_document_ai_processor

type t = private {
  display_name : string prop;
  id : string prop;
  kms_key_name : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  type_ : string prop;
}

val google_document_ai_processor :
  ?id:string prop ->
  ?kms_key_name:string prop ->
  ?project:string prop ->
  ?timeouts:google_document_ai_processor__timeouts ->
  display_name:string prop ->
  location:string prop ->
  type_:string prop ->
  string ->
  t
