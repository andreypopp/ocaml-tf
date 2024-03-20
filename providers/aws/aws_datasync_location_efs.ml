(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ec2_config = {
  security_group_arns : string prop list;  (** security_group_arns *)
  subnet_arn : string prop;  (** subnet_arn *)
}
[@@deriving yojson_of]
(** ec2_config *)

type aws_datasync_location_efs = {
  access_point_arn : string prop option; [@option]
      (** access_point_arn *)
  efs_file_system_arn : string prop;  (** efs_file_system_arn *)
  file_system_access_role_arn : string prop option; [@option]
      (** file_system_access_role_arn *)
  id : string prop option; [@option]  (** id *)
  in_transit_encryption : string prop option; [@option]
      (** in_transit_encryption *)
  subdirectory : string prop option; [@option]  (** subdirectory *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  ec2_config : ec2_config list;
}
[@@deriving yojson_of]
(** aws_datasync_location_efs *)

let ec2_config ~security_group_arns ~subnet_arn () : ec2_config =
  { security_group_arns; subnet_arn }

let aws_datasync_location_efs ?access_point_arn
    ?file_system_access_role_arn ?id ?in_transit_encryption
    ?subdirectory ?tags ?tags_all ~efs_file_system_arn ~ec2_config ()
    : aws_datasync_location_efs =
  {
    access_point_arn;
    efs_file_system_arn;
    file_system_access_role_arn;
    id;
    in_transit_encryption;
    subdirectory;
    tags;
    tags_all;
    ec2_config;
  }

type t = {
  access_point_arn : string prop;
  arn : string prop;
  efs_file_system_arn : string prop;
  file_system_access_role_arn : string prop;
  id : string prop;
  in_transit_encryption : string prop;
  subdirectory : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uri : string prop;
}

let make ?access_point_arn ?file_system_access_role_arn ?id
    ?in_transit_encryption ?subdirectory ?tags ?tags_all
    ~efs_file_system_arn ~ec2_config __id =
  let __type = "aws_datasync_location_efs" in
  let __attrs =
    ({
       access_point_arn =
         Prop.computed __type __id "access_point_arn";
       arn = Prop.computed __type __id "arn";
       efs_file_system_arn =
         Prop.computed __type __id "efs_file_system_arn";
       file_system_access_role_arn =
         Prop.computed __type __id "file_system_access_role_arn";
       id = Prop.computed __type __id "id";
       in_transit_encryption =
         Prop.computed __type __id "in_transit_encryption";
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
      yojson_of_aws_datasync_location_efs
        (aws_datasync_location_efs ?access_point_arn
           ?file_system_access_role_arn ?id ?in_transit_encryption
           ?subdirectory ?tags ?tags_all ~efs_file_system_arn
           ~ec2_config ());
    attrs = __attrs;
  }

let register ?tf_module ?access_point_arn
    ?file_system_access_role_arn ?id ?in_transit_encryption
    ?subdirectory ?tags ?tags_all ~efs_file_system_arn ~ec2_config
    __id =
  let (r : _ Tf_core.resource) =
    make ?access_point_arn ?file_system_access_role_arn ?id
      ?in_transit_encryption ?subdirectory ?tags ?tags_all
      ~efs_file_system_arn ~ec2_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
