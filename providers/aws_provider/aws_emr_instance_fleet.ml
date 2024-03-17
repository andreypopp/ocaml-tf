(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_emr_instance_fleet__instance_type_configs__configurations = {
  classification : string prop option; [@option]
      (** classification *)
  properties : (string * string prop) list option; [@option]
      (** properties *)
}
[@@deriving yojson_of]
(** aws_emr_instance_fleet__instance_type_configs__configurations *)

type aws_emr_instance_fleet__instance_type_configs__ebs_config = {
  iops : float prop option; [@option]  (** iops *)
  size : float prop;  (** size *)
  type_ : string prop; [@key "type"]  (** type *)
  volumes_per_instance : float prop option; [@option]
      (** volumes_per_instance *)
}
[@@deriving yojson_of]
(** aws_emr_instance_fleet__instance_type_configs__ebs_config *)

type aws_emr_instance_fleet__instance_type_configs = {
  bid_price : string prop option; [@option]  (** bid_price *)
  bid_price_as_percentage_of_on_demand_price : float prop option;
      [@option]
      (** bid_price_as_percentage_of_on_demand_price *)
  instance_type : string prop;  (** instance_type *)
  weighted_capacity : float prop option; [@option]
      (** weighted_capacity *)
  configurations :
    aws_emr_instance_fleet__instance_type_configs__configurations
    list;
  ebs_config :
    aws_emr_instance_fleet__instance_type_configs__ebs_config list;
}
[@@deriving yojson_of]
(** aws_emr_instance_fleet__instance_type_configs *)

type aws_emr_instance_fleet__launch_specifications__on_demand_specification = {
  allocation_strategy : string prop;  (** allocation_strategy *)
}
[@@deriving yojson_of]
(** aws_emr_instance_fleet__launch_specifications__on_demand_specification *)

type aws_emr_instance_fleet__launch_specifications__spot_specification = {
  allocation_strategy : string prop;  (** allocation_strategy *)
  block_duration_minutes : float prop option; [@option]
      (** block_duration_minutes *)
  timeout_action : string prop;  (** timeout_action *)
  timeout_duration_minutes : float prop;
      (** timeout_duration_minutes *)
}
[@@deriving yojson_of]
(** aws_emr_instance_fleet__launch_specifications__spot_specification *)

type aws_emr_instance_fleet__launch_specifications = {
  on_demand_specification :
    aws_emr_instance_fleet__launch_specifications__on_demand_specification
    list;
  spot_specification :
    aws_emr_instance_fleet__launch_specifications__spot_specification
    list;
}
[@@deriving yojson_of]
(** aws_emr_instance_fleet__launch_specifications *)

type aws_emr_instance_fleet = {
  cluster_id : string prop;  (** cluster_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  target_on_demand_capacity : float prop option; [@option]
      (** target_on_demand_capacity *)
  target_spot_capacity : float prop option; [@option]
      (** target_spot_capacity *)
  instance_type_configs :
    aws_emr_instance_fleet__instance_type_configs list;
  launch_specifications :
    aws_emr_instance_fleet__launch_specifications list;
}
[@@deriving yojson_of]
(** aws_emr_instance_fleet *)

let aws_emr_instance_fleet ?id ?name ?target_on_demand_capacity
    ?target_spot_capacity ~cluster_id ~instance_type_configs
    ~launch_specifications __resource_id =
  let __resource_type = "aws_emr_instance_fleet" in
  let __resource =
    {
      cluster_id;
      id;
      name;
      target_on_demand_capacity;
      target_spot_capacity;
      instance_type_configs;
      launch_specifications;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_emr_instance_fleet __resource);
  ()
