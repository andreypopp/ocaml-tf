(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_grafana_workspace_service_account_token = {
  name : string prop;
  seconds_to_live : float prop;
  service_account_id : string prop;
  workspace_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_grafana_workspace_service_account_token) -> ()

let yojson_of_aws_grafana_workspace_service_account_token =
  (function
   | {
       name = v_name;
       seconds_to_live = v_seconds_to_live;
       service_account_id = v_service_account_id;
       workspace_id = v_workspace_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workspace_id in
         ("workspace_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_account_id
         in
         ("service_account_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_seconds_to_live
         in
         ("seconds_to_live", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : aws_grafana_workspace_service_account_token ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_grafana_workspace_service_account_token

[@@@deriving.end]

let aws_grafana_workspace_service_account_token ~name
    ~seconds_to_live ~service_account_id ~workspace_id () :
    aws_grafana_workspace_service_account_token =
  { name; seconds_to_live; service_account_id; workspace_id }

type t = {
  tf_name : string;
  created_at : string prop;
  expires_at : string prop;
  id : string prop;
  key : string prop;
  name : string prop;
  seconds_to_live : float prop;
  service_account_id : string prop;
  service_account_token_id : string prop;
  workspace_id : string prop;
}

let make ~name ~seconds_to_live ~service_account_id ~workspace_id
    __id =
  let __type = "aws_grafana_workspace_service_account_token" in
  let __attrs =
    ({
       tf_name = __id;
       created_at = Prop.computed __type __id "created_at";
       expires_at = Prop.computed __type __id "expires_at";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       name = Prop.computed __type __id "name";
       seconds_to_live = Prop.computed __type __id "seconds_to_live";
       service_account_id =
         Prop.computed __type __id "service_account_id";
       service_account_token_id =
         Prop.computed __type __id "service_account_token_id";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_grafana_workspace_service_account_token
        (aws_grafana_workspace_service_account_token ~name
           ~seconds_to_live ~service_account_id ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ~name ~seconds_to_live ~service_account_id
    ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ~name ~seconds_to_live ~service_account_id ~workspace_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
