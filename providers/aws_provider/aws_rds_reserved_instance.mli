(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rds_reserved_instance__timeouts

type aws_rds_reserved_instance__recurring_charges = {
  recurring_charge_amount : float prop;
      (** recurring_charge_amount *)
  recurring_charge_frequency : string prop;
      (** recurring_charge_frequency *)
}

type aws_rds_reserved_instance

val aws_rds_reserved_instance :
  ?id:string prop ->
  ?instance_count:float prop ->
  ?reservation_id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_rds_reserved_instance__timeouts ->
  offering_id:string prop ->
  string ->
  unit
