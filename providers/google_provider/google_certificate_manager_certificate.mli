(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_certificate_manager_certificate__managed__authorization_attempt_info = {
  details : string prop;  (** details *)
  domain : string prop;  (** domain *)
  failure_reason : string prop;  (** failure_reason *)
  state : string prop;  (** state *)
}

type google_certificate_manager_certificate__managed__provisioning_issue = {
  details : string prop;  (** details *)
  reason : string prop;  (** reason *)
}

type google_certificate_manager_certificate__managed
type google_certificate_manager_certificate__self_managed
type google_certificate_manager_certificate__timeouts
type google_certificate_manager_certificate

val google_certificate_manager_certificate :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?project:string prop ->
  ?scope:string prop ->
  ?timeouts:google_certificate_manager_certificate__timeouts ->
  name:string prop ->
  managed:google_certificate_manager_certificate__managed list ->
  self_managed:
    google_certificate_manager_certificate__self_managed list ->
  string ->
  unit
