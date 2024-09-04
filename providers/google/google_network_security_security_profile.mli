(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type threat_prevention_profile__severity_overrides

val threat_prevention_profile__severity_overrides :
  action:string prop ->
  severity:string prop ->
  unit ->
  threat_prevention_profile__severity_overrides

type threat_prevention_profile__threat_overrides

val threat_prevention_profile__threat_overrides :
  action:string prop ->
  threat_id:string prop ->
  unit ->
  threat_prevention_profile__threat_overrides

type threat_prevention_profile

val threat_prevention_profile :
  ?severity_overrides:
    threat_prevention_profile__severity_overrides list ->
  ?threat_overrides:threat_prevention_profile__threat_overrides list ->
  unit ->
  threat_prevention_profile

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_network_security_security_profile

val google_network_security_security_profile :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?location:string prop ->
  ?parent:string prop ->
  ?threat_prevention_profile:threat_prevention_profile list ->
  ?timeouts:timeouts ->
  name:string prop ->
  type_:string prop ->
  unit ->
  google_network_security_security_profile

val yojson_of_google_network_security_security_profile :
  google_network_security_security_profile -> json

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
  self_link : string prop;
  terraform_labels : string Tf_core.assoc prop;
  type_ : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?location:string prop ->
  ?parent:string prop ->
  ?threat_prevention_profile:threat_prevention_profile list ->
  ?timeouts:timeouts ->
  name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?location:string prop ->
  ?parent:string prop ->
  ?threat_prevention_profile:threat_prevention_profile list ->
  ?timeouts:timeouts ->
  name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
