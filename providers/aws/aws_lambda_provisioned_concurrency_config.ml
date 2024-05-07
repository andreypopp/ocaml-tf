(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; update = v_update } ->
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

type aws_lambda_provisioned_concurrency_config = {
  function_name : string prop;
  id : string prop option; [@option]
  provisioned_concurrent_executions : float prop;
  qualifier : string prop;
  skip_destroy : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lambda_provisioned_concurrency_config) -> ()

let yojson_of_aws_lambda_provisioned_concurrency_config =
  (function
   | {
       function_name = v_function_name;
       id = v_id;
       provisioned_concurrent_executions =
         v_provisioned_concurrent_executions;
       qualifier = v_qualifier;
       skip_destroy = v_skip_destroy;
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
         match v_skip_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_qualifier in
         ("qualifier", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_provisioned_concurrent_executions
         in
         ("provisioned_concurrent_executions", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_function_name in
         ("function_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_lambda_provisioned_concurrency_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lambda_provisioned_concurrency_config

[@@@deriving.end]

let timeouts ?create ?update () : timeouts = { create; update }

let aws_lambda_provisioned_concurrency_config ?id ?skip_destroy
    ?timeouts ~function_name ~provisioned_concurrent_executions
    ~qualifier () : aws_lambda_provisioned_concurrency_config =
  {
    function_name;
    id;
    provisioned_concurrent_executions;
    qualifier;
    skip_destroy;
    timeouts;
  }

type t = {
  tf_name : string;
  function_name : string prop;
  id : string prop;
  provisioned_concurrent_executions : float prop;
  qualifier : string prop;
  skip_destroy : bool prop;
}

let make ?id ?skip_destroy ?timeouts ~function_name
    ~provisioned_concurrent_executions ~qualifier __id =
  let __type = "aws_lambda_provisioned_concurrency_config" in
  let __attrs =
    ({
       tf_name = __id;
       function_name = Prop.computed __type __id "function_name";
       id = Prop.computed __type __id "id";
       provisioned_concurrent_executions =
         Prop.computed __type __id
           "provisioned_concurrent_executions";
       qualifier = Prop.computed __type __id "qualifier";
       skip_destroy = Prop.computed __type __id "skip_destroy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lambda_provisioned_concurrency_config
        (aws_lambda_provisioned_concurrency_config ?id ?skip_destroy
           ?timeouts ~function_name
           ~provisioned_concurrent_executions ~qualifier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?skip_destroy ?timeouts ~function_name
    ~provisioned_concurrent_executions ~qualifier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?skip_destroy ?timeouts ~function_name
      ~provisioned_concurrent_executions ~qualifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
