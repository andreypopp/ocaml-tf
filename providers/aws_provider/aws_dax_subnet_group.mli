(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dax_subnet_group

type t = private {
  description : string prop;
  id : string prop;
  name : string prop;
  subnet_ids : string list prop;
  vpc_id : string prop;
}

val aws_dax_subnet_group :
  ?description:string prop ->
  ?id:string prop ->
  name:string prop ->
  subnet_ids:string prop list ->
  string ->
  t
