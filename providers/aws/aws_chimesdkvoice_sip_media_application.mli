(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type endpoints

val endpoints : lambda_arn:string prop -> unit -> endpoints

type aws_chimesdkvoice_sip_media_application

val aws_chimesdkvoice_sip_media_application :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  aws_region:string prop ->
  name:string prop ->
  endpoints:endpoints list ->
  unit ->
  aws_chimesdkvoice_sip_media_application

val yojson_of_aws_chimesdkvoice_sip_media_application :
  aws_chimesdkvoice_sip_media_application -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  aws_region : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  aws_region:string prop ->
  name:string prop ->
  endpoints:endpoints list ->
  string ->
  t
