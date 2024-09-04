(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type credential__api_key_credential = { api_key : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : credential__api_key_credential) -> ()

let yojson_of_credential__api_key_credential =
  (function
   | { api_key = v_api_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_key in
         ("api_key", arg) :: bnds
       in
       `Assoc bnds
    : credential__api_key_credential ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_credential__api_key_credential

[@@@deriving.end]

type credential__oauth2_credential = {
  client_id : string prop;
  client_secret : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : credential__oauth2_credential) -> ()

let yojson_of_credential__oauth2_credential =
  (function
   | { client_id = v_client_id; client_secret = v_client_secret } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_secret in
         ("client_secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : credential__oauth2_credential ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_credential__oauth2_credential

[@@@deriving.end]

type credential = {
  api_key_credential : credential__api_key_credential list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  oauth2_credential : credential__oauth2_credential list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : credential) -> ()

let yojson_of_credential =
  (function
   | {
       api_key_credential = v_api_key_credential;
       oauth2_credential = v_oauth2_credential;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_oauth2_credential then bnds
         else
           let arg =
             (yojson_of_list yojson_of_credential__oauth2_credential)
               v_oauth2_credential
           in
           let bnd = "oauth2_credential", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_api_key_credential then bnds
         else
           let arg =
             (yojson_of_list yojson_of_credential__api_key_credential)
               v_api_key_credential
           in
           let bnd = "api_key_credential", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : credential -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_credential

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

type aws_appfabric_app_authorization = {
  app : string prop;
  app_bundle_arn : string prop;
  auth_type : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  credential : credential list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tenant : tenant list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appfabric_app_authorization) -> ()

let yojson_of_aws_appfabric_app_authorization =
  (function
   | {
       app = v_app;
       app_bundle_arn = v_app_bundle_arn;
       auth_type = v_auth_type;
       tags = v_tags;
       credential = v_credential;
       tenant = v_tenant;
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
         if Stdlib.( = ) [] v_tenant then bnds
         else
           let arg = (yojson_of_list yojson_of_tenant) v_tenant in
           let bnd = "tenant", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_credential then bnds
         else
           let arg =
             (yojson_of_list yojson_of_credential) v_credential
           in
           let bnd = "credential", arg in
           bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_auth_type in
         ("auth_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_bundle_arn
         in
         ("app_bundle_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app in
         ("app", arg) :: bnds
       in
       `Assoc bnds
    : aws_appfabric_app_authorization ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appfabric_app_authorization

[@@@deriving.end]

let credential__api_key_credential ~api_key () :
    credential__api_key_credential =
  { api_key }

let credential__oauth2_credential ~client_id ~client_secret () :
    credential__oauth2_credential =
  { client_id; client_secret }

let credential ?(api_key_credential = []) ?(oauth2_credential = [])
    () : credential =
  { api_key_credential; oauth2_credential }

let tenant ~tenant_display_name ~tenant_identifier () : tenant =
  { tenant_display_name; tenant_identifier }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_appfabric_app_authorization ?tags ?(credential = [])
    ?(tenant = []) ?timeouts ~app ~app_bundle_arn ~auth_type () :
    aws_appfabric_app_authorization =
  {
    app;
    app_bundle_arn;
    auth_type;
    tags;
    credential;
    tenant;
    timeouts;
  }

type t = {
  tf_name : string;
  app : string prop;
  app_bundle_arn : string prop;
  arn : string prop;
  auth_type : string prop;
  auth_url : string prop;
  created_at : string prop;
  id : string prop;
  persona : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  updated_at : string prop;
}

let make ?tags ?(credential = []) ?(tenant = []) ?timeouts ~app
    ~app_bundle_arn ~auth_type __id =
  let __type = "aws_appfabric_app_authorization" in
  let __attrs =
    ({
       tf_name = __id;
       app = Prop.computed __type __id "app";
       app_bundle_arn = Prop.computed __type __id "app_bundle_arn";
       arn = Prop.computed __type __id "arn";
       auth_type = Prop.computed __type __id "auth_type";
       auth_url = Prop.computed __type __id "auth_url";
       created_at = Prop.computed __type __id "created_at";
       id = Prop.computed __type __id "id";
       persona = Prop.computed __type __id "persona";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       updated_at = Prop.computed __type __id "updated_at";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appfabric_app_authorization
        (aws_appfabric_app_authorization ?tags ~credential ~tenant
           ?timeouts ~app ~app_bundle_arn ~auth_type ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ?(credential = []) ?(tenant = [])
    ?timeouts ~app ~app_bundle_arn ~auth_type __id =
  let (r : _ Tf_core.resource) =
    make ?tags ~credential ~tenant ?timeouts ~app ~app_bundle_arn
      ~auth_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
