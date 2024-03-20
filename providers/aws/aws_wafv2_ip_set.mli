

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_wafv2_ip_set

val aws_wafv2_ip_set :
    ?addresses:string  prop list ->
    ?description:string prop ->
    ?id:string prop ->
    ?tags:(string * string  prop) list ->
    ?tags_all:(string * string  prop) list ->
    ip_address_version:string prop ->
    name:string prop ->
    scope:string prop ->
    unit ->
    aws_wafv2_ip_set

val yojson_of_aws_wafv2_ip_set : aws_wafv2_ip_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  addresses: string list prop;
  arn: string prop;
  description: string prop;
  id: string prop;
  ip_address_version: string prop;
  lock_token: string prop;
  name: string prop;
  scope: string prop;
  tags: (string * string) list prop;
  tags_all: (string * string) list prop;
}

val register :
    ?tf_module:tf_module ->
    ?addresses:string  prop list ->
    ?description:string prop ->
    ?id:string prop ->
    ?tags:(string * string  prop) list ->
    ?tags_all:(string * string  prop) list ->
    ip_address_version:string prop ->
    name:string prop ->
    scope:string prop ->
    string ->
    t

val make :
    ?addresses:string  prop list ->
    ?description:string prop ->
    ?id:string prop ->
    ?tags:(string * string  prop) list ->
    ?tags_all:(string * string  prop) list ->
    ip_address_version:string prop ->
    name:string prop ->
    scope:string prop ->
    string ->
    t Tf_core.resource

