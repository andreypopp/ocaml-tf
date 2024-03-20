

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
    ?create:string prop ->
    ?delete:string prop ->
    unit ->
    timeouts

type aws_quicksight_namespace

val aws_quicksight_namespace :
    ?aws_account_id:string prop ->
    ?identity_store:string prop ->
    ?tags:(string * string  prop) list ->
    ?timeouts:timeouts ->
    namespace:string prop ->
    unit ->
    aws_quicksight_namespace

val yojson_of_aws_quicksight_namespace : aws_quicksight_namespace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn: string prop;
  aws_account_id: string prop;
  capacity_region: string prop;
  creation_status: string prop;
  id: string prop;
  identity_store: string prop;
  namespace: string prop;
  tags: (string * string) list prop;
  tags_all: (string * string) list prop;
}

val register :
    ?tf_module:tf_module ->
    ?aws_account_id:string prop ->
    ?identity_store:string prop ->
    ?tags:(string * string  prop) list ->
    ?timeouts:timeouts ->
    namespace:string prop ->
    string ->
    t

val make :
    ?aws_account_id:string prop ->
    ?identity_store:string prop ->
    ?tags:(string * string  prop) list ->
    ?timeouts:timeouts ->
    namespace:string prop ->
    string ->
    t Tf_core.resource

