(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_certificate__domain_validation_options = {
  domain_name : string prop;  (** domain_name *)
  resource_record_name : string prop;  (** resource_record_name *)
  resource_record_type : string prop;  (** resource_record_type *)
  resource_record_value : string prop;  (** resource_record_value *)
}
[@@deriving yojson_of]

type aws_lightsail_certificate = {
  domain_name : string prop option; [@option]  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  subject_alternative_names : string prop list option; [@option]
      (** subject_alternative_names *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_lightsail_certificate *)

type t = {
  arn : string prop;
  created_at : string prop;
  domain_name : string prop;
  domain_validation_options :
    aws_lightsail_certificate__domain_validation_options list prop;
  id : string prop;
  name : string prop;
  subject_alternative_names : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_lightsail_certificate ?domain_name ?id
    ?subject_alternative_names ?tags ?tags_all ~name __resource_id =
  let __resource_type = "aws_lightsail_certificate" in
  let __resource =
    ({
       domain_name;
       id;
       name;
       subject_alternative_names;
       tags;
       tags_all;
     }
      : aws_lightsail_certificate)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_certificate __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       domain_validation_options =
         Prop.computed __resource_type __resource_id
           "domain_validation_options";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       subject_alternative_names =
         Prop.computed __resource_type __resource_id
           "subject_alternative_names";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
