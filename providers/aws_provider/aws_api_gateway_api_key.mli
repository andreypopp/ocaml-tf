(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_api_gateway_api_key

type t = private {
  arn : string prop;
  created_date : string prop;
  customer_id : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  last_updated_date : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  value : string prop;
}

val aws_api_gateway_api_key :
  ?customer_id:string prop ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?value:string prop ->
  name:string prop ->
  string ->
  t
