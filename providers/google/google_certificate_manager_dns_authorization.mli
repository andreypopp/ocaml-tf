(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dns_resource_record = {
  data : string prop;  (** data *)
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_certificate_manager_dns_authorization

val google_certificate_manager_dns_authorization :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?project:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  domain:string prop ->
  name:string prop ->
  unit ->
  google_certificate_manager_dns_authorization

val yojson_of_google_certificate_manager_dns_authorization :
  google_certificate_manager_dns_authorization -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  dns_resource_record : dns_resource_record list prop;
  domain : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?project:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  domain:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?location:string prop ->
  ?project:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  domain:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
