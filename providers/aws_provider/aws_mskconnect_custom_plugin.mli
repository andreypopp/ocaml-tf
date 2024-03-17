(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_mskconnect_custom_plugin__location__s3
type aws_mskconnect_custom_plugin__location
type aws_mskconnect_custom_plugin__timeouts
type aws_mskconnect_custom_plugin

val aws_mskconnect_custom_plugin :
  ?description:string ->
  ?timeouts:aws_mskconnect_custom_plugin__timeouts ->
  content_type:string ->
  name:string ->
  location:aws_mskconnect_custom_plugin__location list ->
  string ->
  unit
