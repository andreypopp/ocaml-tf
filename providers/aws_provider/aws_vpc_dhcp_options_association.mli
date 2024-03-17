(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_vpc_dhcp_options_association

type t = private {
  dhcp_options_id : string prop;
  id : string prop;
  vpc_id : string prop;
}

val aws_vpc_dhcp_options_association :
  ?id:string prop ->
  dhcp_options_id:string prop ->
  vpc_id:string prop ->
  string ->
  t
