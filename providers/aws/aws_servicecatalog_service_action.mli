(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type definition

val definition :
  ?assume_role:string prop ->
  ?parameters:string prop ->
  ?type_:string prop ->
  name:string prop ->
  version:string prop ->
  unit ->
  definition

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_servicecatalog_service_action

val aws_servicecatalog_service_action :
  ?accept_language:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  definition:definition list ->
  unit ->
  aws_servicecatalog_service_action

val yojson_of_aws_servicecatalog_service_action :
  aws_servicecatalog_service_action -> json

(** RESOURCE REGISTRATION *)

type t = private {
  accept_language : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?accept_language:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  definition:definition list ->
  string ->
  t

val make :
  ?accept_language:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  definition:definition list ->
  string ->
  t Tf_core.resource
