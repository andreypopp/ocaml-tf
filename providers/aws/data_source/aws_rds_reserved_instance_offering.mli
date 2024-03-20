(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_rds_reserved_instance_offering

val aws_rds_reserved_instance_offering :
  ?id:string prop ->
  db_instance_class:string prop ->
  duration:float prop ->
  multi_az:bool prop ->
  offering_type:string prop ->
  product_description:string prop ->
  unit ->
  aws_rds_reserved_instance_offering

val yojson_of_aws_rds_reserved_instance_offering :
  aws_rds_reserved_instance_offering -> json

(** RESOURCE REGISTRATION *)

type t = private {
  currency_code : string prop;
  db_instance_class : string prop;
  duration : float prop;
  fixed_price : float prop;
  id : string prop;
  multi_az : bool prop;
  offering_id : string prop;
  offering_type : string prop;
  product_description : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  db_instance_class:string prop ->
  duration:float prop ->
  multi_az:bool prop ->
  offering_type:string prop ->
  product_description:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  db_instance_class:string prop ->
  duration:float prop ->
  multi_az:bool prop ->
  offering_type:string prop ->
  product_description:string prop ->
  string ->
  t Tf_core.resource
