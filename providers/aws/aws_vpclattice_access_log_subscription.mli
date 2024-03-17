(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpclattice_access_log_subscription

type t = private {
  arn : string prop;
  destination_arn : string prop;
  id : string prop;
  resource_arn : string prop;
  resource_identifier : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_vpclattice_access_log_subscription :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  destination_arn:string prop ->
  resource_identifier:string prop ->
  string ->
  t
