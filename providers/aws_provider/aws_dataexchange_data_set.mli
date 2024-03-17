(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dataexchange_data_set

type t = private {
  arn : string prop;
  asset_type : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_dataexchange_data_set :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  asset_type:string prop ->
  description:string prop ->
  name:string prop ->
  string ->
  t
