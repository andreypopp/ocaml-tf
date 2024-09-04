

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_wafv2_ip_set

val aws_wafv2_ip_set :
    ?addresses:string  prop list ->
    ?description:string prop ->
    ?id:string prop ->
    ?tags:string  prop Tf_core.assoc ->
    ?tags_all:string  prop Tf_core.assoc ->
    ip_address_version:string prop ->
    name:string prop ->
    scope:string prop ->
    unit ->
    aws_wafv2_ip_set

val yojson_of_aws_wafv2_ip_set : aws_wafv2_ip_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name: string;
  addresses: string list prop;
  arn: string prop;
  description: string prop;
  id: string prop;
  ip_address_version: string prop;
  lock_token: string prop;
  name: string prop;
  scope: string prop;
  tags: string Tf_core.assoc prop;
  tags_all: string Tf_core.assoc prop;
}

val register :
    ?tf_module:tf_module ->
    ?addresses:string  prop list ->
    ?description:string prop ->
    ?id:string prop ->
    ?tags:string  prop Tf_core.assoc ->
    ?tags_all:string  prop Tf_core.assoc ->
    ip_address_version:string prop ->
    name:string prop ->
    scope:string prop ->
    string ->
    t

val make :
    ?addresses:string  prop list ->
    ?description:string prop ->
    ?id:string prop ->
    ?tags:string  prop Tf_core.assoc ->
    ?tags_all:string  prop Tf_core.assoc ->
    ip_address_version:string prop ->
    name:string prop ->
    scope:string prop ->
    string ->
    t Tf_core.resource

