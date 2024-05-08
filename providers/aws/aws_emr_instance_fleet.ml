(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type instance_type_configs__configurations = {
  classification : string prop option; [@option]
  properties : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_type_configs__configurations) -> ()

let yojson_of_instance_type_configs__configurations =
  (function
   | { classification = v_classification; properties = v_properties }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_properties with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "properties", arg in
             bnd :: bnds
       in
       let bnds =
         match v_classification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "classification", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : instance_type_configs__configurations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_type_configs__configurations

[@@@deriving.end]

type instance_type_configs__ebs_config = {
  iops : float prop option; [@option]
  size : float prop;
  type_ : string prop; [@key "type"]
  volumes_per_instance : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_type_configs__ebs_config) -> ()

let yojson_of_instance_type_configs__ebs_config =
  (function
   | {
       iops = v_iops;
       size = v_size;
       type_ = v_type_;
       volumes_per_instance = v_volumes_per_instance;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_volumes_per_instance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "volumes_per_instance", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size in
         ("size", arg) :: bnds
       in
       let bnds =
         match v_iops with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "iops", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : instance_type_configs__ebs_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_type_configs__ebs_config

[@@@deriving.end]

type instance_type_configs = {
  bid_price : string prop option; [@option]
  bid_price_as_percentage_of_on_demand_price : float prop option;
      [@option]
  instance_type : string prop;
  weighted_capacity : float prop option; [@option]
  configurations : instance_type_configs__configurations list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ebs_config : instance_type_configs__ebs_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_type_configs) -> ()

let yojson_of_instance_type_configs =
  (function
   | {
       bid_price = v_bid_price;
       bid_price_as_percentage_of_on_demand_price =
         v_bid_price_as_percentage_of_on_demand_price;
       instance_type = v_instance_type;
       weighted_capacity = v_weighted_capacity;
       configurations = v_configurations;
       ebs_config = v_ebs_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ebs_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_instance_type_configs__ebs_config)
               v_ebs_config
           in
           let bnd = "ebs_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_configurations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_instance_type_configs__configurations)
               v_configurations
           in
           let bnd = "configurations", arg in
           bnd :: bnds
       in
       let bnds =
         match v_weighted_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "weighted_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_type in
         ("instance_type", arg) :: bnds
       in
       let bnds =
         match v_bid_price_as_percentage_of_on_demand_price with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "bid_price_as_percentage_of_on_demand_price", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_bid_price with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bid_price", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : instance_type_configs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_type_configs

[@@@deriving.end]

type launch_specifications__on_demand_specification = {
  allocation_strategy : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : launch_specifications__on_demand_specification) -> ()

let yojson_of_launch_specifications__on_demand_specification =
  (function
   | { allocation_strategy = v_allocation_strategy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_allocation_strategy
         in
         ("allocation_strategy", arg) :: bnds
       in
       `Assoc bnds
    : launch_specifications__on_demand_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_launch_specifications__on_demand_specification

[@@@deriving.end]

type launch_specifications__spot_specification = {
  allocation_strategy : string prop;
  block_duration_minutes : float prop option; [@option]
  timeout_action : string prop;
  timeout_duration_minutes : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : launch_specifications__spot_specification) -> ()

let yojson_of_launch_specifications__spot_specification =
  (function
   | {
       allocation_strategy = v_allocation_strategy;
       block_duration_minutes = v_block_duration_minutes;
       timeout_action = v_timeout_action;
       timeout_duration_minutes = v_timeout_duration_minutes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_timeout_duration_minutes
         in
         ("timeout_duration_minutes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_timeout_action
         in
         ("timeout_action", arg) :: bnds
       in
       let bnds =
         match v_block_duration_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "block_duration_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_allocation_strategy
         in
         ("allocation_strategy", arg) :: bnds
       in
       `Assoc bnds
    : launch_specifications__spot_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_launch_specifications__spot_specification

[@@@deriving.end]

type launch_specifications = {
  on_demand_specification :
    launch_specifications__on_demand_specification list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  spot_specification : launch_specifications__spot_specification list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : launch_specifications) -> ()

let yojson_of_launch_specifications =
  (function
   | {
       on_demand_specification = v_on_demand_specification;
       spot_specification = v_spot_specification;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_spot_specification then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_launch_specifications__spot_specification)
               v_spot_specification
           in
           let bnd = "spot_specification", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_on_demand_specification then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_launch_specifications__on_demand_specification)
               v_on_demand_specification
           in
           let bnd = "on_demand_specification", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : launch_specifications -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_launch_specifications

[@@@deriving.end]

type aws_emr_instance_fleet = {
  cluster_id : string prop;
  id : string prop option; [@option]
  name : string prop option; [@option]
  target_on_demand_capacity : float prop option; [@option]
  target_spot_capacity : float prop option; [@option]
  instance_type_configs : instance_type_configs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  launch_specifications : launch_specifications list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_emr_instance_fleet) -> ()

let yojson_of_aws_emr_instance_fleet =
  (function
   | {
       cluster_id = v_cluster_id;
       id = v_id;
       name = v_name;
       target_on_demand_capacity = v_target_on_demand_capacity;
       target_spot_capacity = v_target_spot_capacity;
       instance_type_configs = v_instance_type_configs;
       launch_specifications = v_launch_specifications;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_launch_specifications then bnds
         else
           let arg =
             (yojson_of_list yojson_of_launch_specifications)
               v_launch_specifications
           in
           let bnd = "launch_specifications", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_instance_type_configs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_instance_type_configs)
               v_instance_type_configs
           in
           let bnd = "instance_type_configs", arg in
           bnd :: bnds
       in
       let bnds =
         match v_target_spot_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_spot_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_on_demand_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_on_demand_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_emr_instance_fleet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_emr_instance_fleet

[@@@deriving.end]

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

let launch_specifications ?(on_demand_specification = [])
    ?(spot_specification = []) () : launch_specifications =
  { on_demand_specification; spot_specification }

let aws_emr_instance_fleet ?id ?name ?target_on_demand_capacity
    ?target_spot_capacity ?(launch_specifications = []) ~cluster_id
    ~instance_type_configs () : aws_emr_instance_fleet =
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
  tf_name : string;
  cluster_id : string prop;
  id : string prop;
  name : string prop;
  provisioned_on_demand_capacity : float prop;
  provisioned_spot_capacity : float prop;
  target_on_demand_capacity : float prop;
  target_spot_capacity : float prop;
}

let make ?id ?name ?target_on_demand_capacity ?target_spot_capacity
    ?(launch_specifications = []) ~cluster_id ~instance_type_configs
    __id =
  let __type = "aws_emr_instance_fleet" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?target_spot_capacity ~launch_specifications ~cluster_id
           ~instance_type_configs ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?target_on_demand_capacity
    ?target_spot_capacity ?(launch_specifications = []) ~cluster_id
    ~instance_type_configs __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?target_on_demand_capacity ?target_spot_capacity
      ~launch_specifications ~cluster_id ~instance_type_configs __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
