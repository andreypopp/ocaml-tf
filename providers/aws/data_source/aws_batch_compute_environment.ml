(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type update_policy = {
  job_execution_timeout_minutes : float prop;
  terminate_jobs_on_update : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : update_policy) -> ()

let yojson_of_update_policy =
  (function
   | {
       job_execution_timeout_minutes =
         v_job_execution_timeout_minutes;
       terminate_jobs_on_update = v_terminate_jobs_on_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_terminate_jobs_on_update
         in
         ("terminate_jobs_on_update", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_job_execution_timeout_minutes
         in
         ("job_execution_timeout_minutes", arg) :: bnds
       in
       `Assoc bnds
    : update_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_update_policy

[@@@deriving.end]

type aws_batch_compute_environment = {
  compute_environment_name : string prop;
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_batch_compute_environment) -> ()

let yojson_of_aws_batch_compute_environment =
  (function
   | {
       compute_environment_name = v_compute_environment_name;
       id = v_id;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_compute_environment_name
         in
         ("compute_environment_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_batch_compute_environment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_batch_compute_environment

[@@@deriving.end]

let aws_batch_compute_environment ?id ?tags ~compute_environment_name
    () : aws_batch_compute_environment =
  { compute_environment_name; id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  compute_environment_name : string prop;
  ecs_cluster_arn : string prop;
  id : string prop;
  service_role : string prop;
  state : string prop;
  status : string prop;
  status_reason : string prop;
  tags : string Tf_core.assoc prop;
  type_ : string prop;
  update_policy : update_policy list prop;
}

let make ?id ?tags ~compute_environment_name __id =
  let __type = "aws_batch_compute_environment" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       compute_environment_name =
         Prop.computed __type __id "compute_environment_name";
       ecs_cluster_arn = Prop.computed __type __id "ecs_cluster_arn";
       id = Prop.computed __type __id "id";
       service_role = Prop.computed __type __id "service_role";
       state = Prop.computed __type __id "state";
       status = Prop.computed __type __id "status";
       status_reason = Prop.computed __type __id "status_reason";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
       update_policy = Prop.computed __type __id "update_policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_batch_compute_environment
        (aws_batch_compute_environment ?id ?tags
           ~compute_environment_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~compute_environment_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~compute_environment_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
