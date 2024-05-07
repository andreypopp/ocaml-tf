(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type recurring_charges = {
  recurring_charge_amount : float prop;
      (** recurring_charge_amount *)
  recurring_charge_frequency : string prop;
      (** recurring_charge_frequency *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_rds_reserved_instance

val aws_rds_reserved_instance :
  ?id:string prop ->
  ?instance_count:float prop ->
  ?reservation_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  offering_id:string prop ->
  unit ->
  aws_rds_reserved_instance

val yojson_of_aws_rds_reserved_instance :
  aws_rds_reserved_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  currency_code : string prop;
  db_instance_class : string prop;
  duration : float prop;
  fixed_price : float prop;
  id : string prop;
  instance_count : float prop;
  lease_id : string prop;
  multi_az : bool prop;
  offering_id : string prop;
  offering_type : string prop;
  product_description : string prop;
  recurring_charges : recurring_charges list prop;
  reservation_id : string prop;
  start_time : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  usage_price : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?instance_count:float prop ->
  ?reservation_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  offering_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?instance_count:float prop ->
  ?reservation_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  offering_id:string prop ->
  string ->
  t Tf_core.resource
