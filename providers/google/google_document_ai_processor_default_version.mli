(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_document_ai_processor_default_version__timeouts
type google_document_ai_processor_default_version

type t = private {
  id : string prop;
  processor : string prop;
  version : string prop;
}

val google_document_ai_processor_default_version :
  ?id:string prop ->
  ?timeouts:google_document_ai_processor_default_version__timeouts ->
  processor:string prop ->
  version:string prop ->
  string ->
  t
