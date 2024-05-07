(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_dax_subnet_group

val aws_dax_subnet_group :
  ?description:string prop ->
  ?id:string prop ->
  name:string prop ->
  subnet_ids:string prop list ->
  unit ->
  aws_dax_subnet_group

val yojson_of_aws_dax_subnet_group : aws_dax_subnet_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
  subnet_ids : string list prop;
  vpc_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  name:string prop ->
  subnet_ids:string prop list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  name:string prop ->
  subnet_ids:string prop list ->
  string ->
  t Tf_core.resource
