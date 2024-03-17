(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_transfer_user__home_directory_mappings
type aws_transfer_user__posix_profile
type aws_transfer_user__timeouts
type aws_transfer_user

type t = private {
  arn : string prop;
  home_directory : string prop;
  home_directory_type : string prop;
  id : string prop;
  policy : string prop;
  role : string prop;
  server_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_name : string prop;
}

val aws_transfer_user :
  ?home_directory:string prop ->
  ?home_directory_type:string prop ->
  ?id:string prop ->
  ?policy:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_transfer_user__timeouts ->
  role:string prop ->
  server_id:string prop ->
  user_name:string prop ->
  home_directory_mappings:
    aws_transfer_user__home_directory_mappings list ->
  posix_profile:aws_transfer_user__posix_profile list ->
  string ->
  t
