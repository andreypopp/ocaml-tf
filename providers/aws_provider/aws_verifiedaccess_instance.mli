(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_verifiedaccess_instance__verified_access_trust_providers = {
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
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  string ->
  unit
