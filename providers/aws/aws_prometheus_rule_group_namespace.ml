(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_prometheus_rule_group_namespace = {
  data : string prop;
  id : string prop option; [@option]
  name : string prop;
  workspace_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_prometheus_rule_group_namespace) -> ()

let yojson_of_aws_prometheus_rule_group_namespace =
  (function
   | {
       data = v_data;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_data in
         ("data", arg) :: bnds
       in
       `Assoc bnds
    : aws_prometheus_rule_group_namespace ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_prometheus_rule_group_namespace

[@@@deriving.end]

let aws_prometheus_rule_group_namespace ?id ~data ~name ~workspace_id
    () : aws_prometheus_rule_group_namespace =
  { data; id; name; workspace_id }

type t = {
  tf_name : string;
  data : string prop;
  id : string prop;
  name : string prop;
  workspace_id : string prop;
}

let make ?id ~data ~name ~workspace_id __id =
  let __type = "aws_prometheus_rule_group_namespace" in
  let __attrs =
    ({
       tf_name = __id;
       data = Prop.computed __type __id "data";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_prometheus_rule_group_namespace
        (aws_prometheus_rule_group_namespace ?id ~data ~name
           ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~data ~name ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~data ~name ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
