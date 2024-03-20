(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_lightsail_domain_entry

val aws_lightsail_domain_entry :
  ?id:string prop ->
  ?is_alias:bool prop ->
  domain_name:string prop ->
  name:string prop ->
  target:string prop ->
  type_:string prop ->
  unit ->
  aws_lightsail_domain_entry

val yojson_of_aws_lightsail_domain_entry :
  aws_lightsail_domain_entry -> json

(** RESOURCE REGISTRATION *)

type t = private {
  domain_name : string prop;
  id : string prop;
  is_alias : bool prop;
  name : string prop;
  target : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?is_alias:bool prop ->
  domain_name:string prop ->
  name:string prop ->
  target:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?is_alias:bool prop ->
  domain_name:string prop ->
  name:string prop ->
  target:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
