(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_verifiedaccess_instance_trust_provider_attachment

type t = private {
  id : string prop;
  verifiedaccess_instance_id : string prop;
  verifiedaccess_trust_provider_id : string prop;
}

val aws_verifiedaccess_instance_trust_provider_attachment :
  ?id:string prop ->
  verifiedaccess_instance_id:string prop ->
  verifiedaccess_trust_provider_id:string prop ->
  string ->
  t
