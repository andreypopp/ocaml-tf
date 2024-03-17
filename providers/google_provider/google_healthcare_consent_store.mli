(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_healthcare_consent_store__timeouts
type google_healthcare_consent_store

val google_healthcare_consent_store :
  ?default_consent_ttl:string ->
  ?enable_consent_create_on_update:bool ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?timeouts:google_healthcare_consent_store__timeouts ->
  dataset:string ->
  name:string ->
  string ->
  unit
