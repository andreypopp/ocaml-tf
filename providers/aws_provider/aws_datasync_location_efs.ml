(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_datasync_location_efs__ec2_config = {
  security_group_arns : string list;  (** security_group_arns *)
  subnet_arn : string;  (** subnet_arn *)
}
[@@deriving yojson_of]
(** aws_datasync_location_efs__ec2_config *)

type aws_datasync_location_efs = {
  access_point_arn : string option; [@option]
      (** access_point_arn *)
  efs_file_system_arn : string;  (** efs_file_system_arn *)
  file_system_access_role_arn : string option; [@option]
      (** file_system_access_role_arn *)
  in_transit_encryption : string option; [@option]
      (** in_transit_encryption *)
  subdirectory : string option; [@option]  (** subdirectory *)
  tags : (string * string) list option; [@option]  (** tags *)
  ec2_config : aws_datasync_location_efs__ec2_config list;
}
[@@deriving yojson_of]
(** aws_datasync_location_efs *)

let aws_datasync_location_efs ?access_point_arn
    ?file_system_access_role_arn ?in_transit_encryption ?subdirectory
    ?tags ~efs_file_system_arn ~ec2_config __resource_id =
  let __resource_type = "aws_datasync_location_efs" in
  let __resource =
    {
      access_point_arn;
      efs_file_system_arn;
      file_system_access_role_arn;
      in_transit_encryption;
      subdirectory;
      tags;
      ec2_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_location_efs __resource);
  ()
