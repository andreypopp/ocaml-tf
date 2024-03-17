(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appconfig_configuration_profile__validator = {
  content : string prop option; [@option]  (** content *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_appconfig_configuration_profile__validator *)

type aws_appconfig_configuration_profile = {
  application_id : string prop;  (** application_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kms_key_identifier : string prop option; [@option]
      (** kms_key_identifier *)
  location_uri : string prop;  (** location_uri *)
  name : string prop;  (** name *)
  retrieval_role_arn : string prop option; [@option]
      (** retrieval_role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  validator : aws_appconfig_configuration_profile__validator list;
}
[@@deriving yojson_of]
(** aws_appconfig_configuration_profile *)

type t = {
  application_id : string prop;
  arn : string prop;
  configuration_profile_id : string prop;
  description : string prop;
  id : string prop;
  kms_key_identifier : string prop;
  location_uri : string prop;
  name : string prop;
  retrieval_role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let aws_appconfig_configuration_profile ?description ?id
    ?kms_key_identifier ?retrieval_role_arn ?tags ?tags_all ?type_
    ~application_id ~location_uri ~name ~validator __resource_id =
  let __resource_type = "aws_appconfig_configuration_profile" in
  let __resource =
    ({
       application_id;
       description;
       id;
       kms_key_identifier;
       location_uri;
       name;
       retrieval_role_arn;
       tags;
       tags_all;
       type_;
       validator;
     }
      : aws_appconfig_configuration_profile)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appconfig_configuration_profile __resource);
  let __resource_attributes =
    ({
       application_id =
         Prop.computed __resource_type __resource_id "application_id";
       arn = Prop.computed __resource_type __resource_id "arn";
       configuration_profile_id =
         Prop.computed __resource_type __resource_id
           "configuration_profile_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_identifier =
         Prop.computed __resource_type __resource_id
           "kms_key_identifier";
       location_uri =
         Prop.computed __resource_type __resource_id "location_uri";
       name = Prop.computed __resource_type __resource_id "name";
       retrieval_role_arn =
         Prop.computed __resource_type __resource_id
           "retrieval_role_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
