(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type verified_access_trust_providers = {
  description : string prop;  (** description *)
  device_trust_provider_type : string prop;
      (** device_trust_provider_type *)
  trust_provider_type : string prop;  (** trust_provider_type *)
  user_trust_provider_type : string prop;
      (** user_trust_provider_type *)
  verified_access_trust_provider_id : string prop;
      (** verified_access_trust_provider_id *)
}

type aws_verifiedaccess_instance

val aws_verifiedaccess_instance :
  ?description:string prop ->
  ?fips_enabled:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  unit ->
  aws_verifiedaccess_instance

val yojson_of_aws_verifiedaccess_instance :
  aws_verifiedaccess_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  creation_time : string prop;
  description : string prop;
  fips_enabled : bool prop;
  id : string prop;
  last_updated_time : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  verified_access_trust_providers :
    verified_access_trust_providers list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?fips_enabled:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  string ->
  t

val make :
  ?description:string prop ->
  ?fips_enabled:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  string ->
  t Tf_core.resource
