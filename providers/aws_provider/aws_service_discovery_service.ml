(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_service_discovery_service__dns_config__dns_records = {
  ttl : float;  (** ttl *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_service_discovery_service__dns_config__dns_records *)

type aws_service_discovery_service__dns_config = {
  namespace_id : string;  (** namespace_id *)
  routing_policy : string option; [@option]  (** routing_policy *)
  dns_records :
    aws_service_discovery_service__dns_config__dns_records list;
}
[@@deriving yojson_of]
(** aws_service_discovery_service__dns_config *)

type aws_service_discovery_service__health_check_config = {
  failure_threshold : float option; [@option]
      (** failure_threshold *)
  resource_path : string option; [@option]  (** resource_path *)
  type_ : string option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_service_discovery_service__health_check_config *)

type aws_service_discovery_service__health_check_custom_config = {
  failure_threshold : float option; [@option]
      (** failure_threshold *)
}
[@@deriving yojson_of]
(** aws_service_discovery_service__health_check_custom_config *)

type aws_service_discovery_service = {
  description : string option; [@option]  (** description *)
  force_destroy : bool option; [@option]  (** force_destroy *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  dns_config : aws_service_discovery_service__dns_config list;
  health_check_config :
    aws_service_discovery_service__health_check_config list;
  health_check_custom_config :
    aws_service_discovery_service__health_check_custom_config list;
}
[@@deriving yojson_of]
(** aws_service_discovery_service *)

let aws_service_discovery_service ?description ?force_destroy ?tags
    ~name ~dns_config ~health_check_config
    ~health_check_custom_config __resource_id =
  let __resource_type = "aws_service_discovery_service" in
  let __resource =
    {
      description;
      force_destroy;
      name;
      tags;
      dns_config;
      health_check_config;
      health_check_custom_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_service_discovery_service __resource);
  ()
