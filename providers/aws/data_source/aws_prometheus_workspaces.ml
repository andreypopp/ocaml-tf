(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_prometheus_workspaces = {
  alias_prefix : string prop option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_prometheus_workspaces) -> ()

let yojson_of_aws_prometheus_workspaces =
  (function
   | { alias_prefix = v_alias_prefix; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_alias_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alias_prefix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_prometheus_workspaces -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_prometheus_workspaces

[@@@deriving.end]

let aws_prometheus_workspaces ?alias_prefix ?id () :
    aws_prometheus_workspaces =
  { alias_prefix; id }

type t = {
  tf_name : string;
  alias_prefix : string prop;
  aliases : string list prop;
  arns : string list prop;
  id : string prop;
  workspace_ids : string list prop;
}

let make ?alias_prefix ?id __id =
  let __type = "aws_prometheus_workspaces" in
  let __attrs =
    ({
       tf_name = __id;
       alias_prefix = Prop.computed __type __id "alias_prefix";
       aliases = Prop.computed __type __id "aliases";
       arns = Prop.computed __type __id "arns";
       id = Prop.computed __type __id "id";
       workspace_ids = Prop.computed __type __id "workspace_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_prometheus_workspaces
        (aws_prometheus_workspaces ?alias_prefix ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?alias_prefix ?id __id =
  let (r : _ Tf_core.resource) = make ?alias_prefix ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
