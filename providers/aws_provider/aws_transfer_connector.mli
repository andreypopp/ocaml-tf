(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transfer_connector__as2_config
type aws_transfer_connector__sftp_config
type aws_transfer_connector

val aws_transfer_connector :
  ?id:string ->
  ?logging_role:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  access_role:string ->
  url:string ->
  as2_config:aws_transfer_connector__as2_config list ->
  sftp_config:aws_transfer_connector__sftp_config list ->
  string ->
  unit
