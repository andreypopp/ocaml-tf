(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_datasync_location_fsx_windows_file_system = {
  domain : string prop option; [@option]
  fsx_filesystem_arn : string prop;
  id : string prop option; [@option]
  password : string prop;
  security_group_arns : string prop list;
  subdirectory : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  user : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_datasync_location_fsx_windows_file_system) -> ()

let yojson_of_aws_datasync_location_fsx_windows_file_system =
  (function
   | {
       domain = v_domain;
       fsx_filesystem_arn = v_fsx_filesystem_arn;
       id = v_id;
       password = v_password;
       security_group_arns = v_security_group_arns;
       subdirectory = v_subdirectory;
       tags = v_tags;
       tags_all = v_tags_all;
       user = v_user;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user in
         ("user", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
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
       let bnds =
         match v_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_datasync_location_fsx_windows_file_system ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_datasync_location_fsx_windows_file_system

[@@@deriving.end]

let aws_datasync_location_fsx_windows_file_system ?domain ?id
    ?subdirectory ?tags ?tags_all ~fsx_filesystem_arn ~password
    ~security_group_arns ~user () :
    aws_datasync_location_fsx_windows_file_system =
  {
    domain;
    fsx_filesystem_arn;
    id;
    password;
    security_group_arns;
    subdirectory;
    tags;
    tags_all;
    user;
  }

type t = {
  arn : string prop;
  creation_time : string prop;
  domain : string prop;
  fsx_filesystem_arn : string prop;
  id : string prop;
  password : string prop;
  security_group_arns : string list prop;
  subdirectory : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uri : string prop;
  user : string prop;
}

let make ?domain ?id ?subdirectory ?tags ?tags_all
    ~fsx_filesystem_arn ~password ~security_group_arns ~user __id =
  let __type = "aws_datasync_location_fsx_windows_file_system" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       creation_time = Prop.computed __type __id "creation_time";
       domain = Prop.computed __type __id "domain";
       fsx_filesystem_arn =
         Prop.computed __type __id "fsx_filesystem_arn";
       id = Prop.computed __type __id "id";
       password = Prop.computed __type __id "password";
       security_group_arns =
         Prop.computed __type __id "security_group_arns";
       subdirectory = Prop.computed __type __id "subdirectory";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       uri = Prop.computed __type __id "uri";
       user = Prop.computed __type __id "user";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_datasync_location_fsx_windows_file_system
        (aws_datasync_location_fsx_windows_file_system ?domain ?id
           ?subdirectory ?tags ?tags_all ~fsx_filesystem_arn
           ~password ~security_group_arns ~user ());
    attrs = __attrs;
  }

let register ?tf_module ?domain ?id ?subdirectory ?tags ?tags_all
    ~fsx_filesystem_arn ~password ~security_group_arns ~user __id =
  let (r : _ Tf_core.resource) =
    make ?domain ?id ?subdirectory ?tags ?tags_all
      ~fsx_filesystem_arn ~password ~security_group_arns ~user __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
