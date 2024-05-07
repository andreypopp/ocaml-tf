(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_route53_zone

val aws_route53_zone :
  ?id:string prop ->
  ?name:string prop ->
  ?private_zone:bool prop ->
  ?resource_record_set_count:float prop ->
  ?tags:(string * string prop) list ->
  ?vpc_id:string prop ->
  ?zone_id:string prop ->
  unit ->
  aws_route53_zone

val yojson_of_aws_route53_zone : aws_route53_zone -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  caller_reference : string prop;
  comment : string prop;
  id : string prop;
  linked_service_description : string prop;
  linked_service_principal : string prop;
  name : string prop;
  name_servers : string list prop;
  primary_name_server : string prop;
  private_zone : bool prop;
  resource_record_set_count : float prop;
  tags : (string * string) list prop;
  vpc_id : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?private_zone:bool prop ->
  ?resource_record_set_count:float prop ->
  ?tags:(string * string prop) list ->
  ?vpc_id:string prop ->
  ?zone_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?private_zone:bool prop ->
  ?resource_record_set_count:float prop ->
  ?tags:(string * string prop) list ->
  ?vpc_id:string prop ->
  ?zone_id:string prop ->
  string ->
  t Tf_core.resource
