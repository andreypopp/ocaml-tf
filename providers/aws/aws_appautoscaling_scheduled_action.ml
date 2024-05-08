(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type scalable_target_action = {
  max_capacity : string prop option; [@option]
  min_capacity : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scalable_target_action) -> ()

let yojson_of_scalable_target_action =
  (function
   | { max_capacity = v_max_capacity; min_capacity = v_min_capacity }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_min_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "min_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_capacity", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : scalable_target_action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scalable_target_action

[@@@deriving.end]

type aws_appautoscaling_scheduled_action = {
  end_time : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  resource_id : string prop;
  scalable_dimension : string prop;
  schedule : string prop;
  service_namespace : string prop;
  start_time : string prop option; [@option]
  timezone : string prop option; [@option]
  scalable_target_action : scalable_target_action list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appautoscaling_scheduled_action) -> ()

let yojson_of_aws_appautoscaling_scheduled_action =
  (function
   | {
       end_time = v_end_time;
       id = v_id;
       name = v_name;
       resource_id = v_resource_id;
       scalable_dimension = v_scalable_dimension;
       schedule = v_schedule;
       service_namespace = v_service_namespace;
       start_time = v_start_time;
       timezone = v_timezone;
       scalable_target_action = v_scalable_target_action;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_scalable_target_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_scalable_target_action)
               v_scalable_target_action
           in
           let bnd = "scalable_target_action", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timezone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timezone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_time", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_namespace
         in
         ("service_namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schedule in
         ("schedule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_scalable_dimension
         in
         ("scalable_dimension", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_id in
         ("resource_id", arg) :: bnds
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
       let bnds =
         match v_end_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end_time", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_appautoscaling_scheduled_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appautoscaling_scheduled_action

[@@@deriving.end]

let scalable_target_action ?max_capacity ?min_capacity () :
    scalable_target_action =
  { max_capacity; min_capacity }

let aws_appautoscaling_scheduled_action ?end_time ?id ?start_time
    ?timezone ~name ~resource_id ~scalable_dimension ~schedule
    ~service_namespace ~scalable_target_action () :
    aws_appautoscaling_scheduled_action =
  {
    end_time;
    id;
    name;
    resource_id;
    scalable_dimension;
    schedule;
    service_namespace;
    start_time;
    timezone;
    scalable_target_action;
  }

type t = {
  tf_name : string;
  arn : string prop;
  end_time : string prop;
  id : string prop;
  name : string prop;
  resource_id : string prop;
  scalable_dimension : string prop;
  schedule : string prop;
  service_namespace : string prop;
  start_time : string prop;
  timezone : string prop;
}

let make ?end_time ?id ?start_time ?timezone ~name ~resource_id
    ~scalable_dimension ~schedule ~service_namespace
    ~scalable_target_action __id =
  let __type = "aws_appautoscaling_scheduled_action" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       end_time = Prop.computed __type __id "end_time";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_id = Prop.computed __type __id "resource_id";
       scalable_dimension =
         Prop.computed __type __id "scalable_dimension";
       schedule = Prop.computed __type __id "schedule";
       service_namespace =
         Prop.computed __type __id "service_namespace";
       start_time = Prop.computed __type __id "start_time";
       timezone = Prop.computed __type __id "timezone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appautoscaling_scheduled_action
        (aws_appautoscaling_scheduled_action ?end_time ?id
           ?start_time ?timezone ~name ~resource_id
           ~scalable_dimension ~schedule ~service_namespace
           ~scalable_target_action ());
    attrs = __attrs;
  }

let register ?tf_module ?end_time ?id ?start_time ?timezone ~name
    ~resource_id ~scalable_dimension ~schedule ~service_namespace
    ~scalable_target_action __id =
  let (r : _ Tf_core.resource) =
    make ?end_time ?id ?start_time ?timezone ~name ~resource_id
      ~scalable_dimension ~schedule ~service_namespace
      ~scalable_target_action __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
