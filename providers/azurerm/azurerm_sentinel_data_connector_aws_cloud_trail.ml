(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type azurerm_sentinel_data_connector_aws_cloud_trail = {
  aws_role_arn : string prop;
  id : string prop option; [@option]
  log_analytics_workspace_id : string prop;
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_sentinel_data_connector_aws_cloud_trail) -> ()

let yojson_of_azurerm_sentinel_data_connector_aws_cloud_trail =
  (function
   | {
       aws_role_arn = v_aws_role_arn;
       id = v_id;
       log_analytics_workspace_id = v_log_analytics_workspace_id;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_log_analytics_workspace_id
         in
         ("log_analytics_workspace_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_aws_role_arn in
         ("aws_role_arn", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_sentinel_data_connector_aws_cloud_trail ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_sentinel_data_connector_aws_cloud_trail

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sentinel_data_connector_aws_cloud_trail ?id ?timeouts
    ~aws_role_arn ~log_analytics_workspace_id ~name () :
    azurerm_sentinel_data_connector_aws_cloud_trail =
  { aws_role_arn; id; log_analytics_workspace_id; name; timeouts }

type t = {
  tf_name : string;
  aws_role_arn : string prop;
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
}

let make ?id ?timeouts ~aws_role_arn ~log_analytics_workspace_id
    ~name __id =
  let __type = "azurerm_sentinel_data_connector_aws_cloud_trail" in
  let __attrs =
    ({
       tf_name = __id;
       aws_role_arn = Prop.computed __type __id "aws_role_arn";
       id = Prop.computed __type __id "id";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_data_connector_aws_cloud_trail
        (azurerm_sentinel_data_connector_aws_cloud_trail ?id
           ?timeouts ~aws_role_arn ~log_analytics_workspace_id ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~aws_role_arn
    ~log_analytics_workspace_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~aws_role_arn ~log_analytics_workspace_id
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
