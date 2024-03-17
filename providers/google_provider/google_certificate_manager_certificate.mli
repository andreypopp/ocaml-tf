(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_certificate_manager_certificate__managed__authorization_attempt_info = {
  details : string;  (** details *)
  domain : string;  (** domain *)
  failure_reason : string;  (** failure_reason *)
  state : string;  (** state *)
}

type google_certificate_manager_certificate__managed__provisioning_issue = {
  details : string;  (** details *)
  reason : string;  (** reason *)
}

type google_certificate_manager_certificate__managed
type google_certificate_manager_certificate__self_managed
type google_certificate_manager_certificate__timeouts
type google_certificate_manager_certificate

val google_certificate_manager_certificate :
  ?description:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?location:string ->
  ?project:string ->
  ?scope:string ->
  ?timeouts:google_certificate_manager_certificate__timeouts ->
  name:string ->
  managed:google_certificate_manager_certificate__managed list ->
  self_managed:
    google_certificate_manager_certificate__self_managed list ->
  string ->
  unit
