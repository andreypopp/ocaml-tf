(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_efs_access_points = {
  file_system_id : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_efs_access_points) -> ()

let yojson_of_aws_efs_access_points =
  (function
   | { file_system_id = v_file_system_id; id = v_id } ->
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
         let arg =
           yojson_of_prop yojson_of_string v_file_system_id
         in
         ("file_system_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_efs_access_points -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_efs_access_points

[@@@deriving.end]

let aws_efs_access_points ?id ~file_system_id () :
    aws_efs_access_points =
  { file_system_id; id }

type t = {
  tf_name : string;
  arns : string list prop;
  file_system_id : string prop;
  id : string prop;
  ids : string list prop;
}

let make ?id ~file_system_id __id =
  let __type = "aws_efs_access_points" in
  let __attrs =
    ({
       tf_name = __id;
       arns = Prop.computed __type __id "arns";
       file_system_id = Prop.computed __type __id "file_system_id";
       id = Prop.computed __type __id "id";
       ids = Prop.computed __type __id "ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_efs_access_points
        (aws_efs_access_points ?id ~file_system_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~file_system_id __id =
  let (r : _ Tf_core.resource) = make ?id ~file_system_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
