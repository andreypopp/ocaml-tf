(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_prometheus_alert_manager_definition = {
  definition : string prop;
  id : string prop option; [@option]
  workspace_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_prometheus_alert_manager_definition) -> ()

let yojson_of_aws_prometheus_alert_manager_definition =
  (function
   | {
       definition = v_definition;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_definition in
         ("definition", arg) :: bnds
       in
       `Assoc bnds
    : aws_prometheus_alert_manager_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_prometheus_alert_manager_definition

[@@@deriving.end]

let aws_prometheus_alert_manager_definition ?id ~definition
    ~workspace_id () : aws_prometheus_alert_manager_definition =
  { definition; id; workspace_id }

type t = {
  tf_name : string;
  definition : string prop;
  id : string prop;
  workspace_id : string prop;
}

let make ?id ~definition ~workspace_id __id =
  let __type = "aws_prometheus_alert_manager_definition" in
  let __attrs =
    ({
       tf_name = __id;
       definition = Prop.computed __type __id "definition";
       id = Prop.computed __type __id "id";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_prometheus_alert_manager_definition
        (aws_prometheus_alert_manager_definition ?id ~definition
           ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~definition ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~definition ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
