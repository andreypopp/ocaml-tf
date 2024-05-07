(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ebs_config = {
  iops : float prop option; [@option]
  size : float prop;
  type_ : string prop; [@key "type"]
  volumes_per_instance : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ebs_config) -> ()

let yojson_of_ebs_config =
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
    : ebs_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ebs_config

[@@@deriving.end]

type aws_emr_instance_group = {
  autoscaling_policy : string prop option; [@option]
  bid_price : string prop option; [@option]
  cluster_id : string prop;
  configurations_json : string prop option; [@option]
  ebs_optimized : bool prop option; [@option]
  id : string prop option; [@option]
  instance_count : float prop option; [@option]
  instance_type : string prop;
  name : string prop option; [@option]
  ebs_config : ebs_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_emr_instance_group) -> ()

let yojson_of_aws_emr_instance_group =
  (function
   | {
       autoscaling_policy = v_autoscaling_policy;
       bid_price = v_bid_price;
       cluster_id = v_cluster_id;
       configurations_json = v_configurations_json;
       ebs_optimized = v_ebs_optimized;
       id = v_id;
       instance_count = v_instance_count;
       instance_type = v_instance_type;
       name = v_name;
       ebs_config = v_ebs_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ebs_config v_ebs_config
         in
         ("ebs_config", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_instance_type in
         ("instance_type", arg) :: bnds
       in
       let bnds =
         match v_instance_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "instance_count", arg in
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
         match v_ebs_optimized with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ebs_optimized", arg in
             bnd :: bnds
       in
       let bnds =
         match v_configurations_json with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "configurations_json", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       let bnds =
         match v_bid_price with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bid_price", arg in
             bnd :: bnds
       in
       let bnds =
         match v_autoscaling_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "autoscaling_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_emr_instance_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_emr_instance_group

[@@@deriving.end]

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
  tf_name : string;
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

let make ?autoscaling_policy ?bid_price ?configurations_json
    ?ebs_optimized ?id ?instance_count ?name ~cluster_id
    ~instance_type ~ebs_config __id =
  let __type = "aws_emr_instance_group" in
  let __attrs =
    ({
       tf_name = __id;
       autoscaling_policy =
         Prop.computed __type __id "autoscaling_policy";
       bid_price = Prop.computed __type __id "bid_price";
       cluster_id = Prop.computed __type __id "cluster_id";
       configurations_json =
         Prop.computed __type __id "configurations_json";
       ebs_optimized = Prop.computed __type __id "ebs_optimized";
       id = Prop.computed __type __id "id";
       instance_count = Prop.computed __type __id "instance_count";
       instance_type = Prop.computed __type __id "instance_type";
       name = Prop.computed __type __id "name";
       running_instance_count =
         Prop.computed __type __id "running_instance_count";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_emr_instance_group
        (aws_emr_instance_group ?autoscaling_policy ?bid_price
           ?configurations_json ?ebs_optimized ?id ?instance_count
           ?name ~cluster_id ~instance_type ~ebs_config ());
    attrs = __attrs;
  }

let register ?tf_module ?autoscaling_policy ?bid_price
    ?configurations_json ?ebs_optimized ?id ?instance_count ?name
    ~cluster_id ~instance_type ~ebs_config __id =
  let (r : _ Tf_core.resource) =
    make ?autoscaling_policy ?bid_price ?configurations_json
      ?ebs_optimized ?id ?instance_count ?name ~cluster_id
      ~instance_type ~ebs_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
