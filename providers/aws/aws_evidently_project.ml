(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type data_delivery__cloudwatch_logs = {
  log_group : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_delivery__cloudwatch_logs) -> ()

let yojson_of_data_delivery__cloudwatch_logs =
  (function
   | { log_group = v_log_group } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : data_delivery__cloudwatch_logs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_delivery__cloudwatch_logs

[@@@deriving.end]

type data_delivery__s3_destination = {
  bucket : string prop option; [@option]
  prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_delivery__s3_destination) -> ()

let yojson_of_data_delivery__s3_destination =
  (function
   | { bucket = v_bucket; prefix = v_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : data_delivery__s3_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_delivery__s3_destination

[@@@deriving.end]

type data_delivery = {
  cloudwatch_logs : data_delivery__cloudwatch_logs list;
  s3_destination : data_delivery__s3_destination list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_delivery) -> ()

let yojson_of_data_delivery =
  (function
   | {
       cloudwatch_logs = v_cloudwatch_logs;
       s3_destination = v_s3_destination;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_data_delivery__s3_destination
             v_s3_destination
         in
         ("s3_destination", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_data_delivery__cloudwatch_logs
             v_cloudwatch_logs
         in
         ("cloudwatch_logs", arg) :: bnds
       in
       `Assoc bnds
    : data_delivery -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_delivery

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

type aws_evidently_project = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  data_delivery : data_delivery list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_evidently_project) -> ()

let yojson_of_aws_evidently_project =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       data_delivery = v_data_delivery;
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
         let arg =
           yojson_of_list yojson_of_data_delivery v_data_delivery
         in
         ("data_delivery", arg) :: bnds
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_evidently_project -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_evidently_project

[@@@deriving.end]

let data_delivery__cloudwatch_logs ?log_group () :
    data_delivery__cloudwatch_logs =
  { log_group }

let data_delivery__s3_destination ?bucket ?prefix () :
    data_delivery__s3_destination =
  { bucket; prefix }

let data_delivery ?(cloudwatch_logs = []) ?(s3_destination = []) () :
    data_delivery =
  { cloudwatch_logs; s3_destination }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_evidently_project ?description ?id ?tags ?tags_all
    ?(data_delivery = []) ?timeouts ~name () : aws_evidently_project
    =
  { description; id; name; tags; tags_all; data_delivery; timeouts }

type t = {
  active_experiment_count : float prop;
  active_launch_count : float prop;
  arn : string prop;
  created_time : string prop;
  description : string prop;
  experiment_count : float prop;
  feature_count : float prop;
  id : string prop;
  last_updated_time : string prop;
  launch_count : float prop;
  name : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ?(data_delivery = [])
    ?timeouts ~name __id =
  let __type = "aws_evidently_project" in
  let __attrs =
    ({
       active_experiment_count =
         Prop.computed __type __id "active_experiment_count";
       active_launch_count =
         Prop.computed __type __id "active_launch_count";
       arn = Prop.computed __type __id "arn";
       created_time = Prop.computed __type __id "created_time";
       description = Prop.computed __type __id "description";
       experiment_count =
         Prop.computed __type __id "experiment_count";
       feature_count = Prop.computed __type __id "feature_count";
       id = Prop.computed __type __id "id";
       last_updated_time =
         Prop.computed __type __id "last_updated_time";
       launch_count = Prop.computed __type __id "launch_count";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_evidently_project
        (aws_evidently_project ?description ?id ?tags ?tags_all
           ~data_delivery ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all
    ?(data_delivery = []) ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~data_delivery ?timeouts
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
