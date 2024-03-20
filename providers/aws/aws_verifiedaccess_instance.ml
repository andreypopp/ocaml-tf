(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?description ?fips_enabled ?id ?tags ?tags_all __id =
  let __type = "aws_verifiedaccess_instance" in
  let __attrs =
    ({
       creation_time = Prop.computed __type __id "creation_time";
       description = Prop.computed __type __id "description";
       fips_enabled = Prop.computed __type __id "fips_enabled";
       id = Prop.computed __type __id "id";
       last_updated_time =
         Prop.computed __type __id "last_updated_time";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       verified_access_trust_providers =
         Prop.computed __type __id "verified_access_trust_providers";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_verifiedaccess_instance
        (aws_verifiedaccess_instance ?description ?fips_enabled ?id
           ?tags ?tags_all ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?fips_enabled ?id ?tags
    ?tags_all __id =
  let (r : _ Tf_core.resource) =
    make ?description ?fips_enabled ?id ?tags ?tags_all __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
