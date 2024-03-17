(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_connect_phone_number__timeouts

type aws_connect_phone_number__status = {
  message : string prop;  (** message *)
  status : string prop;  (** status *)
}

type aws_connect_phone_number

type t = private {
  arn : string prop;
  country_code : string prop;
  description : string prop;
  id : string prop;
  phone_number : string prop;
  prefix : string prop;
  status : aws_connect_phone_number__status list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_arn : string prop;
  type_ : string prop;
}

val aws_connect_phone_number :
  ?description:string prop ->
  ?id:string prop ->
  ?prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_connect_phone_number__timeouts ->
  country_code:string prop ->
  target_arn:string prop ->
  type_:string prop ->
  string ->
  t
