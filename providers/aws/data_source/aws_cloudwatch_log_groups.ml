(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_log_groups = {
  id : string prop option; [@option]
  log_group_name_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudwatch_log_groups) -> ()

let yojson_of_aws_cloudwatch_log_groups =
  (function
   | { id = v_id; log_group_name_prefix = v_log_group_name_prefix }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_group_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group_name_prefix", arg in
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
    : aws_cloudwatch_log_groups -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudwatch_log_groups

[@@@deriving.end]

let aws_cloudwatch_log_groups ?id ?log_group_name_prefix () :
    aws_cloudwatch_log_groups =
  { id; log_group_name_prefix }

type t = {
  arns : string list prop;
  id : string prop;
  log_group_name_prefix : string prop;
  log_group_names : string list prop;
}

let make ?id ?log_group_name_prefix __id =
  let __type = "aws_cloudwatch_log_groups" in
  let __attrs =
    ({
       arns = Prop.computed __type __id "arns";
       id = Prop.computed __type __id "id";
       log_group_name_prefix =
         Prop.computed __type __id "log_group_name_prefix";
       log_group_names = Prop.computed __type __id "log_group_names";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_log_groups
        (aws_cloudwatch_log_groups ?id ?log_group_name_prefix ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?log_group_name_prefix __id =
  let (r : _ Tf_core.resource) =
    make ?id ?log_group_name_prefix __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
