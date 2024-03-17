(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_event_endpoint__event_bus = {
  event_bus_arn : string prop;  (** event_bus_arn *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_endpoint__event_bus *)

type aws_cloudwatch_event_endpoint__replication_config = {
  state : string prop option; [@option]  (** state *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_endpoint__replication_config *)

type aws_cloudwatch_event_endpoint__routing_config__failover_config__primary = {
  health_check : string prop option; [@option]  (** health_check *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_endpoint__routing_config__failover_config__primary *)

type aws_cloudwatch_event_endpoint__routing_config__failover_config__secondary = {
  route : string prop option; [@option]  (** route *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_endpoint__routing_config__failover_config__secondary *)

type aws_cloudwatch_event_endpoint__routing_config__failover_config = {
  primary :
    aws_cloudwatch_event_endpoint__routing_config__failover_config__primary
    list;
  secondary :
    aws_cloudwatch_event_endpoint__routing_config__failover_config__secondary
    list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_endpoint__routing_config__failover_config *)

type aws_cloudwatch_event_endpoint__routing_config = {
  failover_config :
    aws_cloudwatch_event_endpoint__routing_config__failover_config
    list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_endpoint__routing_config *)

type aws_cloudwatch_event_endpoint = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  role_arn : string prop option; [@option]  (** role_arn *)
  event_bus : aws_cloudwatch_event_endpoint__event_bus list;
  replication_config :
    aws_cloudwatch_event_endpoint__replication_config list;
  routing_config : aws_cloudwatch_event_endpoint__routing_config list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_endpoint *)

type t = {
  arn : string prop;
  description : string prop;
  endpoint_url : string prop;
  id : string prop;
  name : string prop;
  role_arn : string prop;
}

let aws_cloudwatch_event_endpoint ?description ?id ?role_arn ~name
    ~event_bus ~replication_config ~routing_config __resource_id =
  let __resource_type = "aws_cloudwatch_event_endpoint" in
  let __resource =
    ({
       description;
       id;
       name;
       role_arn;
       event_bus;
       replication_config;
       routing_config;
     }
      : aws_cloudwatch_event_endpoint)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_event_endpoint __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       endpoint_url =
         Prop.computed __resource_type __resource_id "endpoint_url";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
     }
      : t)
  in
  __resource_attributes
