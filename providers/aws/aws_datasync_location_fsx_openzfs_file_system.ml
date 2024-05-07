(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type protocol__nfs__mount_options = {
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : protocol__nfs__mount_options) -> ()

let yojson_of_protocol__nfs__mount_options =
  (function
   | { version = v_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : protocol__nfs__mount_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_protocol__nfs__mount_options

[@@@deriving.end]

type protocol__nfs = {
  mount_options : protocol__nfs__mount_options list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : protocol__nfs) -> ()

let yojson_of_protocol__nfs =
  (function
   | { mount_options = v_mount_options } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_protocol__nfs__mount_options
             v_mount_options
         in
         ("mount_options", arg) :: bnds
       in
       `Assoc bnds
    : protocol__nfs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_protocol__nfs

[@@@deriving.end]

type protocol = { nfs : protocol__nfs list }
[@@deriving_inline yojson_of]

let _ = fun (_ : protocol) -> ()

let yojson_of_protocol =
  (function
   | { nfs = v_nfs } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_protocol__nfs v_nfs in
         ("nfs", arg) :: bnds
       in
       `Assoc bnds
    : protocol -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_protocol

[@@@deriving.end]

type aws_datasync_location_fsx_openzfs_file_system = {
  fsx_filesystem_arn : string prop;
  id : string prop option; [@option]
  security_group_arns : string prop list;
  subdirectory : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  protocol : protocol list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_datasync_location_fsx_openzfs_file_system) -> ()

let yojson_of_aws_datasync_location_fsx_openzfs_file_system =
  (function
   | {
       fsx_filesystem_arn = v_fsx_filesystem_arn;
       id = v_id;
       security_group_arns = v_security_group_arns;
       subdirectory = v_subdirectory;
       tags = v_tags;
       tags_all = v_tags_all;
       protocol = v_protocol;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_protocol v_protocol in
         ("protocol", arg) :: bnds
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
         match v_subdirectory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subdirectory", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_security_group_arns
         in
         ("security_group_arns", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_fsx_filesystem_arn
         in
         ("fsx_filesystem_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_datasync_location_fsx_openzfs_file_system ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_datasync_location_fsx_openzfs_file_system

[@@@deriving.end]

let protocol__nfs__mount_options ?version () :
    protocol__nfs__mount_options =
  { version }

let protocol__nfs ~mount_options () : protocol__nfs =
  { mount_options }

let protocol ~nfs () : protocol = { nfs }

let aws_datasync_location_fsx_openzfs_file_system ?id ?subdirectory
    ?tags ?tags_all ~fsx_filesystem_arn ~security_group_arns
    ~protocol () : aws_datasync_location_fsx_openzfs_file_system =
  {
    fsx_filesystem_arn;
    id;
    security_group_arns;
    subdirectory;
    tags;
    tags_all;
    protocol;
  }

type t = {
  tf_name : string;
  arn : string prop;
  creation_time : string prop;
  fsx_filesystem_arn : string prop;
  id : string prop;
  security_group_arns : string list prop;
  subdirectory : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uri : string prop;
}

let make ?id ?subdirectory ?tags ?tags_all ~fsx_filesystem_arn
    ~security_group_arns ~protocol __id =
  let __type = "aws_datasync_location_fsx_openzfs_file_system" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       creation_time = Prop.computed __type __id "creation_time";
       fsx_filesystem_arn =
         Prop.computed __type __id "fsx_filesystem_arn";
       id = Prop.computed __type __id "id";
       security_group_arns =
         Prop.computed __type __id "security_group_arns";
       subdirectory = Prop.computed __type __id "subdirectory";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       uri = Prop.computed __type __id "uri";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_datasync_location_fsx_openzfs_file_system
        (aws_datasync_location_fsx_openzfs_file_system ?id
           ?subdirectory ?tags ?tags_all ~fsx_filesystem_arn
           ~security_group_arns ~protocol ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?subdirectory ?tags ?tags_all
    ~fsx_filesystem_arn ~security_group_arns ~protocol __id =
  let (r : _ Tf_core.resource) =
    make ?id ?subdirectory ?tags ?tags_all ~fsx_filesystem_arn
      ~security_group_arns ~protocol __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
