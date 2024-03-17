(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appconfig_hosted_configuration_version = {
  application_id : string prop;  (** application_id *)
  configuration_profile_id : string prop;
      (** configuration_profile_id *)
  content : string prop;  (** content *)
  content_type : string prop;  (** content_type *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_appconfig_hosted_configuration_version *)

type t = {
  application_id : string prop;
  arn : string prop;
  configuration_profile_id : string prop;
  content : string prop;
  content_type : string prop;
  description : string prop;
  id : string prop;
  version_number : float prop;
}

let aws_appconfig_hosted_configuration_version ?description ?id
    ~application_id ~configuration_profile_id ~content ~content_type
    __resource_id =
  let __resource_type =
    "aws_appconfig_hosted_configuration_version"
  in
  let __resource =
    ({
       application_id;
       configuration_profile_id;
       content;
       content_type;
       description;
       id;
     }
      : aws_appconfig_hosted_configuration_version)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appconfig_hosted_configuration_version __resource);
  let __resource_attributes =
    ({
       application_id =
         Prop.computed __resource_type __resource_id "application_id";
       arn = Prop.computed __resource_type __resource_id "arn";
       configuration_profile_id =
         Prop.computed __resource_type __resource_id
           "configuration_profile_id";
       content =
         Prop.computed __resource_type __resource_id "content";
       content_type =
         Prop.computed __resource_type __resource_id "content_type";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       version_number =
         Prop.computed __resource_type __resource_id "version_number";
     }
      : t)
  in
  __resource_attributes
