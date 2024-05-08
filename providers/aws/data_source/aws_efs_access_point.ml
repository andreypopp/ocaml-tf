(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type posix_user = {
  gid : float prop;
  secondary_gids : float prop list;
      [@default []] [@yojson_drop_default ( = )]
  uid : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : posix_user) -> ()

let yojson_of_posix_user =
  (function
   | { gid = v_gid; secondary_gids = v_secondary_gids; uid = v_uid }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_uid in
         ("uid", arg) :: bnds
       in
       let bnds =
         if [] = v_secondary_gids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_float))
               v_secondary_gids
           in
           let bnd = "secondary_gids", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_gid in
         ("gid", arg) :: bnds
       in
       `Assoc bnds
    : posix_user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_posix_user

[@@@deriving.end]

type root_directory__creation_info = {
  owner_gid : float prop;
  owner_uid : float prop;
  permissions : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : root_directory__creation_info) -> ()

let yojson_of_root_directory__creation_info =
  (function
   | {
       owner_gid = v_owner_gid;
       owner_uid = v_owner_uid;
       permissions = v_permissions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_permissions in
         ("permissions", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_owner_uid in
         ("owner_uid", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_owner_gid in
         ("owner_gid", arg) :: bnds
       in
       `Assoc bnds
    : root_directory__creation_info ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_root_directory__creation_info

[@@@deriving.end]

type root_directory = {
  creation_info : root_directory__creation_info list;
      [@default []] [@yojson_drop_default ( = )]
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : root_directory) -> ()

let yojson_of_root_directory =
  (function
   | { creation_info = v_creation_info; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         if [] = v_creation_info then bnds
         else
           let arg =
             (yojson_of_list yojson_of_root_directory__creation_info)
               v_creation_info
           in
           let bnd = "creation_info", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : root_directory -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_root_directory

[@@@deriving.end]

type aws_efs_access_point = {
  access_point_id : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_efs_access_point) -> ()

let yojson_of_aws_efs_access_point =
  (function
   | {
       access_point_id = v_access_point_id;
       id = v_id;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_access_point_id
         in
         ("access_point_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_efs_access_point -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_efs_access_point

[@@@deriving.end]

let aws_efs_access_point ?id ?tags ~access_point_id () :
    aws_efs_access_point =
  { access_point_id; id; tags }

type t = {
  tf_name : string;
  access_point_id : string prop;
  arn : string prop;
  file_system_arn : string prop;
  file_system_id : string prop;
  id : string prop;
  owner_id : string prop;
  posix_user : posix_user list prop;
  root_directory : root_directory list prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ~access_point_id __id =
  let __type = "aws_efs_access_point" in
  let __attrs =
    ({
       tf_name = __id;
       access_point_id = Prop.computed __type __id "access_point_id";
       arn = Prop.computed __type __id "arn";
       file_system_arn = Prop.computed __type __id "file_system_arn";
       file_system_id = Prop.computed __type __id "file_system_id";
       id = Prop.computed __type __id "id";
       owner_id = Prop.computed __type __id "owner_id";
       posix_user = Prop.computed __type __id "posix_user";
       root_directory = Prop.computed __type __id "root_directory";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_efs_access_point
        (aws_efs_access_point ?id ?tags ~access_point_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~access_point_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~access_point_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
