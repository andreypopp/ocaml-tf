(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type container = {
  command : string prop list option; [@option]  (** command *)
  container_name : string prop;  (** container_name *)
  environment : (string * string prop) list option; [@option]
      (** environment *)
  image : string prop;  (** image *)
  ports : (string * string prop) list option; [@option]  (** ports *)
}
[@@deriving yojson_of]
(** container *)

type public_endpoint__health_check = {
  healthy_threshold : float prop option; [@option]
      (** healthy_threshold *)
  interval_seconds : float prop option; [@option]
      (** interval_seconds *)
  path : string prop option; [@option]  (** path *)
  success_codes : string prop option; [@option]  (** success_codes *)
  timeout_seconds : float prop option; [@option]
      (** timeout_seconds *)
  unhealthy_threshold : float prop option; [@option]
      (** unhealthy_threshold *)
}
[@@deriving yojson_of]
(** public_endpoint__health_check *)

type public_endpoint = {
  container_name : string prop;  (** container_name *)
  container_port : float prop;  (** container_port *)
  health_check : public_endpoint__health_check list;
}
[@@deriving yojson_of]
(** public_endpoint *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_lightsail_container_service_deployment_version = {
  id : string prop option; [@option]  (** id *)
  service_name : string prop;  (** service_name *)
  container : container list;
  public_endpoint : public_endpoint list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_lightsail_container_service_deployment_version *)

let container ?command ?environment ?ports ~container_name ~image ()
    : container =
  { command; container_name; environment; image; ports }

let public_endpoint__health_check ?healthy_threshold
    ?interval_seconds ?path ?success_codes ?timeout_seconds
    ?unhealthy_threshold () : public_endpoint__health_check =
  {
    healthy_threshold;
    interval_seconds;
    path;
    success_codes;
    timeout_seconds;
    unhealthy_threshold;
  }

let public_endpoint ~container_name ~container_port ~health_check ()
    : public_endpoint =
  { container_name; container_port; health_check }

let timeouts ?create () : timeouts = { create }

let aws_lightsail_container_service_deployment_version ?id ?timeouts
    ~service_name ~container ~public_endpoint () :
    aws_lightsail_container_service_deployment_version =
  { id; service_name; container; public_endpoint; timeouts }

type t = {
  created_at : string prop;
  id : string prop;
  service_name : string prop;
  state : string prop;
  version : float prop;
}

let register ?tf_module ?id ?timeouts ~service_name ~container
    ~public_endpoint __resource_id =
  let __resource_type =
    "aws_lightsail_container_service_deployment_version"
  in
  let __resource =
    aws_lightsail_container_service_deployment_version ?id ?timeouts
      ~service_name ~container ~public_endpoint ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_container_service_deployment_version
       __resource);
  let __resource_attributes =
    ({
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       id = Prop.computed __resource_type __resource_id "id";
       service_name =
         Prop.computed __resource_type __resource_id "service_name";
       state = Prop.computed __resource_type __resource_id "state";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
