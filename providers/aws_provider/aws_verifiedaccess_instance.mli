(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_verifiedaccess_instance__verified_access_trust_providers = {
  description : string;  (** description *)
  device_trust_provider_type : string;
      (** device_trust_provider_type *)
  trust_provider_type : string;  (** trust_provider_type *)
  user_trust_provider_type : string;  (** user_trust_provider_type *)
  verified_access_trust_provider_id : string;
      (** verified_access_trust_provider_id *)
}
[@@deriving yojson_of]

type aws_verifiedaccess_instance

val aws_verifiedaccess_instance :
  ?description:string ->
  ?fips_enabled:bool ->
  ?tags:(string * string) list ->
  string ->
  unit
