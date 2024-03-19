(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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
    ?tags_all () : aws_verifiedaccess_instance =
  { description; fips_enabled; id; tags; tags_all }

type t = {
  creation_time : string prop;
  description : string prop;
  fips_enabled : bool prop;
  id : string prop;
  last_updated_time : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  verified_access_trust_providers :
    verified_access_trust_providers list prop;
}

let register ?tf_module ?description ?fips_enabled ?id ?tags
    ?tags_all __resource_id =
  let __resource_type = "aws_verifiedaccess_instance" in
  let __resource =
    aws_verifiedaccess_instance ?description ?fips_enabled ?id ?tags
      ?tags_all ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_verifiedaccess_instance __resource);
  let __resource_attributes =
    ({
       creation_time =
         Prop.computed __resource_type __resource_id "creation_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       fips_enabled =
         Prop.computed __resource_type __resource_id "fips_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       last_updated_time =
         Prop.computed __resource_type __resource_id
           "last_updated_time";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       verified_access_trust_providers =
         Prop.computed __resource_type __resource_id
           "verified_access_trust_providers";
     }
      : t)
  in
  __resource_attributes
