(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_vpclattice_access_log_subscription

val aws_vpclattice_access_log_subscription :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  destination_arn:string prop ->
  resource_identifier:string prop ->
  unit ->
  aws_vpclattice_access_log_subscription

val yojson_of_aws_vpclattice_access_log_subscription :
  aws_vpclattice_access_log_subscription -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  destination_arn : string prop;
  id : string prop;
  resource_arn : string prop;
  resource_identifier : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  destination_arn:string prop ->
  resource_identifier:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  destination_arn:string prop ->
  resource_identifier:string prop ->
  string ->
  t Tf_core.resource
