(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_chimesdkvoice_voice_profile_domain__server_side_encryption_configuration = {
  kms_key_arn : string prop;  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** aws_chimesdkvoice_voice_profile_domain__server_side_encryption_configuration *)

type aws_chimesdkvoice_voice_profile_domain__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_chimesdkvoice_voice_profile_domain__timeouts *)

type aws_chimesdkvoice_voice_profile_domain = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  server_side_encryption_configuration :
    aws_chimesdkvoice_voice_profile_domain__server_side_encryption_configuration
    list;
  timeouts : aws_chimesdkvoice_voice_profile_domain__timeouts option;
}
[@@deriving yojson_of]
(** aws_chimesdkvoice_voice_profile_domain *)

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_chimesdkvoice_voice_profile_domain ?description ?tags
    ?tags_all ?timeouts ~name ~server_side_encryption_configuration
    __resource_id =
  let __resource_type = "aws_chimesdkvoice_voice_profile_domain" in
  let __resource =
    ({
       description;
       name;
       tags;
       tags_all;
       server_side_encryption_configuration;
       timeouts;
     }
      : aws_chimesdkvoice_voice_profile_domain)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_chimesdkvoice_voice_profile_domain __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
