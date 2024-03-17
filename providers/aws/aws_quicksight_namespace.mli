(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_quicksight_namespace__timeouts
type aws_quicksight_namespace

type t = private {
  arn : string prop;
  aws_account_id : string prop;
  capacity_region : string prop;
  creation_status : string prop;
  id : string prop;
  identity_store : string prop;
  namespace : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_quicksight_namespace :
  ?aws_account_id:string prop ->
  ?identity_store:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:aws_quicksight_namespace__timeouts ->
  namespace:string prop ->
  string ->
  t
