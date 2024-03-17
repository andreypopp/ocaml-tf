(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_connect_phone_number__timeouts

type aws_connect_phone_number__status = {
  message : string;  (** message *)
  status : string;  (** status *)
}
[@@deriving yojson_of]

type aws_connect_phone_number

val aws_connect_phone_number :
  ?description:string ->
  ?prefix:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_connect_phone_number__timeouts ->
  country_code:string ->
  target_arn:string ->
  type_:string ->
  string ->
  unit
