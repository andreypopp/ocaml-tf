(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_billing_group__properties

type aws_iot_billing_group__metadata = {
  creation_date : string prop;  (** creation_date *)
}

type aws_iot_billing_group

type t = private {
  arn : string prop;
  id : string prop;
  metadata : aws_iot_billing_group__metadata list prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : float prop;
}

val aws_iot_billing_group :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  properties:aws_iot_billing_group__properties list ->
  string ->
  t
