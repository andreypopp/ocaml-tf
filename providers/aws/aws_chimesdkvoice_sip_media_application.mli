(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type endpoints

val endpoints : lambda_arn:string prop -> unit -> endpoints

type aws_chimesdkvoice_sip_media_application

val aws_chimesdkvoice_sip_media_application :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  aws_region:string prop ->
  name:string prop ->
  endpoints:endpoints list ->
  unit ->
  aws_chimesdkvoice_sip_media_application

val yojson_of_aws_chimesdkvoice_sip_media_application :
  aws_chimesdkvoice_sip_media_application -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  aws_region : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  aws_region:string prop ->
  name:string prop ->
  endpoints:endpoints list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  aws_region:string prop ->
  name:string prop ->
  endpoints:endpoints list ->
  string ->
  t Tf_core.resource
