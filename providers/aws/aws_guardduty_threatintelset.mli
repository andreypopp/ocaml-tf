(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_guardduty_threatintelset

val aws_guardduty_threatintelset :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  activate:bool prop ->
  detector_id:string prop ->
  format:string prop ->
  location:string prop ->
  name:string prop ->
  unit ->
  aws_guardduty_threatintelset

val yojson_of_aws_guardduty_threatintelset :
  aws_guardduty_threatintelset -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  activate : bool prop;
  arn : string prop;
  detector_id : string prop;
  format : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  activate:bool prop ->
  detector_id:string prop ->
  format:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  activate:bool prop ->
  detector_id:string prop ->
  format:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
