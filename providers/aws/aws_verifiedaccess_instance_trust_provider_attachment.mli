(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_verifiedaccess_instance_trust_provider_attachment

val aws_verifiedaccess_instance_trust_provider_attachment :
  ?id:string prop ->
  verifiedaccess_instance_id:string prop ->
  verifiedaccess_trust_provider_id:string prop ->
  unit ->
  aws_verifiedaccess_instance_trust_provider_attachment

val yojson_of_aws_verifiedaccess_instance_trust_provider_attachment :
  aws_verifiedaccess_instance_trust_provider_attachment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  verifiedaccess_instance_id : string prop;
  verifiedaccess_trust_provider_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  verifiedaccess_instance_id:string prop ->
  verifiedaccess_trust_provider_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  verifiedaccess_instance_id:string prop ->
  verifiedaccess_trust_provider_id:string prop ->
  string ->
  t Tf_core.resource
