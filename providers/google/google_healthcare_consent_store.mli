(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_healthcare_consent_store__timeouts
type google_healthcare_consent_store

type t = private {
  dataset : string prop;
  default_consent_ttl : string prop;
  effective_labels : (string * string) list prop;
  enable_consent_create_on_update : bool prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  terraform_labels : (string * string) list prop;
}

val google_healthcare_consent_store :
  ?default_consent_ttl:string prop ->
  ?enable_consent_create_on_update:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?timeouts:google_healthcare_consent_store__timeouts ->
  dataset:string prop ->
  name:string prop ->
  string ->
  t
