(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_elb_hosted_zone_id

val aws_elb_hosted_zone_id :
  ?id:string prop ->
  ?region:string prop ->
  unit ->
  aws_elb_hosted_zone_id

val yojson_of_aws_elb_hosted_zone_id : aws_elb_hosted_zone_id -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; region : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?region:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?region:string prop ->
  string ->
  t Tf_core.resource
