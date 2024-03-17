(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_emr_instance_group__ebs_config = {
  iops : float option; [@option]  (** iops *)
  size : float;  (** size *)
  type_ : string; [@key "type"]  (** type *)
  volumes_per_instance : float option; [@option]
      (** volumes_per_instance *)
}
[@@deriving yojson_of]
(** aws_emr_instance_group__ebs_config *)

type aws_emr_instance_group = {
  autoscaling_policy : string option; [@option]
      (** autoscaling_policy *)
  bid_price : string option; [@option]  (** bid_price *)
  cluster_id : string;  (** cluster_id *)
  configurations_json : string option; [@option]
      (** configurations_json *)
  ebs_optimized : bool option; [@option]  (** ebs_optimized *)
  id : string option; [@option]  (** id *)
  instance_count : float option; [@option]  (** instance_count *)
  instance_type : string;  (** instance_type *)
  name : string option; [@option]  (** name *)
  ebs_config : aws_emr_instance_group__ebs_config list;
}
[@@deriving yojson_of]
(** aws_emr_instance_group *)

let aws_emr_instance_group ?autoscaling_policy ?bid_price
    ?configurations_json ?ebs_optimized ?id ?instance_count ?name
    ~cluster_id ~instance_type ~ebs_config __resource_id =
  let __resource_type = "aws_emr_instance_group" in
  let __resource =
    {
      autoscaling_policy;
      bid_price;
      cluster_id;
      configurations_json;
      ebs_optimized;
      id;
      instance_count;
      instance_type;
      name;
      ebs_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_emr_instance_group __resource);
  ()
