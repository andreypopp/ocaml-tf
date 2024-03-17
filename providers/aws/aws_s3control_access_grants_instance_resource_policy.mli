(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_s3control_access_grants_instance_resource_policy

type t = private {
  account_id : string prop;
  id : string prop;
  policy : string prop;
}

val aws_s3control_access_grants_instance_resource_policy :
  ?account_id:string prop -> policy:string prop -> string -> t
