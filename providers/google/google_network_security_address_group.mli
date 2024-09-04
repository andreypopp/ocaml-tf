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

type google_network_security_address_group

val google_network_security_address_group :
  ?description:string prop ->
  ?id:string prop ->
  ?items:string prop list ->
  ?labels:string prop Tf_core.assoc ->
  ?parent:string prop ->
  ?timeouts:timeouts ->
  capacity:float prop ->
  location:string prop ->
  name:string prop ->
  type_:string prop ->
  unit ->
  google_network_security_address_group

val yojson_of_google_network_security_address_group :
  google_network_security_address_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  capacity : float prop;
  create_time : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  items : string list prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  parent : string prop;
  terraform_labels : string Tf_core.assoc prop;
  type_ : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?items:string prop list ->
  ?labels:string prop Tf_core.assoc ->
  ?parent:string prop ->
  ?timeouts:timeouts ->
  capacity:float prop ->
  location:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?items:string prop list ->
  ?labels:string prop Tf_core.assoc ->
  ?parent:string prop ->
  ?timeouts:timeouts ->
  capacity:float prop ->
  location:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
