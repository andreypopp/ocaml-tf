(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_datasync_location_fsx_windows_file_system = {
  domain : string prop option; [@option]  (** domain *)
  fsx_filesystem_arn : string prop;  (** fsx_filesystem_arn *)
  id : string prop option; [@option]  (** id *)
  password : string prop;  (** password *)
  security_group_arns : string prop list;  (** security_group_arns *)
  subdirectory : string prop option; [@option]  (** subdirectory *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  user : string prop;  (** user *)
}
[@@deriving yojson_of]
(** aws_datasync_location_fsx_windows_file_system *)

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
