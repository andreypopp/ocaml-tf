(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destination_config__on_failure = { destination : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_config__on_failure) -> ()

let yojson_of_destination_config__on_failure =
  (function
   | { destination = v_destination } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_destination in
         ("destination", arg) :: bnds
       in
       `Assoc bnds
    : destination_config__on_failure ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_config__on_failure

[@@@deriving.end]

type destination_config__on_success = { destination : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_config__on_success) -> ()

let yojson_of_destination_config__on_success =
  (function
   | { destination = v_destination } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_destination in
         ("destination", arg) :: bnds
       in
       `Assoc bnds
    : destination_config__on_success ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_config__on_success

[@@@deriving.end]

type destination_config = {
  on_failure : destination_config__on_failure list;
      [@default []] [@yojson_drop_default ( = )]
  on_success : destination_config__on_success list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_config) -> ()

let yojson_of_destination_config =
  (function
   | { on_failure = v_on_failure; on_success = v_on_success } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_on_success then bnds
         else
           let arg =
             (yojson_of_list yojson_of_destination_config__on_success)
               v_on_success
           in
           let bnd = "on_success", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_on_failure then bnds
         else
           let arg =
             (yojson_of_list yojson_of_destination_config__on_failure)
               v_on_failure
           in
           let bnd = "on_failure", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : destination_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_config

[@@@deriving.end]

type aws_lambda_function_event_invoke_config = {
  function_name : string prop;
  id : string prop option; [@option]
  maximum_event_age_in_seconds : float prop option; [@option]
  maximum_retry_attempts : float prop option; [@option]
  qualifier : string prop option; [@option]
  destination_config : destination_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lambda_function_event_invoke_config) -> ()

let yojson_of_aws_lambda_function_event_invoke_config =
  (function
   | {
       function_name = v_function_name;
       id = v_id;
       maximum_event_age_in_seconds = v_maximum_event_age_in_seconds;
       maximum_retry_attempts = v_maximum_retry_attempts;
       qualifier = v_qualifier;
       destination_config = v_destination_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_destination_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_destination_config)
               v_destination_config
           in
           let bnd = "destination_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_qualifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "qualifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_retry_attempts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_retry_attempts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_event_age_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_event_age_in_seconds", arg in
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
         let arg = yojson_of_prop yojson_of_string v_function_name in
         ("function_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_lambda_function_event_invoke_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lambda_function_event_invoke_config

[@@@deriving.end]

let destination_config__on_failure ~destination () :
    destination_config__on_failure =
  { destination }

let destination_config__on_success ~destination () :
    destination_config__on_success =
  { destination }

let destination_config ?(on_failure = []) ?(on_success = []) () :
    destination_config =
  { on_failure; on_success }

let aws_lambda_function_event_invoke_config ?id
    ?maximum_event_age_in_seconds ?maximum_retry_attempts ?qualifier
    ?(destination_config = []) ~function_name () :
    aws_lambda_function_event_invoke_config =
  {
    function_name;
    id;
    maximum_event_age_in_seconds;
    maximum_retry_attempts;
    qualifier;
    destination_config;
  }

type t = {
  tf_name : string;
  function_name : string prop;
  id : string prop;
  maximum_event_age_in_seconds : float prop;
  maximum_retry_attempts : float prop;
  qualifier : string prop;
}

let make ?id ?maximum_event_age_in_seconds ?maximum_retry_attempts
    ?qualifier ?(destination_config = []) ~function_name __id =
  let __type = "aws_lambda_function_event_invoke_config" in
  let __attrs =
    ({
       tf_name = __id;
       function_name = Prop.computed __type __id "function_name";
       id = Prop.computed __type __id "id";
       maximum_event_age_in_seconds =
         Prop.computed __type __id "maximum_event_age_in_seconds";
       maximum_retry_attempts =
         Prop.computed __type __id "maximum_retry_attempts";
       qualifier = Prop.computed __type __id "qualifier";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lambda_function_event_invoke_config
        (aws_lambda_function_event_invoke_config ?id
           ?maximum_event_age_in_seconds ?maximum_retry_attempts
           ?qualifier ~destination_config ~function_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?maximum_event_age_in_seconds
    ?maximum_retry_attempts ?qualifier ?(destination_config = [])
    ~function_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?maximum_event_age_in_seconds ?maximum_retry_attempts
      ?qualifier ~destination_config ~function_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
