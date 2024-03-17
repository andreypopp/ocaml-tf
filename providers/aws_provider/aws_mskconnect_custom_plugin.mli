(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_mskconnect_custom_plugin__location__s3
type aws_mskconnect_custom_plugin__location
type aws_mskconnect_custom_plugin__timeouts
type aws_mskconnect_custom_plugin

type t = private {
  arn : string prop;
  content_type : string prop;
  description : string prop;
  id : string prop;
  latest_revision : float prop;
  name : string prop;
  state : string prop;
}

val aws_mskconnect_custom_plugin :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:aws_mskconnect_custom_plugin__timeouts ->
  content_type:string prop ->
  name:string prop ->
  location:aws_mskconnect_custom_plugin__location list ->
  string ->
  t
