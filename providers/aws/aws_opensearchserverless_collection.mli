(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_opensearchserverless_collection

val aws_opensearchserverless_collection :
  ?description:string prop ->
  ?standby_replicas:string prop ->
  ?tags:(string * string prop) list ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  aws_opensearchserverless_collection

val yojson_of_aws_opensearchserverless_collection :
  aws_opensearchserverless_collection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  collection_endpoint : string prop;
  dashboard_endpoint : string prop;
  description : string prop;
  id : string prop;
  kms_key_arn : string prop;
  name : string prop;
  standby_replicas : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?standby_replicas:string prop ->
  ?tags:(string * string prop) list ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?standby_replicas:string prop ->
  ?tags:(string * string prop) list ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
