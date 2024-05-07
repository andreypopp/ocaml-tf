(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type backup_policy = { status : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : backup_policy) -> ()

let yojson_of_backup_policy =
  (function
   | { status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       `Assoc bnds
    : backup_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backup_policy

[@@@deriving.end]

type aws_efs_backup_policy = {
  file_system_id : string prop;
  id : string prop option; [@option]
  backup_policy : backup_policy list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_efs_backup_policy) -> ()

let yojson_of_aws_efs_backup_policy =
  (function
   | {
       file_system_id = v_file_system_id;
       id = v_id;
       backup_policy = v_backup_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_backup_policy v_backup_policy
         in
         ("backup_policy", arg) :: bnds
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
    : aws_efs_backup_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_efs_backup_policy

[@@@deriving.end]

let backup_policy ~status () : backup_policy = { status }

let aws_efs_backup_policy ?id ~file_system_id ~backup_policy () :
    aws_efs_backup_policy =
  { file_system_id; id; backup_policy }

type t = {
  tf_name : string;
  file_system_id : string prop;
  id : string prop;
}

let make ?id ~file_system_id ~backup_policy __id =
  let __type = "aws_efs_backup_policy" in
  let __attrs =
    ({
       tf_name = __id;
       file_system_id = Prop.computed __type __id "file_system_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_efs_backup_policy
        (aws_efs_backup_policy ?id ~file_system_id ~backup_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~file_system_id ~backup_policy __id =
  let (r : _ Tf_core.resource) =
    make ?id ~file_system_id ~backup_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
