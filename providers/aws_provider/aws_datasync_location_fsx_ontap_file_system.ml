(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_datasync_location_fsx_ontap_file_system__protocol__nfs__mount_options = {
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** aws_datasync_location_fsx_ontap_file_system__protocol__nfs__mount_options *)

type aws_datasync_location_fsx_ontap_file_system__protocol__nfs = {
  mount_options :
    aws_datasync_location_fsx_ontap_file_system__protocol__nfs__mount_options
    list;
}
[@@deriving yojson_of]
(** aws_datasync_location_fsx_ontap_file_system__protocol__nfs *)

type aws_datasync_location_fsx_ontap_file_system__protocol__smb__mount_options = {
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** aws_datasync_location_fsx_ontap_file_system__protocol__smb__mount_options *)

type aws_datasync_location_fsx_ontap_file_system__protocol__smb = {
  domain : string prop option; [@option]  (** domain *)
  password : string prop;  (** password *)
  user : string prop;  (** user *)
  mount_options :
    aws_datasync_location_fsx_ontap_file_system__protocol__smb__mount_options
    list;
}
[@@deriving yojson_of]
(** aws_datasync_location_fsx_ontap_file_system__protocol__smb *)

type aws_datasync_location_fsx_ontap_file_system__protocol = {
  nfs :
    aws_datasync_location_fsx_ontap_file_system__protocol__nfs list;
  smb :
    aws_datasync_location_fsx_ontap_file_system__protocol__smb list;
}
[@@deriving yojson_of]
(** aws_datasync_location_fsx_ontap_file_system__protocol *)

type aws_datasync_location_fsx_ontap_file_system = {
  id : string prop option; [@option]  (** id *)
  security_group_arns : string prop list;  (** security_group_arns *)
  storage_virtual_machine_arn : string prop;
      (** storage_virtual_machine_arn *)
  subdirectory : string prop option; [@option]  (** subdirectory *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  protocol :
    aws_datasync_location_fsx_ontap_file_system__protocol list;
}
[@@deriving yojson_of]
(** aws_datasync_location_fsx_ontap_file_system *)

let aws_datasync_location_fsx_ontap_file_system ?id ?subdirectory
    ?tags ?tags_all ~security_group_arns ~storage_virtual_machine_arn
    ~protocol __resource_id =
  let __resource_type =
    "aws_datasync_location_fsx_ontap_file_system"
  in
  let __resource =
    {
      id;
      security_group_arns;
      storage_virtual_machine_arn;
      subdirectory;
      tags;
      tags_all;
      protocol;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_location_fsx_ontap_file_system __resource);
  ()
