(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type aws_m2_deployment = {
  application_id : string prop;
  application_version : float prop;
  environment_id : string prop;
  force_stop : bool prop option; [@option]
  start : bool prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_m2_deployment) -> ()

let yojson_of_aws_m2_deployment =
  (function
   | {
       application_id = v_application_id;
       application_version = v_application_version;
       environment_id = v_environment_id;
       force_stop = v_force_stop;
       start = v_start;
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
         let arg = yojson_of_prop yojson_of_bool v_start in
         ("start", arg) :: bnds
       in
       let bnds =
         match v_force_stop with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_stop", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_environment_id
         in
         ("environment_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_application_version
         in
         ("application_version", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_id
         in
         ("application_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_m2_deployment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_m2_deployment

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_m2_deployment ?force_stop ?timeouts ~application_id
    ~application_version ~environment_id ~start () :
    aws_m2_deployment =
  {
    application_id;
    application_version;
    environment_id;
    force_stop;
    start;
    timeouts;
  }

type t = {
  tf_name : string;
  application_id : string prop;
  application_version : float prop;
  deployment_id : string prop;
  environment_id : string prop;
  force_stop : bool prop;
  id : string prop;
  start : bool prop;
}

let make ?force_stop ?timeouts ~application_id ~application_version
    ~environment_id ~start __id =
  let __type = "aws_m2_deployment" in
  let __attrs =
    ({
       tf_name = __id;
       application_id = Prop.computed __type __id "application_id";
       application_version =
         Prop.computed __type __id "application_version";
       deployment_id = Prop.computed __type __id "deployment_id";
       environment_id = Prop.computed __type __id "environment_id";
       force_stop = Prop.computed __type __id "force_stop";
       id = Prop.computed __type __id "id";
       start = Prop.computed __type __id "start";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_m2_deployment
        (aws_m2_deployment ?force_stop ?timeouts ~application_id
           ~application_version ~environment_id ~start ());
    attrs = __attrs;
  }

let register ?tf_module ?force_stop ?timeouts ~application_id
    ~application_version ~environment_id ~start __id =
  let (r : _ Tf_core.resource) =
    make ?force_stop ?timeouts ~application_id ~application_version
      ~environment_id ~start __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
