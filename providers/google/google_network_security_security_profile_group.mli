(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_network_security_security_profile_group

val google_network_security_security_profile_group :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?location:string prop ->
  ?parent:string prop ->
  ?threat_prevention_profile:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  google_network_security_security_profile_group

val yojson_of_google_network_security_security_profile_group :
  google_network_security_security_profile_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  etag : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  parent : string prop;
  terraform_labels : string Tf_core.assoc prop;
  threat_prevention_profile : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?location:string prop ->
  ?parent:string prop ->
  ?threat_prevention_profile:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?location:string prop ->
  ?parent:string prop ->
  ?threat_prevention_profile:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
