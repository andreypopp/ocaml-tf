(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type ebs_config = {
  iops : float prop option; [@option]  (** iops *)
  size : float prop;  (** size *)
  type_ : string prop; [@key "type"]  (** type *)
  volumes_per_instance : float prop option; [@option]
      (** volumes_per_instance *)
}
[@@deriving yojson_of]
(** ebs_config *)

type aws_emr_instance_group = {
  autoscaling_policy : string prop option; [@option]
      (** autoscaling_policy *)
  bid_price : string prop option; [@option]  (** bid_price *)
  cluster_id : string prop;  (** cluster_id *)
  configurations_json : string prop option; [@option]
      (** configurations_json *)
  ebs_optimized : bool prop option; [@option]  (** ebs_optimized *)
  id : string prop option; [@option]  (** id *)
  instance_count : float prop option; [@option]
      (** instance_count *)
  instance_type : string prop;  (** instance_type *)
  name : string prop option; [@option]  (** name *)
  ebs_config : ebs_config list;
}
[@@deriving yojson_of]
(** aws_emr_instance_group *)

let ebs_config ?iops ?volumes_per_instance ~size ~type_ () :
    ebs_config =
  { iops; size; type_; volumes_per_instance }

let aws_emr_instance_group ?autoscaling_policy ?bid_price
    ?configurations_json ?ebs_optimized ?id ?instance_count ?name
    ~cluster_id ~instance_type ~ebs_config () :
    aws_emr_instance_group =
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

type t = {
  autoscaling_policy : string prop;
  bid_price : string prop;
  cluster_id : string prop;
  configurations_json : string prop;
  ebs_optimized : bool prop;
  id : string prop;
  instance_count : float prop;
  instance_type : string prop;
  name : string prop;
  running_instance_count : float prop;
  status : string prop;
}

let register ?tf_module ?autoscaling_policy ?bid_price
    ?configurations_json ?ebs_optimized ?id ?instance_count ?name
    ~cluster_id ~instance_type ~ebs_config __resource_id =
  let __resource_type = "aws_emr_instance_group" in
  let __resource =
    aws_emr_instance_group ?autoscaling_policy ?bid_price
      ?configurations_json ?ebs_optimized ?id ?instance_count ?name
      ~cluster_id ~instance_type ~ebs_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_emr_instance_group __resource);
  let __resource_attributes =
    ({
       autoscaling_policy =
         Prop.computed __resource_type __resource_id
           "autoscaling_policy";
       bid_price =
         Prop.computed __resource_type __resource_id "bid_price";
       cluster_id =
         Prop.computed __resource_type __resource_id "cluster_id";
       configurations_json =
         Prop.computed __resource_type __resource_id
           "configurations_json";
       ebs_optimized =
         Prop.computed __resource_type __resource_id "ebs_optimized";
       id = Prop.computed __resource_type __resource_id "id";
       instance_count =
         Prop.computed __resource_type __resource_id "instance_count";
       instance_type =
         Prop.computed __resource_type __resource_id "instance_type";
       name = Prop.computed __resource_type __resource_id "name";
       running_instance_count =
         Prop.computed __resource_type __resource_id
           "running_instance_count";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
