(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_location = {
  subnet_arn : string prop;  (** subnet_arn *)
  zone : string prop;  (** zone *)
}

type location = {
  address : string prop;  (** address *)
  latitude : string prop;  (** latitude *)
  longitude : string prop;  (** longitude *)
}

type aws_networkmanager_device

val aws_networkmanager_device :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  device_id:string prop ->
  global_network_id:string prop ->
  unit ->
  aws_networkmanager_device

val yojson_of_aws_networkmanager_device :
  aws_networkmanager_device -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  aws_location : aws_location list prop;
  description : string prop;
  device_id : string prop;
  global_network_id : string prop;
  id : string prop;
  location : location list prop;
  model : string prop;
  serial_number : string prop;
  site_id : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
  vendor : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  device_id:string prop ->
  global_network_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  device_id:string prop ->
  global_network_id:string prop ->
  string ->
  t Tf_core.resource
