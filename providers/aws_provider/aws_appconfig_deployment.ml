(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appconfig_deployment = {
  application_id : string prop;  (** application_id *)
  configuration_profile_id : string prop;
      (** configuration_profile_id *)
  configuration_version : string prop;  (** configuration_version *)
  deployment_strategy_id : string prop;
      (** deployment_strategy_id *)
  description : string prop option; [@option]  (** description *)
  environment_id : string prop;  (** environment_id *)
  id : string prop option; [@option]  (** id *)
  kms_key_identifier : string prop option; [@option]
      (** kms_key_identifier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_appconfig_deployment *)

let aws_appconfig_deployment ?description ?id ?kms_key_identifier
    ?tags ?tags_all ~application_id ~configuration_profile_id
    ~configuration_version ~deployment_strategy_id ~environment_id
    __resource_id =
  let __resource_type = "aws_appconfig_deployment" in
  let __resource =
    {
      application_id;
      configuration_profile_id;
      configuration_version;
      deployment_strategy_id;
      description;
      environment_id;
      id;
      kms_key_identifier;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appconfig_deployment __resource);
  ()
