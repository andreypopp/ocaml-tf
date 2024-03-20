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

type aws_batch_job_queue = {
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_batch_job_queue) -> ()

let yojson_of_aws_batch_job_queue =
  (function
   | { id = v_id; name = v_name; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : aws_batch_job_queue -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_batch_job_queue

[@@@deriving.end]

let aws_batch_job_queue ?id ?tags ~name () : aws_batch_job_queue =
  { id; name; tags }

type t = {
  arn : string prop;
  compute_environment_order : compute_environment_order list prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  scheduling_policy_arn : string prop;
  state : string prop;
  status : string prop;
  status_reason : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ~name __id =
  let __type = "aws_batch_job_queue" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       compute_environment_order =
         Prop.computed __type __id "compute_environment_order";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
       scheduling_policy_arn =
         Prop.computed __type __id "scheduling_policy_arn";
       state = Prop.computed __type __id "state";
       status = Prop.computed __type __id "status";
       status_reason = Prop.computed __type __id "status_reason";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_batch_job_queue
        (aws_batch_job_queue ?id ?tags ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
