(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

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
[@@deriving yojson_of]

type aws_verifiedaccess_instance = {
  description : string prop option; [@option]  (** description *)
  fips_enabled : bool prop option; [@option]  (** fips_enabled *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_verifiedaccess_instance *)

let aws_verifiedaccess_instance ?description ?fips_enabled ?id ?tags
    ?tags_all __resource_id =
  let __resource_type = "aws_verifiedaccess_instance" in
  let __resource =
    { description; fips_enabled; id; tags; tags_all }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_verifiedaccess_instance __resource);
  ()
