(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_outposts_site

val aws_outposts_site :
  ?id:string prop -> ?name:string prop -> unit -> aws_outposts_site

val yojson_of_aws_outposts_site : aws_outposts_site -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  string ->
  t Tf_core.resource
