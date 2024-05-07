(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_grafana_workspace_api_key = {
  id : string prop option; [@option]
  key_name : string prop;
  key_role : string prop;
  seconds_to_live : float prop;
  workspace_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_grafana_workspace_api_key) -> ()

let yojson_of_aws_grafana_workspace_api_key =
  (function
   | {
       id = v_id;
       key_name = v_key_name;
       key_role = v_key_role;
       seconds_to_live = v_seconds_to_live;
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
           yojson_of_prop yojson_of_float v_seconds_to_live
         in
         ("seconds_to_live", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_role in
         ("key_role", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_name in
         ("key_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_grafana_workspace_api_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_grafana_workspace_api_key

[@@@deriving.end]

let aws_grafana_workspace_api_key ?id ~key_name ~key_role
    ~seconds_to_live ~workspace_id () : aws_grafana_workspace_api_key
    =
  { id; key_name; key_role; seconds_to_live; workspace_id }

type t = {
  tf_name : string;
  id : string prop;
  key : string prop;
  key_name : string prop;
  key_role : string prop;
  seconds_to_live : float prop;
  workspace_id : string prop;
}

let make ?id ~key_name ~key_role ~seconds_to_live ~workspace_id __id
    =
  let __type = "aws_grafana_workspace_api_key" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       key_name = Prop.computed __type __id "key_name";
       key_role = Prop.computed __type __id "key_role";
       seconds_to_live = Prop.computed __type __id "seconds_to_live";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_grafana_workspace_api_key
        (aws_grafana_workspace_api_key ?id ~key_name ~key_role
           ~seconds_to_live ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~key_name ~key_role ~seconds_to_live
    ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~key_name ~key_role ~seconds_to_live ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
