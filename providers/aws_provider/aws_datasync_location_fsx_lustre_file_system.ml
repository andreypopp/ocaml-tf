(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let aws_datasync_location_fsx_lustre_file_system ?id ?subdirectory
    ?tags ?tags_all ~fsx_filesystem_arn ~security_group_arns
    __resource_id =
  let __resource_type =
    "aws_datasync_location_fsx_lustre_file_system"
  in
  let __resource =
    ({
       fsx_filesystem_arn;
       id;
       security_group_arns;
       subdirectory;
       tags;
       tags_all;
     }
      : aws_datasync_location_fsx_lustre_file_system)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_location_fsx_lustre_file_system
       __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       creation_time =
         Prop.computed __resource_type __resource_id "creation_time";
       fsx_filesystem_arn =
         Prop.computed __resource_type __resource_id
           "fsx_filesystem_arn";
       id = Prop.computed __resource_type __resource_id "id";
       security_group_arns =
         Prop.computed __resource_type __resource_id
           "security_group_arns";
       subdirectory =
         Prop.computed __resource_type __resource_id "subdirectory";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       uri = Prop.computed __resource_type __resource_id "uri";
     }
      : t)
  in
  __resource_attributes
