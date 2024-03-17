(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_billing_group__properties

type aws_iot_billing_group__metadata = {
  creation_date : string;  (** creation_date *)
}

type aws_iot_billing_group

val aws_iot_billing_group :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  name:string ->
  properties:aws_iot_billing_group__properties list ->
  string ->
  unit
