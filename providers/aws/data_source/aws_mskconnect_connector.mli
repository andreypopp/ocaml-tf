(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_mskconnect_connector

val aws_mskconnect_connector :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  aws_mskconnect_connector

val yojson_of_aws_mskconnect_connector :
  aws_mskconnect_connector -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t Tf_core.resource
