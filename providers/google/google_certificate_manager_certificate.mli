(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type managed__authorization_attempt_info = {
  details : string prop;  (** details *)
  domain : string prop;  (** domain *)
  failure_reason : string prop;  (** failure_reason *)
  state : string prop;  (** state *)
}

type managed__provisioning_issue = {
  details : string prop;  (** details *)
  reason : string prop;  (** reason *)
}

type managed

val managed :
  ?dns_authorizations:string prop list ->
  ?domains:string prop list ->
  ?issuance_config:string prop ->
  unit ->
  managed

type self_managed

val self_managed :
  ?certificate_pem:string prop ->
  ?pem_certificate:string prop ->
  ?pem_private_key:string prop ->
  ?private_key_pem:string prop ->
  unit ->
  self_managed

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_certificate_manager_certificate

val google_certificate_manager_certificate :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?location:string prop ->
  ?project:string prop ->
  ?scope:string prop ->
  ?managed:managed list ->
  ?self_managed:self_managed list ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  google_certificate_manager_certificate

val yojson_of_google_certificate_manager_certificate :
  google_certificate_manager_certificate -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  scope : string prop;
  terraform_labels : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?location:string prop ->
  ?project:string prop ->
  ?scope:string prop ->
  ?managed:managed list ->
  ?self_managed:self_managed list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?location:string prop ->
  ?project:string prop ->
  ?scope:string prop ->
  ?managed:managed list ->
  ?self_managed:self_managed list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
