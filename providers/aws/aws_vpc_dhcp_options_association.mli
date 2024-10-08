(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_vpc_dhcp_options_association

val aws_vpc_dhcp_options_association :
  ?id:string prop ->
  dhcp_options_id:string prop ->
  vpc_id:string prop ->
  unit ->
  aws_vpc_dhcp_options_association

val yojson_of_aws_vpc_dhcp_options_association :
  aws_vpc_dhcp_options_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  dhcp_options_id : string prop;
  id : string prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  dhcp_options_id:string prop ->
  vpc_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  dhcp_options_id:string prop ->
  vpc_id:string prop ->
  string ->
  t Tf_core.resource
