(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type instance_type_configs__configurations = {
  classification : string prop option; [@option]
      (** classification *)
  properties : (string * string prop) list option; [@option]
      (** properties *)
}
[@@deriving yojson_of]
(** instance_type_configs__configurations *)

type instance_type_configs__ebs_config = {
  iops : float prop option; [@option]  (** iops *)
  size : float prop;  (** size *)
  type_ : string prop; [@key "type"]  (** type *)
  volumes_per_instance : float prop option; [@option]
      (** volumes_per_instance *)
}
[@@deriving yojson_of]
(** instance_type_configs__ebs_config *)

type instance_type_configs = {
  bid_price : string prop option; [@option]  (** bid_price *)
  bid_price_as_percentage_of_on_demand_price : float prop option;
      [@option]
      (** bid_price_as_percentage_of_on_demand_price *)
  instance_type : string prop;  (** instance_type *)
  weighted_capacity : float prop option; [@option]
      (** weighted_capacity *)
  configurations : instance_type_configs__configurations list;
  ebs_config : instance_type_configs__ebs_config list;
}
[@@deriving yojson_of]
(** instance_type_configs *)

type launch_specifications__on_demand_specification = {
  allocation_strategy : string prop;  (** allocation_strategy *)
}
[@@deriving yojson_of]
(** launch_specifications__on_demand_specification *)

type launch_specifications__spot_specification = {
  allocation_strategy : string prop;  (** allocation_strategy *)
  block_duration_minutes : float prop option; [@option]
      (** block_duration_minutes *)
  timeout_action : string prop;  (** timeout_action *)
  timeout_duration_minutes : float prop;
      (** timeout_duration_minutes *)
}
[@@deriving yojson_of]
(** launch_specifications__spot_specification *)

type launch_specifications = {
  on_demand_specification :
    launch_specifications__on_demand_specification list;
  spot_specification : launch_specifications__spot_specification list;
}
[@@deriving yojson_of]
(** launch_specifications *)

type aws_emr_instance_fleet = {
  cluster_id : string prop;  (** cluster_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  target_on_demand_capacity : float prop option; [@option]
      (** target_on_demand_capacity *)
  target_spot_capacity : float prop option; [@option]
      (** target_spot_capacity *)
  instance_type_configs : instance_type_configs list;
  launch_specifications : launch_specifications list;
}
[@@deriving yojson_of]
(** aws_emr_instance_fleet *)

let instance_type_configs__configurations ?classification ?properties
    () : instance_type_configs__configurations =
  { classification; properties }

let instance_type_configs__ebs_config ?iops ?volumes_per_instance
    ~size ~type_ () : instance_type_configs__ebs_config =
  { iops; size; type_; volumes_per_instance }

let instance_type_configs ?bid_price
    ?bid_price_as_percentage_of_on_demand_price ?weighted_capacity
    ~instance_type ~configurations ~ebs_config () :
    instance_type_configs =
  {
    bid_price;
    bid_price_as_percentage_of_on_demand_price;
    instance_type;
    weighted_capacity;
    configurations;
    ebs_config;
  }

let launch_specifications__on_demand_specification
    ~allocation_strategy () :
    launch_specifications__on_demand_specification =
  { allocation_strategy }

let launch_specifications__spot_specification ?block_duration_minutes
    ~allocation_strategy ~timeout_action ~timeout_duration_minutes ()
    : launch_specifications__spot_specification =
  {
    allocation_strategy;
    block_duration_minutes;
    timeout_action;
    timeout_duration_minutes;
  }

let launch_specifications ~on_demand_specification
    ~spot_specification () : launch_specifications =
  { on_demand_specification; spot_specification }

let aws_emr_instance_fleet ?id ?name ?target_on_demand_capacity
    ?target_spot_capacity ~cluster_id ~instance_type_configs
    ~launch_specifications () : aws_emr_instance_fleet =
  {
    cluster_id;
    id;
    name;
    target_on_demand_capacity;
    target_spot_capacity;
    instance_type_configs;
    launch_specifications;
  }

type t = {
  cluster_id : string prop;
  id : string prop;
  name : string prop;
  provisioned_on_demand_capacity : float prop;
  provisioned_spot_capacity : float prop;
  target_on_demand_capacity : float prop;
  target_spot_capacity : float prop;
}

let make ?id ?name ?target_on_demand_capacity ?target_spot_capacity
    ~cluster_id ~instance_type_configs ~launch_specifications __id =
  let __type = "aws_emr_instance_fleet" in
  let __attrs =
    ({
       cluster_id = Prop.computed __type __id "cluster_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       provisioned_on_demand_capacity =
         Prop.computed __type __id "provisioned_on_demand_capacity";
       provisioned_spot_capacity =
         Prop.computed __type __id "provisioned_spot_capacity";
       target_on_demand_capacity =
         Prop.computed __type __id "target_on_demand_capacity";
       target_spot_capacity =
         Prop.computed __type __id "target_spot_capacity";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_emr_instance_fleet
        (aws_emr_instance_fleet ?id ?name ?target_on_demand_capacity
           ?target_spot_capacity ~cluster_id ~instance_type_configs
           ~launch_specifications ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?target_on_demand_capacity
    ?target_spot_capacity ~cluster_id ~instance_type_configs
    ~launch_specifications __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?target_on_demand_capacity ?target_spot_capacity
      ~cluster_id ~instance_type_configs ~launch_specifications __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
