(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rds_reserved_instance__timeouts

type aws_rds_reserved_instance__recurring_charges = {
  recurring_charge_amount : float;  (** recurring_charge_amount *)
  recurring_charge_frequency : string;
      (** recurring_charge_frequency *)
}
[@@deriving yojson_of]

type aws_rds_reserved_instance

val aws_rds_reserved_instance :
  ?instance_count:float ->
  ?reservation_id:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_rds_reserved_instance__timeouts ->
  offering_id:string ->
  string ->
  unit
