(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_apprunner_service__encryption_configuration = {
  kms_key : string;  (** kms_key *)
}
[@@deriving yojson_of]
(** aws_apprunner_service__encryption_configuration *)

type aws_apprunner_service__health_check_configuration = {
  healthy_threshold : float option; [@option]
      (** healthy_threshold *)
  interval : float option; [@option]  (** interval *)
  path : string option; [@option]  (** path *)
  protocol : string option; [@option]  (** protocol *)
  timeout : float option; [@option]  (** timeout *)
  unhealthy_threshold : float option; [@option]
      (** unhealthy_threshold *)
}
[@@deriving yojson_of]
(** aws_apprunner_service__health_check_configuration *)

type aws_apprunner_service__instance_configuration = {
  cpu : string option; [@option]  (** cpu *)
  instance_role_arn : string option; [@option]
      (** instance_role_arn *)
  memory : string option; [@option]  (** memory *)
}
[@@deriving yojson_of]
(** aws_apprunner_service__instance_configuration *)

type aws_apprunner_service__network_configuration__egress_configuration = {
  egress_type : string option; [@option]  (** egress_type *)
  vpc_connector_arn : string option; [@option]
      (** vpc_connector_arn *)
}
[@@deriving yojson_of]
(** aws_apprunner_service__network_configuration__egress_configuration *)

type aws_apprunner_service__network_configuration__ingress_configuration = {
  is_publicly_accessible : bool option; [@option]
      (** is_publicly_accessible *)
}
[@@deriving yojson_of]
(** aws_apprunner_service__network_configuration__ingress_configuration *)

type aws_apprunner_service__network_configuration = {
  ip_address_type : string option; [@option]  (** ip_address_type *)
  egress_configuration :
    aws_apprunner_service__network_configuration__egress_configuration
    list;
  ingress_configuration :
    aws_apprunner_service__network_configuration__ingress_configuration
    list;
}
[@@deriving yojson_of]
(** aws_apprunner_service__network_configuration *)

type aws_apprunner_service__observability_configuration = {
  observability_configuration_arn : string option; [@option]
      (** observability_configuration_arn *)
  observability_enabled : bool;  (** observability_enabled *)
}
[@@deriving yojson_of]
(** aws_apprunner_service__observability_configuration *)

type aws_apprunner_service__source_configuration__authentication_configuration = {
  access_role_arn : string option; [@option]  (** access_role_arn *)
  connection_arn : string option; [@option]  (** connection_arn *)
}
[@@deriving yojson_of]
(** aws_apprunner_service__source_configuration__authentication_configuration *)

type aws_apprunner_service__source_configuration__code_repository__code_configuration__code_configuration_values = {
  build_command : string option; [@option]  (** build_command *)
  port : string option; [@option]  (** port *)
  runtime : string;  (** runtime *)
  runtime_environment_secrets : (string * string) list option;
      [@option]
      (** runtime_environment_secrets *)
  runtime_environment_variables : (string * string) list option;
      [@option]
      (** runtime_environment_variables *)
  start_command : string option; [@option]  (** start_command *)
}
[@@deriving yojson_of]
(** aws_apprunner_service__source_configuration__code_repository__code_configuration__code_configuration_values *)

type aws_apprunner_service__source_configuration__code_repository__code_configuration = {
  configuration_source : string;  (** configuration_source *)
  code_configuration_values :
    aws_apprunner_service__source_configuration__code_repository__code_configuration__code_configuration_values
    list;
}
[@@deriving yojson_of]
(** aws_apprunner_service__source_configuration__code_repository__code_configuration *)

type aws_apprunner_service__source_configuration__code_repository__source_code_version = {
  type_ : string; [@key "type"]  (** type *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_apprunner_service__source_configuration__code_repository__source_code_version *)

type aws_apprunner_service__source_configuration__code_repository = {
  repository_url : string;  (** repository_url *)
  source_directory : string option; [@option]
      (** source_directory *)
  code_configuration :
    aws_apprunner_service__source_configuration__code_repository__code_configuration
    list;
  source_code_version :
    aws_apprunner_service__source_configuration__code_repository__source_code_version
    list;
}
[@@deriving yojson_of]
(** aws_apprunner_service__source_configuration__code_repository *)

type aws_apprunner_service__source_configuration__image_repository__image_configuration = {
  port : string option; [@option]  (** port *)
  runtime_environment_secrets : (string * string) list option;
      [@option]
      (** runtime_environment_secrets *)
  runtime_environment_variables : (string * string) list option;
      [@option]
      (** runtime_environment_variables *)
  start_command : string option; [@option]  (** start_command *)
}
[@@deriving yojson_of]
(** aws_apprunner_service__source_configuration__image_repository__image_configuration *)

type aws_apprunner_service__source_configuration__image_repository = {
  image_identifier : string;  (** image_identifier *)
  image_repository_type : string;  (** image_repository_type *)
  image_configuration :
    aws_apprunner_service__source_configuration__image_repository__image_configuration
    list;
}
[@@deriving yojson_of]
(** aws_apprunner_service__source_configuration__image_repository *)

type aws_apprunner_service__source_configuration = {
  auto_deployments_enabled : bool option; [@option]
      (** auto_deployments_enabled *)
  authentication_configuration :
    aws_apprunner_service__source_configuration__authentication_configuration
    list;
  code_repository :
    aws_apprunner_service__source_configuration__code_repository list;
  image_repository :
    aws_apprunner_service__source_configuration__image_repository
    list;
}
[@@deriving yojson_of]
(** aws_apprunner_service__source_configuration *)

type aws_apprunner_service = {
  service_name : string;  (** service_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  encryption_configuration :
    aws_apprunner_service__encryption_configuration list;
  health_check_configuration :
    aws_apprunner_service__health_check_configuration list;
  instance_configuration :
    aws_apprunner_service__instance_configuration list;
  network_configuration :
    aws_apprunner_service__network_configuration list;
  observability_configuration :
    aws_apprunner_service__observability_configuration list;
  source_configuration :
    aws_apprunner_service__source_configuration list;
}
[@@deriving yojson_of]
(** aws_apprunner_service *)

let aws_apprunner_service ?tags ~service_name
    ~encryption_configuration ~health_check_configuration
    ~instance_configuration ~network_configuration
    ~observability_configuration ~source_configuration __resource_id
    =
  let __resource_type = "aws_apprunner_service" in
  let __resource =
    {
      service_name;
      tags;
      encryption_configuration;
      health_check_configuration;
      instance_configuration;
      network_configuration;
      observability_configuration;
      source_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apprunner_service __resource);
  ()
