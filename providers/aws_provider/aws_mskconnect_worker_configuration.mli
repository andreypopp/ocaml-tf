(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_mskconnect_worker_configuration

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  latest_revision : float prop;
  name : string prop;
  properties_file_content : string prop;
}

val aws_mskconnect_worker_configuration :
  ?description:string prop ->
  ?id:string prop ->
  name:string prop ->
  properties_file_content:string prop ->
  string ->
  t
