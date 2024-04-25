(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type posix_user = {
  gid : float prop;
  secondary_gids : float prop list option; [@option]
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
         match v_secondary_gids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
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
  path : string prop option; [@option]
  creation_info : root_directory__creation_info list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : root_directory) -> ()

let yojson_of_root_directory =
  (function
   | { path = v_path; creation_info = v_creation_info } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_root_directory__creation_info
             v_creation_info
         in
         ("creation_info", arg) :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : root_directory -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_root_directory

[@@@deriving.end]

type aws_efs_access_point = {
  file_system_id : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  posix_user : posix_user list;
  root_directory : root_directory list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_efs_access_point) -> ()

let yojson_of_aws_efs_access_point =
  (function
   | {
       file_system_id = v_file_system_id;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       posix_user = v_posix_user;
       root_directory = v_root_directory;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_root_directory v_root_directory
         in
         ("root_directory", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_posix_user v_posix_user
         in
         ("posix_user", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
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
           yojson_of_prop yojson_of_string v_file_system_id
         in
         ("file_system_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_efs_access_point -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_efs_access_point

[@@@deriving.end]

let posix_user ?secondary_gids ~gid ~uid () : posix_user =
  { gid; secondary_gids; uid }

let root_directory__creation_info ~owner_gid ~owner_uid ~permissions
    () : root_directory__creation_info =
  { owner_gid; owner_uid; permissions }

let root_directory ?path ?(creation_info = []) () : root_directory =
  { path; creation_info }

let aws_efs_access_point ?id ?tags ?tags_all ?(posix_user = [])
    ?(root_directory = []) ~file_system_id () : aws_efs_access_point
    =
  { file_system_id; id; tags; tags_all; posix_user; root_directory }

type t = {
  arn : string prop;
  file_system_arn : string prop;
  file_system_id : string prop;
  id : string prop;
  owner_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?(posix_user = [])
    ?(root_directory = []) ~file_system_id __id =
  let __type = "aws_efs_access_point" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       file_system_arn = Prop.computed __type __id "file_system_arn";
       file_system_id = Prop.computed __type __id "file_system_id";
       id = Prop.computed __type __id "id";
       owner_id = Prop.computed __type __id "owner_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_efs_access_point
        (aws_efs_access_point ?id ?tags ?tags_all ~posix_user
           ~root_directory ~file_system_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?(posix_user = [])
    ?(root_directory = []) ~file_system_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~posix_user ~root_directory
      ~file_system_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
