(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_container_service_deployment_version__container = {
  command : string list option; [@option]  (** command *)
  container_name : string;  (** container_name *)
  environment : (string * string) list option; [@option]
      (** environment *)
  image : string;  (** image *)
  ports : (string * string) list option; [@option]  (** ports *)
}
[@@deriving yojson_of]
(** aws_lightsail_container_service_deployment_version__container *)

type aws_lightsail_container_service_deployment_version__public_endpoint__health_check = {
  healthy_threshold : float option; [@option]
      (** healthy_threshold *)
  interval_seconds : float option; [@option]  (** interval_seconds *)
  path : string option; [@option]  (** path *)
  success_codes : string option; [@option]  (** success_codes *)
  timeout_seconds : float option; [@option]  (** timeout_seconds *)
  unhealthy_threshold : float option; [@option]
      (** unhealthy_threshold *)
}
[@@deriving yojson_of]
(** aws_lightsail_container_service_deployment_version__public_endpoint__health_check *)

type aws_lightsail_container_service_deployment_version__public_endpoint = {
  container_name : string;  (** container_name *)
  container_port : float;  (** container_port *)
  health_check :
    aws_lightsail_container_service_deployment_version__public_endpoint__health_check
    list;
}
[@@deriving yojson_of]
(** aws_lightsail_container_service_deployment_version__public_endpoint *)

type aws_lightsail_container_service_deployment_version__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_lightsail_container_service_deployment_version__timeouts *)

type aws_lightsail_container_service_deployment_version = {
  service_name : string;  (** service_name *)
  container :
    aws_lightsail_container_service_deployment_version__container
    list;
  public_endpoint :
    aws_lightsail_container_service_deployment_version__public_endpoint
    list;
  timeouts :
    aws_lightsail_container_service_deployment_version__timeouts
    option;
}
[@@deriving yojson_of]
(** aws_lightsail_container_service_deployment_version *)

let aws_lightsail_container_service_deployment_version ?timeouts
    ~service_name ~container ~public_endpoint __resource_id =
  let __resource_type =
    "aws_lightsail_container_service_deployment_version"
  in
  let __resource =
    { service_name; container; public_endpoint; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_container_service_deployment_version
       __resource);
  ()
