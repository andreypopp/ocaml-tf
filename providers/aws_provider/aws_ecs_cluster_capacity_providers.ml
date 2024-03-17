(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ecs_cluster_capacity_providers__default_capacity_provider_strategy = {
  base : float option; [@option]  (** base *)
  capacity_provider : string;  (** capacity_provider *)
  weight : float option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** aws_ecs_cluster_capacity_providers__default_capacity_provider_strategy *)

type aws_ecs_cluster_capacity_providers = {
  capacity_providers : string list option; [@option]
      (** capacity_providers *)
  cluster_name : string;  (** cluster_name *)
  default_capacity_provider_strategy :
    aws_ecs_cluster_capacity_providers__default_capacity_provider_strategy
    list;
}
[@@deriving yojson_of]
(** aws_ecs_cluster_capacity_providers *)

let aws_ecs_cluster_capacity_providers ?capacity_providers
    ~cluster_name ~default_capacity_provider_strategy __resource_id =
  let __resource_type = "aws_ecs_cluster_capacity_providers" in
  let __resource =
    {
      capacity_providers;
      cluster_name;
      default_capacity_provider_strategy;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecs_cluster_capacity_providers __resource);
  ()
