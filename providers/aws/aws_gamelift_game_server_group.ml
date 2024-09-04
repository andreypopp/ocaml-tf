(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auto_scaling_policy__target_tracking_configuration = {
  target_value : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : auto_scaling_policy__target_tracking_configuration) -> ()

let yojson_of_auto_scaling_policy__target_tracking_configuration =
  (function
   | { target_value = v_target_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_target_value in
         ("target_value", arg) :: bnds
       in
       `Assoc bnds
    : auto_scaling_policy__target_tracking_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_scaling_policy__target_tracking_configuration

[@@@deriving.end]

type auto_scaling_policy = {
  estimated_instance_warmup : float prop option; [@option]
  target_tracking_configuration :
    auto_scaling_policy__target_tracking_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_scaling_policy) -> ()

let yojson_of_auto_scaling_policy =
  (function
   | {
       estimated_instance_warmup = v_estimated_instance_warmup;
       target_tracking_configuration =
         v_target_tracking_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_target_tracking_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_auto_scaling_policy__target_tracking_configuration)
               v_target_tracking_configuration
           in
           let bnd = "target_tracking_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_estimated_instance_warmup with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "estimated_instance_warmup", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auto_scaling_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_scaling_policy

[@@@deriving.end]

type instance_definition = {
  instance_type : string prop;
  weighted_capacity : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instance_definition) -> ()

let yojson_of_instance_definition =
  (function
   | {
       instance_type = v_instance_type;
       weighted_capacity = v_weighted_capacity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_weighted_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "weighted_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_type in
         ("instance_type", arg) :: bnds
       in
       `Assoc bnds
    : instance_definition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instance_definition

[@@@deriving.end]

type launch_template = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : launch_template) -> ()

let yojson_of_launch_template =
  (function
   | { id = v_id; name = v_name; version = v_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
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
       `Assoc bnds
    : launch_template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_launch_template

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_gamelift_game_server_group = {
  balancing_strategy : string prop option; [@option]
  game_server_group_name : string prop;
  game_server_protection_policy : string prop option; [@option]
  id : string prop option; [@option]
  max_size : float prop;
  min_size : float prop;
  role_arn : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  vpc_subnets : string prop list option; [@option]
  auto_scaling_policy : auto_scaling_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  instance_definition : instance_definition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  launch_template : launch_template list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_gamelift_game_server_group) -> ()

let yojson_of_aws_gamelift_game_server_group =
  (function
   | {
       balancing_strategy = v_balancing_strategy;
       game_server_group_name = v_game_server_group_name;
       game_server_protection_policy =
         v_game_server_protection_policy;
       id = v_id;
       max_size = v_max_size;
       min_size = v_min_size;
       role_arn = v_role_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       vpc_subnets = v_vpc_subnets;
       auto_scaling_policy = v_auto_scaling_policy;
       instance_definition = v_instance_definition;
       launch_template = v_launch_template;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_launch_template then bnds
         else
           let arg =
             (yojson_of_list yojson_of_launch_template)
               v_launch_template
           in
           let bnd = "launch_template", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_instance_definition then bnds
         else
           let arg =
             (yojson_of_list yojson_of_instance_definition)
               v_instance_definition
           in
           let bnd = "instance_definition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_auto_scaling_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auto_scaling_policy)
               v_auto_scaling_policy
           in
           let bnd = "auto_scaling_policy", arg in
           bnd :: bnds
       in
       let bnds =
         match v_vpc_subnets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "vpc_subnets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_size in
         ("min_size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_size in
         ("max_size", arg) :: bnds
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
         match v_game_server_protection_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "game_server_protection_policy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_game_server_group_name
         in
         ("game_server_group_name", arg) :: bnds
       in
       let bnds =
         match v_balancing_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "balancing_strategy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_gamelift_game_server_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_gamelift_game_server_group

[@@@deriving.end]

let auto_scaling_policy__target_tracking_configuration ~target_value
    () : auto_scaling_policy__target_tracking_configuration =
  { target_value }

let auto_scaling_policy ?estimated_instance_warmup
    ~target_tracking_configuration () : auto_scaling_policy =
  { estimated_instance_warmup; target_tracking_configuration }

let instance_definition ?weighted_capacity ~instance_type () :
    instance_definition =
  { instance_type; weighted_capacity }

let launch_template ?id ?name ?version () : launch_template =
  { id; name; version }

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_gamelift_game_server_group ?balancing_strategy
    ?game_server_protection_policy ?id ?tags ?tags_all ?vpc_subnets
    ?(auto_scaling_policy = []) ?timeouts ~game_server_group_name
    ~max_size ~min_size ~role_arn ~instance_definition
    ~launch_template () : aws_gamelift_game_server_group =
  {
    balancing_strategy;
    game_server_group_name;
    game_server_protection_policy;
    id;
    max_size;
    min_size;
    role_arn;
    tags;
    tags_all;
    vpc_subnets;
    auto_scaling_policy;
    instance_definition;
    launch_template;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  auto_scaling_group_arn : string prop;
  balancing_strategy : string prop;
  game_server_group_name : string prop;
  game_server_protection_policy : string prop;
  id : string prop;
  max_size : float prop;
  min_size : float prop;
  role_arn : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_subnets : string list prop;
}

let make ?balancing_strategy ?game_server_protection_policy ?id ?tags
    ?tags_all ?vpc_subnets ?(auto_scaling_policy = []) ?timeouts
    ~game_server_group_name ~max_size ~min_size ~role_arn
    ~instance_definition ~launch_template __id =
  let __type = "aws_gamelift_game_server_group" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       auto_scaling_group_arn =
         Prop.computed __type __id "auto_scaling_group_arn";
       balancing_strategy =
         Prop.computed __type __id "balancing_strategy";
       game_server_group_name =
         Prop.computed __type __id "game_server_group_name";
       game_server_protection_policy =
         Prop.computed __type __id "game_server_protection_policy";
       id = Prop.computed __type __id "id";
       max_size = Prop.computed __type __id "max_size";
       min_size = Prop.computed __type __id "min_size";
       role_arn = Prop.computed __type __id "role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_subnets = Prop.computed __type __id "vpc_subnets";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_gamelift_game_server_group
        (aws_gamelift_game_server_group ?balancing_strategy
           ?game_server_protection_policy ?id ?tags ?tags_all
           ?vpc_subnets ~auto_scaling_policy ?timeouts
           ~game_server_group_name ~max_size ~min_size ~role_arn
           ~instance_definition ~launch_template ());
    attrs = __attrs;
  }

let register ?tf_module ?balancing_strategy
    ?game_server_protection_policy ?id ?tags ?tags_all ?vpc_subnets
    ?(auto_scaling_policy = []) ?timeouts ~game_server_group_name
    ~max_size ~min_size ~role_arn ~instance_definition
    ~launch_template __id =
  let (r : _ Tf_core.resource) =
    make ?balancing_strategy ?game_server_protection_policy ?id ?tags
      ?tags_all ?vpc_subnets ~auto_scaling_policy ?timeouts
      ~game_server_group_name ~max_size ~min_size ~role_arn
      ~instance_definition ~launch_template __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
