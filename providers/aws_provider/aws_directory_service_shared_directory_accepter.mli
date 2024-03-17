(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_directory_service_shared_directory_accepter__timeouts
type aws_directory_service_shared_directory_accepter

type t = private {
  id : string prop;
  method_ : string prop;
  notes : string prop;
  owner_account_id : string prop;
  owner_directory_id : string prop;
  shared_directory_id : string prop;
}

val aws_directory_service_shared_directory_accepter :
  ?id:string prop ->
  ?timeouts:aws_directory_service_shared_directory_accepter__timeouts ->
  shared_directory_id:string prop ->
  string ->
  t
