(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transfer_connector__as2_config
type aws_transfer_connector__sftp_config
type aws_transfer_connector

type t = private {
  access_role : string prop;
  arn : string prop;
  connector_id : string prop;
  id : string prop;
  logging_role : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  url : string prop;
}

val aws_transfer_connector :
  ?id:string prop ->
  ?logging_role:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  access_role:string prop ->
  url:string prop ->
  as2_config:aws_transfer_connector__as2_config list ->
  sftp_config:aws_transfer_connector__sftp_config list ->
  string ->
  t
