(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appconfig_hosted_configuration_version = {
  application_id : string;  (** application_id *)
  configuration_profile_id : string;  (** configuration_profile_id *)
  content : string;  (** content *)
  content_type : string;  (** content_type *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_appconfig_hosted_configuration_version *)

let aws_appconfig_hosted_configuration_version ?description ?id
    ~application_id ~configuration_profile_id ~content ~content_type
    __resource_id =
  let __resource_type =
    "aws_appconfig_hosted_configuration_version"
  in
  let __resource =
    {
      application_id;
      configuration_profile_id;
      content;
      content_type;
      description;
      id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appconfig_hosted_configuration_version __resource);
  ()
