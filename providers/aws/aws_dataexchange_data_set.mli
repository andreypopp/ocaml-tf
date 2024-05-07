(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_dataexchange_data_set

val aws_dataexchange_data_set :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  asset_type:string prop ->
  description:string prop ->
  name:string prop ->
  unit ->
  aws_dataexchange_data_set

val yojson_of_aws_dataexchange_data_set :
  aws_dataexchange_data_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  asset_type : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  asset_type:string prop ->
  description:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  asset_type:string prop ->
  description:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
