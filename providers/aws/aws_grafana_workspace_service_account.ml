(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_grafana_workspace_service_account = {
  grafana_role : string prop;
  name : string prop;
  workspace_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_grafana_workspace_service_account) -> ()

let yojson_of_aws_grafana_workspace_service_account =
  (function
   | {
       grafana_role = v_grafana_role;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_grafana_role in
         ("grafana_role", arg) :: bnds
       in
       `Assoc bnds
    : aws_grafana_workspace_service_account ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_grafana_workspace_service_account

[@@@deriving.end]

let aws_grafana_workspace_service_account ~grafana_role ~name
    ~workspace_id () : aws_grafana_workspace_service_account =
  { grafana_role; name; workspace_id }

type t = {
  tf_name : string;
  grafana_role : string prop;
  id : string prop;
  name : string prop;
  service_account_id : string prop;
  workspace_id : string prop;
}

let make ~grafana_role ~name ~workspace_id __id =
  let __type = "aws_grafana_workspace_service_account" in
  let __attrs =
    ({
       tf_name = __id;
       grafana_role = Prop.computed __type __id "grafana_role";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       service_account_id =
         Prop.computed __type __id "service_account_id";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_grafana_workspace_service_account
        (aws_grafana_workspace_service_account ~grafana_role ~name
           ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ~grafana_role ~name ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ~grafana_role ~name ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
