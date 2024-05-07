(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type status = {
  message : string prop;  (** message *)
  status : string prop;  (** status *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_connect_phone_number

val aws_connect_phone_number :
  ?description:string prop ->
  ?id:string prop ->
  ?prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  country_code:string prop ->
  target_arn:string prop ->
  type_:string prop ->
  unit ->
  aws_connect_phone_number

val yojson_of_aws_connect_phone_number :
  aws_connect_phone_number -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  country_code : string prop;
  description : string prop;
  id : string prop;
  phone_number : string prop;
  prefix : string prop;
  status : status list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_arn : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  country_code:string prop ->
  target_arn:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  country_code:string prop ->
  target_arn:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
