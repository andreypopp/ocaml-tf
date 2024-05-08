(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration__https_notification_configuration = {
  authorization_api_key_name : string prop option; [@option]
  authorization_api_key_value : string prop option; [@option]
  endpoint : string prop option; [@option]
  http_method : string prop option; [@option]
  target_role_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : configuration__https_notification_configuration) -> ()

let yojson_of_configuration__https_notification_configuration =
  (function
   | {
       authorization_api_key_name = v_authorization_api_key_name;
       authorization_api_key_value = v_authorization_api_key_value;
       endpoint = v_endpoint;
       http_method = v_http_method;
       target_role_arn = v_target_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_target_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authorization_api_key_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authorization_api_key_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authorization_api_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authorization_api_key_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration__https_notification_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__https_notification_configuration

[@@@deriving.end]

type configuration__sqs_notification_configuration = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__sqs_notification_configuration) -> ()

let yojson_of_configuration__sqs_notification_configuration =
  (yojson_of_unit
    : configuration__sqs_notification_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__sqs_notification_configuration

[@@@deriving.end]

type configuration = {
  https_notification_configuration :
    configuration__https_notification_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  sqs_notification_configuration :
    configuration__sqs_notification_configuration list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration) -> ()

let yojson_of_configuration =
  (function
   | {
       https_notification_configuration =
         v_https_notification_configuration;
       sqs_notification_configuration =
         v_sqs_notification_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_sqs_notification_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__sqs_notification_configuration)
               v_sqs_notification_configuration
           in
           let bnd = "sqs_notification_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_https_notification_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__https_notification_configuration)
               v_https_notification_configuration
           in
           let bnd = "https_notification_configuration", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration

[@@@deriving.end]

type aws_securitylake_subscriber_notification = {
  subscriber_id : string prop;
  configuration : configuration list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_securitylake_subscriber_notification) -> ()

let yojson_of_aws_securitylake_subscriber_notification =
  (function
   | {
       subscriber_id = v_subscriber_id;
       configuration = v_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_configuration) v_configuration
           in
           let bnd = "configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subscriber_id in
         ("subscriber_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_securitylake_subscriber_notification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_securitylake_subscriber_notification

[@@@deriving.end]

let configuration__https_notification_configuration
    ?authorization_api_key_name ?authorization_api_key_value
    ?endpoint ?http_method ?target_role_arn () :
    configuration__https_notification_configuration =
  {
    authorization_api_key_name;
    authorization_api_key_value;
    endpoint;
    http_method;
    target_role_arn;
  }

let configuration__sqs_notification_configuration () = ()

let configuration ?(https_notification_configuration = [])
    ?(sqs_notification_configuration = []) () : configuration =
  {
    https_notification_configuration;
    sqs_notification_configuration;
  }

let aws_securitylake_subscriber_notification ?(configuration = [])
    ~subscriber_id () : aws_securitylake_subscriber_notification =
  { subscriber_id; configuration }

type t = {
  tf_name : string;
  endpoint_id : string prop;
  id : string prop;
  subscriber_id : string prop;
}

let make ?(configuration = []) ~subscriber_id __id =
  let __type = "aws_securitylake_subscriber_notification" in
  let __attrs =
    ({
       tf_name = __id;
       endpoint_id = Prop.computed __type __id "endpoint_id";
       id = Prop.computed __type __id "id";
       subscriber_id = Prop.computed __type __id "subscriber_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_securitylake_subscriber_notification
        (aws_securitylake_subscriber_notification ~configuration
           ~subscriber_id ());
    attrs = __attrs;
  }

let register ?tf_module ?(configuration = []) ~subscriber_id __id =
  let (r : _ Tf_core.resource) =
    make ~configuration ~subscriber_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
