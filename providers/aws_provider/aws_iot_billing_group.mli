(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_billing_group__properties

type aws_iot_billing_group__metadata = {
  creation_date : string;  (** creation_date *)
}
[@@deriving yojson_of]

type aws_iot_billing_group

val aws_iot_billing_group :
  ?tags:(string * string) list ->
  name:string ->
  properties:aws_iot_billing_group__properties list ->
  string ->
  unit
