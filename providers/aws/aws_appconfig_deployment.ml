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

type t = {
  application_id : string prop;
  arn : string prop;
  configuration_profile_id : string prop;
  configuration_version : string prop;
  deployment_number : float prop;
  deployment_strategy_id : string prop;
  description : string prop;
  environment_id : string prop;
  id : string prop;
  kms_key_arn : string prop;
  kms_key_identifier : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_appconfig_deployment ?description ?id ?kms_key_identifier
    ?tags ?tags_all ~application_id ~configuration_profile_id
    ~configuration_version ~deployment_strategy_id ~environment_id
    __resource_id =
  let __resource_type = "aws_appconfig_deployment" in
  let __resource =
    ({
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
      : aws_appconfig_deployment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appconfig_deployment __resource);
  let __resource_attributes =
    ({
       application_id =
         Prop.computed __resource_type __resource_id "application_id";
       arn = Prop.computed __resource_type __resource_id "arn";
       configuration_profile_id =
         Prop.computed __resource_type __resource_id
           "configuration_profile_id";
       configuration_version =
         Prop.computed __resource_type __resource_id
           "configuration_version";
       deployment_number =
         Prop.computed __resource_type __resource_id
           "deployment_number";
       deployment_strategy_id =
         Prop.computed __resource_type __resource_id
           "deployment_strategy_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       environment_id =
         Prop.computed __resource_type __resource_id "environment_id";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_arn =
         Prop.computed __resource_type __resource_id "kms_key_arn";
       kms_key_identifier =
         Prop.computed __resource_type __resource_id
           "kms_key_identifier";
       state = Prop.computed __resource_type __resource_id "state";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
