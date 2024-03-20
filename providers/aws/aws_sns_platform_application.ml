(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sns_platform_application = {
  apple_platform_bundle_id : string prop option; [@option]
  apple_platform_team_id : string prop option; [@option]
  event_delivery_failure_topic_arn : string prop option; [@option]
  event_endpoint_created_topic_arn : string prop option; [@option]
  event_endpoint_deleted_topic_arn : string prop option; [@option]
  event_endpoint_updated_topic_arn : string prop option; [@option]
  failure_feedback_role_arn : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  platform : string prop;
  platform_credential : string prop;
  platform_principal : string prop option; [@option]
  success_feedback_role_arn : string prop option; [@option]
  success_feedback_sample_rate : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sns_platform_application) -> ()

let yojson_of_aws_sns_platform_application =
  (function
   | {
       apple_platform_bundle_id = v_apple_platform_bundle_id;
       apple_platform_team_id = v_apple_platform_team_id;
       event_delivery_failure_topic_arn =
         v_event_delivery_failure_topic_arn;
       event_endpoint_created_topic_arn =
         v_event_endpoint_created_topic_arn;
       event_endpoint_deleted_topic_arn =
         v_event_endpoint_deleted_topic_arn;
       event_endpoint_updated_topic_arn =
         v_event_endpoint_updated_topic_arn;
       failure_feedback_role_arn = v_failure_feedback_role_arn;
       id = v_id;
       name = v_name;
       platform = v_platform;
       platform_credential = v_platform_credential;
       platform_principal = v_platform_principal;
       success_feedback_role_arn = v_success_feedback_role_arn;
       success_feedback_sample_rate = v_success_feedback_sample_rate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_success_feedback_sample_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "success_feedback_sample_rate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_success_feedback_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "success_feedback_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_platform_principal with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "platform_principal", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_platform_credential
         in
         ("platform_credential", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_platform in
         ("platform", arg) :: bnds
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
         match v_failure_feedback_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "failure_feedback_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event_endpoint_updated_topic_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_endpoint_updated_topic_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event_endpoint_deleted_topic_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_endpoint_deleted_topic_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event_endpoint_created_topic_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_endpoint_created_topic_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_event_delivery_failure_topic_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_delivery_failure_topic_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_apple_platform_team_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "apple_platform_team_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_apple_platform_bundle_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "apple_platform_bundle_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_sns_platform_application ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sns_platform_application

[@@@deriving.end]

let aws_sns_platform_application ?apple_platform_bundle_id
    ?apple_platform_team_id ?event_delivery_failure_topic_arn
    ?event_endpoint_created_topic_arn
    ?event_endpoint_deleted_topic_arn
    ?event_endpoint_updated_topic_arn ?failure_feedback_role_arn ?id
    ?platform_principal ?success_feedback_role_arn
    ?success_feedback_sample_rate ~name ~platform
    ~platform_credential () : aws_sns_platform_application =
  {
    apple_platform_bundle_id;
    apple_platform_team_id;
    event_delivery_failure_topic_arn;
    event_endpoint_created_topic_arn;
    event_endpoint_deleted_topic_arn;
    event_endpoint_updated_topic_arn;
    failure_feedback_role_arn;
    id;
    name;
    platform;
    platform_credential;
    platform_principal;
    success_feedback_role_arn;
    success_feedback_sample_rate;
  }

type t = {
  apple_platform_bundle_id : string prop;
  apple_platform_team_id : string prop;
  arn : string prop;
  event_delivery_failure_topic_arn : string prop;
  event_endpoint_created_topic_arn : string prop;
  event_endpoint_deleted_topic_arn : string prop;
  event_endpoint_updated_topic_arn : string prop;
  failure_feedback_role_arn : string prop;
  id : string prop;
  name : string prop;
  platform : string prop;
  platform_credential : string prop;
  platform_principal : string prop;
  success_feedback_role_arn : string prop;
  success_feedback_sample_rate : string prop;
}

let make ?apple_platform_bundle_id ?apple_platform_team_id
    ?event_delivery_failure_topic_arn
    ?event_endpoint_created_topic_arn
    ?event_endpoint_deleted_topic_arn
    ?event_endpoint_updated_topic_arn ?failure_feedback_role_arn ?id
    ?platform_principal ?success_feedback_role_arn
    ?success_feedback_sample_rate ~name ~platform
    ~platform_credential __id =
  let __type = "aws_sns_platform_application" in
  let __attrs =
    ({
       apple_platform_bundle_id =
         Prop.computed __type __id "apple_platform_bundle_id";
       apple_platform_team_id =
         Prop.computed __type __id "apple_platform_team_id";
       arn = Prop.computed __type __id "arn";
       event_delivery_failure_topic_arn =
         Prop.computed __type __id "event_delivery_failure_topic_arn";
       event_endpoint_created_topic_arn =
         Prop.computed __type __id "event_endpoint_created_topic_arn";
       event_endpoint_deleted_topic_arn =
         Prop.computed __type __id "event_endpoint_deleted_topic_arn";
       event_endpoint_updated_topic_arn =
         Prop.computed __type __id "event_endpoint_updated_topic_arn";
       failure_feedback_role_arn =
         Prop.computed __type __id "failure_feedback_role_arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       platform = Prop.computed __type __id "platform";
       platform_credential =
         Prop.computed __type __id "platform_credential";
       platform_principal =
         Prop.computed __type __id "platform_principal";
       success_feedback_role_arn =
         Prop.computed __type __id "success_feedback_role_arn";
       success_feedback_sample_rate =
         Prop.computed __type __id "success_feedback_sample_rate";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sns_platform_application
        (aws_sns_platform_application ?apple_platform_bundle_id
           ?apple_platform_team_id ?event_delivery_failure_topic_arn
           ?event_endpoint_created_topic_arn
           ?event_endpoint_deleted_topic_arn
           ?event_endpoint_updated_topic_arn
           ?failure_feedback_role_arn ?id ?platform_principal
           ?success_feedback_role_arn ?success_feedback_sample_rate
           ~name ~platform ~platform_credential ());
    attrs = __attrs;
  }

let register ?tf_module ?apple_platform_bundle_id
    ?apple_platform_team_id ?event_delivery_failure_topic_arn
    ?event_endpoint_created_topic_arn
    ?event_endpoint_deleted_topic_arn
    ?event_endpoint_updated_topic_arn ?failure_feedback_role_arn ?id
    ?platform_principal ?success_feedback_role_arn
    ?success_feedback_sample_rate ~name ~platform
    ~platform_credential __id =
  let (r : _ Tf_core.resource) =
    make ?apple_platform_bundle_id ?apple_platform_team_id
      ?event_delivery_failure_topic_arn
      ?event_endpoint_created_topic_arn
      ?event_endpoint_deleted_topic_arn
      ?event_endpoint_updated_topic_arn ?failure_feedback_role_arn
      ?id ?platform_principal ?success_feedback_role_arn
      ?success_feedback_sample_rate ~name ~platform
      ~platform_credential __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
