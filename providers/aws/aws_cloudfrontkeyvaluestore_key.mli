(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cloudfrontkeyvaluestore_key

val aws_cloudfrontkeyvaluestore_key :
  key:string prop ->
  key_value_store_arn:string prop ->
  value:string prop ->
  unit ->
  aws_cloudfrontkeyvaluestore_key

val yojson_of_aws_cloudfrontkeyvaluestore_key :
  aws_cloudfrontkeyvaluestore_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  key : string prop;
  key_value_store_arn : string prop;
  total_size_in_bytes : float prop;
  value : string prop;
}

val register :
  ?tf_module:tf_module ->
  key:string prop ->
  key_value_store_arn:string prop ->
  value:string prop ->
  string ->
  t

val make :
  key:string prop ->
  key_value_store_arn:string prop ->
  value:string prop ->
  string ->
  t Tf_core.resource
