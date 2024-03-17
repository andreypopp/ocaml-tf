(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_bucket_access_key

type t = private {
  access_key_id : string prop;
  bucket_name : string prop;
  created_at : string prop;
  id : string prop;
  secret_access_key : string prop;
  status : string prop;
}

val aws_lightsail_bucket_access_key :
  ?id:string prop -> bucket_name:string prop -> string -> t
