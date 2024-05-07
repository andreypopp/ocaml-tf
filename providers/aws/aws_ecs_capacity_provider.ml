(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auto_scaling_group_provider__managed_scaling = {
  instance_warmup_period : float prop option; [@option]
  maximum_scaling_step_size : float prop option; [@option]
  minimum_scaling_step_size : float prop option; [@option]
  status : string prop option; [@option]
  target_capacity : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_scaling_group_provider__managed_scaling) -> ()

let yojson_of_auto_scaling_group_provider__managed_scaling =
  (function
   | {
       instance_warmup_period = v_instance_warmup_period;
       maximum_scaling_step_size = v_maximum_scaling_step_size;
       minimum_scaling_step_size = v_minimum_scaling_step_size;
       status = v_status;
       target_capacity = v_target_capacity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_target_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "target_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_minimum_scaling_step_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minimum_scaling_step_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_scaling_step_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_scaling_step_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_warmup_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "instance_warmup_period", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auto_scaling_group_provider__managed_scaling ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_scaling_group_provider__managed_scaling

[@@@deriving.end]

type auto_scaling_group_provider = {
  auto_scaling_group_arn : string prop;
  managed_draining : string prop option; [@option]
  managed_termination_protection : string prop option; [@option]
  managed_scaling : auto_scaling_group_provider__managed_scaling list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_scaling_group_provider) -> ()

let yojson_of_auto_scaling_group_provider =
  (function
   | {
       auto_scaling_group_arn = v_auto_scaling_group_arn;
       managed_draining = v_managed_draining;
       managed_termination_protection =
         v_managed_termination_protection;
       managed_scaling = v_managed_scaling;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_auto_scaling_group_provider__managed_scaling
             v_managed_scaling
         in
         ("managed_scaling", arg) :: bnds
       in
       let bnds =
         match v_managed_termination_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managed_termination_protection", arg in
             bnd :: bnds
       in
       let bnds =
         match v_managed_draining with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managed_draining", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_auto_scaling_group_arn
         in
         ("auto_scaling_group_arn", arg) :: bnds
       in
       `Assoc bnds
    : auto_scaling_group_provider ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_scaling_group_provider

[@@@deriving.end]

type aws_ecs_capacity_provider = {
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  auto_scaling_group_provider : auto_scaling_group_provider list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ecs_capacity_provider) -> ()

let yojson_of_aws_ecs_capacity_provider =
  (function
   | {
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       auto_scaling_group_provider = v_auto_scaling_group_provider;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auto_scaling_group_provider
             v_auto_scaling_group_provider
         in
         ("auto_scaling_group_provider", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : aws_ecs_capacity_provider -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ecs_capacity_provider

[@@@deriving.end]

let auto_scaling_group_provider__managed_scaling
    ?instance_warmup_period ?maximum_scaling_step_size
    ?minimum_scaling_step_size ?status ?target_capacity () :
    auto_scaling_group_provider__managed_scaling =
  {
    instance_warmup_period;
    maximum_scaling_step_size;
    minimum_scaling_step_size;
    status;
    target_capacity;
  }

let auto_scaling_group_provider ?managed_draining
    ?managed_termination_protection ?(managed_scaling = [])
    ~auto_scaling_group_arn () : auto_scaling_group_provider =
  {
    auto_scaling_group_arn;
    managed_draining;
    managed_termination_protection;
    managed_scaling;
  }

let aws_ecs_capacity_provider ?id ?tags ?tags_all ~name
    ~auto_scaling_group_provider () : aws_ecs_capacity_provider =
  { id; name; tags; tags_all; auto_scaling_group_provider }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~name ~auto_scaling_group_provider __id
    =
  let __type = "aws_ecs_capacity_provider" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecs_capacity_provider
        (aws_ecs_capacity_provider ?id ?tags ?tags_all ~name
           ~auto_scaling_group_provider ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~name
    ~auto_scaling_group_provider __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~name ~auto_scaling_group_provider __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
