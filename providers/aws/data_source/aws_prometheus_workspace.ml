(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_prometheus_workspace = {
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  workspace_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_prometheus_workspace) -> ()

let yojson_of_aws_prometheus_workspace =
  (function
   | { id = v_id; tags = v_tags; workspace_id = v_workspace_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workspace_id in
         ("workspace_id", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
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
    : aws_prometheus_workspace -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_prometheus_workspace

[@@@deriving.end]

let aws_prometheus_workspace ?id ?tags ~workspace_id () :
    aws_prometheus_workspace =
  { id; tags; workspace_id }

type t = {
  alias : string prop;
  arn : string prop;
  created_date : string prop;
  id : string prop;
  kms_key_arn : string prop;
  prometheus_endpoint : string prop;
  status : string prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
}

let make ?id ?tags ~workspace_id __id =
  let __type = "aws_prometheus_workspace" in
  let __attrs =
    ({
       alias = Prop.computed __type __id "alias";
       arn = Prop.computed __type __id "arn";
       created_date = Prop.computed __type __id "created_date";
       id = Prop.computed __type __id "id";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       prometheus_endpoint =
         Prop.computed __type __id "prometheus_endpoint";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_prometheus_workspace
        (aws_prometheus_workspace ?id ?tags ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~workspace_id __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~workspace_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
