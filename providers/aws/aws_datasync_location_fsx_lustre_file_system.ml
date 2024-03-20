(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_datasync_location_fsx_lustre_file_system = {
  fsx_filesystem_arn : string prop;  (** fsx_filesystem_arn *)
  id : string prop option; [@option]  (** id *)
  security_group_arns : string prop list;  (** security_group_arns *)
  subdirectory : string prop option; [@option]  (** subdirectory *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_datasync_location_fsx_lustre_file_system *)

let aws_datasync_location_fsx_lustre_file_system ?id ?subdirectory
    ?tags ?tags_all ~fsx_filesystem_arn ~security_group_arns () :
    aws_datasync_location_fsx_lustre_file_system =
  {
    fsx_filesystem_arn;
    id;
    security_group_arns;
    subdirectory;
    tags;
    tags_all;
  }

type t = {
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
    ~security_group_arns __id =
  let __type = "aws_datasync_location_fsx_lustre_file_system" in
  let __attrs =
    ({
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
      yojson_of_aws_datasync_location_fsx_lustre_file_system
        (aws_datasync_location_fsx_lustre_file_system ?id
           ?subdirectory ?tags ?tags_all ~fsx_filesystem_arn
           ~security_group_arns ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?subdirectory ?tags ?tags_all
    ~fsx_filesystem_arn ~security_group_arns __id =
  let (r : _ Tf_core.resource) =
    make ?id ?subdirectory ?tags ?tags_all ~fsx_filesystem_arn
      ~security_group_arns __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
