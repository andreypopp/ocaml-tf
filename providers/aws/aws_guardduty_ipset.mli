(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_guardduty_ipset

val aws_guardduty_ipset :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  activate:bool prop ->
  detector_id:string prop ->
  format:string prop ->
  location:string prop ->
  name:string prop ->
  unit ->
  aws_guardduty_ipset

val yojson_of_aws_guardduty_ipset : aws_guardduty_ipset -> json

(** RESOURCE REGISTRATION *)

type t = private {
  activate : bool prop;
  arn : string prop;
  detector_id : string prop;
  format : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  activate:bool prop ->
  detector_id:string prop ->
  format:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  activate:bool prop ->
  detector_id:string prop ->
  format:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
