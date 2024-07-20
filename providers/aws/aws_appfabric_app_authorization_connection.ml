(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auth_request = {
  code : string prop;
  redirect_uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_request) -> ()

let yojson_of_auth_request =
  (function
   | { code = v_code; redirect_uri = v_redirect_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_redirect_uri in
         ("redirect_uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_code in
         ("code", arg) :: bnds
       in
       `Assoc bnds
    : auth_request -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_request

[@@@deriving.end]

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type tenant = {
  tenant_display_name : string prop;
  tenant_identifier : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tenant) -> ()

let yojson_of_tenant =
  (function
   | {
       tenant_display_name = v_tenant_display_name;
       tenant_identifier = v_tenant_identifier;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_tenant_identifier
         in
         ("tenant_identifier", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_tenant_display_name
         in
         ("tenant_display_name", arg) :: bnds
       in
       `Assoc bnds
    : tenant -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tenant

[@@@deriving.end]

type aws_appfabric_app_authorization_connection = {
  app_authorization_arn : string prop;
  app_bundle_arn : string prop;
  auth_request : auth_request list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appfabric_app_authorization_connection) -> ()

let yojson_of_aws_appfabric_app_authorization_connection =
  (function
   | {
       app_authorization_arn = v_app_authorization_arn;
       app_bundle_arn = v_app_bundle_arn;
       auth_request = v_auth_request;
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
         if Stdlib.( = ) [] v_auth_request then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auth_request) v_auth_request
           in
           let bnd = "auth_request", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_bundle_arn
         in
         ("app_bundle_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_authorization_arn
         in
         ("app_authorization_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_appfabric_app_authorization_connection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appfabric_app_authorization_connection

[@@@deriving.end]

let auth_request ~code ~redirect_uri () : auth_request =
  { code; redirect_uri }

let timeouts ?create () : timeouts = { create }

let aws_appfabric_app_authorization_connection ?(auth_request = [])
    ?timeouts ~app_authorization_arn ~app_bundle_arn () :
    aws_appfabric_app_authorization_connection =
  { app_authorization_arn; app_bundle_arn; auth_request; timeouts }

type t = {
  tf_name : string;
  app : string prop;
  app_authorization_arn : string prop;
  app_bundle_arn : string prop;
  id : string prop;
  tenant : tenant list prop;
}

let make ?(auth_request = []) ?timeouts ~app_authorization_arn
    ~app_bundle_arn __id =
  let __type = "aws_appfabric_app_authorization_connection" in
  let __attrs =
    ({
       tf_name = __id;
       app = Prop.computed __type __id "app";
       app_authorization_arn =
         Prop.computed __type __id "app_authorization_arn";
       app_bundle_arn = Prop.computed __type __id "app_bundle_arn";
       id = Prop.computed __type __id "id";
       tenant = Prop.computed __type __id "tenant";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appfabric_app_authorization_connection
        (aws_appfabric_app_authorization_connection ~auth_request
           ?timeouts ~app_authorization_arn ~app_bundle_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?(auth_request = []) ?timeouts
    ~app_authorization_arn ~app_bundle_arn __id =
  let (r : _ Tf_core.resource) =
    make ~auth_request ?timeouts ~app_authorization_arn
      ~app_bundle_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
