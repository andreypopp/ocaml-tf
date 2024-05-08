(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type compute_environment_order = {
  compute_environment : string prop;
  order : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : compute_environment_order) -> ()

let yojson_of_compute_environment_order =
  (function
   | { compute_environment = v_compute_environment; order = v_order }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_order in
         ("order", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_compute_environment
         in
         ("compute_environment", arg) :: bnds
       in
       `Assoc bnds
    : compute_environment_order -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_compute_environment_order

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
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

type aws_batch_job_queue = {
  compute_environments : string prop list option; [@option]
  name : string prop;
  priority : float prop;
  scheduling_policy_arn : string prop option; [@option]
  state : string prop;
  tags : (string * string prop) list option; [@option]
  compute_environment_order : compute_environment_order list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_batch_job_queue) -> ()

let yojson_of_aws_batch_job_queue =
  (function
   | {
       compute_environments = v_compute_environments;
       name = v_name;
       priority = v_priority;
       scheduling_policy_arn = v_scheduling_policy_arn;
       state = v_state;
       tags = v_tags;
       compute_environment_order = v_compute_environment_order;
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
         if [] = v_compute_environment_order then bnds
         else
           let arg =
             (yojson_of_list yojson_of_compute_environment_order)
               v_compute_environment_order
           in
           let bnd = "compute_environment_order", arg in
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
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         match v_scheduling_policy_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scheduling_policy_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_compute_environments with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "compute_environments", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_batch_job_queue -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_batch_job_queue

[@@@deriving.end]

let compute_environment_order ~compute_environment ~order () :
    compute_environment_order =
  { compute_environment; order }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_batch_job_queue ?compute_environments ?scheduling_policy_arn
    ?tags ?(compute_environment_order = []) ?timeouts ~name ~priority
    ~state () : aws_batch_job_queue =
  {
    compute_environments;
    name;
    priority;
    scheduling_policy_arn;
    state;
    tags;
    compute_environment_order;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  compute_environments : string list prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  scheduling_policy_arn : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?compute_environments ?scheduling_policy_arn ?tags
    ?(compute_environment_order = []) ?timeouts ~name ~priority
    ~state __id =
  let __type = "aws_batch_job_queue" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       compute_environments =
         Prop.computed __type __id "compute_environments";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
       scheduling_policy_arn =
         Prop.computed __type __id "scheduling_policy_arn";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_batch_job_queue
        (aws_batch_job_queue ?compute_environments
           ?scheduling_policy_arn ?tags ~compute_environment_order
           ?timeouts ~name ~priority ~state ());
    attrs = __attrs;
  }

let register ?tf_module ?compute_environments ?scheduling_policy_arn
    ?tags ?(compute_environment_order = []) ?timeouts ~name ~priority
    ~state __id =
  let (r : _ Tf_core.resource) =
    make ?compute_environments ?scheduling_policy_arn ?tags
      ~compute_environment_order ?timeouts ~name ~priority ~state
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
