(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration__transformation_configuration__content_transformation__aws_lambda = {
  function_arn : string prop;
  function_payload : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration__transformation_configuration__content_transformation__aws_lambda) ->
  ()

let yojson_of_configuration__transformation_configuration__content_transformation__aws_lambda
    =
  (function
   | {
       function_arn = v_function_arn;
       function_payload = v_function_payload;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_function_payload with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "function_payload", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_function_arn in
         ("function_arn", arg) :: bnds
       in
       `Assoc bnds
    : configuration__transformation_configuration__content_transformation__aws_lambda ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration__transformation_configuration__content_transformation__aws_lambda

[@@@deriving.end]

type configuration__transformation_configuration__content_transformation = {
  aws_lambda :
    configuration__transformation_configuration__content_transformation__aws_lambda
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       configuration__transformation_configuration__content_transformation) ->
  ()

let yojson_of_configuration__transformation_configuration__content_transformation
    =
  (function
   | { aws_lambda = v_aws_lambda } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_configuration__transformation_configuration__content_transformation__aws_lambda
             v_aws_lambda
         in
         ("aws_lambda", arg) :: bnds
       in
       `Assoc bnds
    : configuration__transformation_configuration__content_transformation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_configuration__transformation_configuration__content_transformation

[@@@deriving.end]

type configuration__transformation_configuration = {
  actions : string prop list;
  content_transformation :
    configuration__transformation_configuration__content_transformation
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__transformation_configuration) -> ()

let yojson_of_configuration__transformation_configuration =
  (function
   | {
       actions = v_actions;
       content_transformation = v_content_transformation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_configuration__transformation_configuration__content_transformation
             v_content_transformation
         in
         ("content_transformation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_actions
         in
         ("actions", arg) :: bnds
       in
       `Assoc bnds
    : configuration__transformation_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__transformation_configuration

[@@@deriving.end]

type configuration = {
  allowed_features : string prop list option; [@option]
  cloud_watch_metrics_enabled : bool prop option; [@option]
  supporting_access_point : string prop;
  transformation_configuration :
    configuration__transformation_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration) -> ()

let yojson_of_configuration =
  (function
   | {
       allowed_features = v_allowed_features;
       cloud_watch_metrics_enabled = v_cloud_watch_metrics_enabled;
       supporting_access_point = v_supporting_access_point;
       transformation_configuration = v_transformation_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_configuration__transformation_configuration
             v_transformation_configuration
         in
         ("transformation_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_supporting_access_point
         in
         ("supporting_access_point", arg) :: bnds
       in
       let bnds =
         match v_cloud_watch_metrics_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cloud_watch_metrics_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_features with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_features", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration

[@@@deriving.end]

type aws_s3control_object_lambda_access_point = {
  account_id : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  configuration : configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3control_object_lambda_access_point) -> ()

let yojson_of_aws_s3control_object_lambda_access_point =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       name = v_name;
       configuration = v_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_configuration v_configuration
         in
         ("configuration", arg) :: bnds
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
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_s3control_object_lambda_access_point ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3control_object_lambda_access_point

[@@@deriving.end]

let configuration__transformation_configuration__content_transformation__aws_lambda
    ?function_payload ~function_arn () :
    configuration__transformation_configuration__content_transformation__aws_lambda
    =
  { function_arn; function_payload }

let configuration__transformation_configuration__content_transformation
    ~aws_lambda () :
    configuration__transformation_configuration__content_transformation
    =
  { aws_lambda }

let configuration__transformation_configuration ~actions
    ~content_transformation () :
    configuration__transformation_configuration =
  { actions; content_transformation }

let configuration ?allowed_features ?cloud_watch_metrics_enabled
    ~supporting_access_point ~transformation_configuration () :
    configuration =
  {
    allowed_features;
    cloud_watch_metrics_enabled;
    supporting_access_point;
    transformation_configuration;
  }

let aws_s3control_object_lambda_access_point ?account_id ?id ~name
    ~configuration () : aws_s3control_object_lambda_access_point =
  { account_id; id; name; configuration }

type t = {
  tf_name : string;
  account_id : string prop;
  alias : string prop;
  arn : string prop;
  id : string prop;
  name : string prop;
}

let make ?account_id ?id ~name ~configuration __id =
  let __type = "aws_s3control_object_lambda_access_point" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       alias = Prop.computed __type __id "alias";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3control_object_lambda_access_point
        (aws_s3control_object_lambda_access_point ?account_id ?id
           ~name ~configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ~name ~configuration __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ~name ~configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
