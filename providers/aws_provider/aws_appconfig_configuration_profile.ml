(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appconfig_configuration_profile__validator = {
  content : string option; [@option]  (** content *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_appconfig_configuration_profile__validator *)

type aws_appconfig_configuration_profile = {
  application_id : string;  (** application_id *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  kms_key_identifier : string option; [@option]
      (** kms_key_identifier *)
  location_uri : string;  (** location_uri *)
  name : string;  (** name *)
  retrieval_role_arn : string option; [@option]
      (** retrieval_role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  validator : aws_appconfig_configuration_profile__validator list;
}
[@@deriving yojson_of]
(** aws_appconfig_configuration_profile *)

let aws_appconfig_configuration_profile ?description ?id
    ?kms_key_identifier ?retrieval_role_arn ?tags ?tags_all ?type_
    ~application_id ~location_uri ~name ~validator __resource_id =
  let __resource_type = "aws_appconfig_configuration_profile" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appconfig_configuration_profile __resource);
  ()
