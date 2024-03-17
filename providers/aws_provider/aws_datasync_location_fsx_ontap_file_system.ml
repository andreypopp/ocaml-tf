(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_datasync_location_fsx_ontap_file_system__protocol__nfs__mount_options = {
  version : string option; [@option]  (** version *)
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
  version : string option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** aws_datasync_location_fsx_ontap_file_system__protocol__smb__mount_options *)

type aws_datasync_location_fsx_ontap_file_system__protocol__smb = {
  domain : string option; [@option]  (** domain *)
  password : string;  (** password *)
  user : string;  (** user *)
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
  security_group_arns : string list;  (** security_group_arns *)
  storage_virtual_machine_arn : string;
      (** storage_virtual_machine_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  protocol :
    aws_datasync_location_fsx_ontap_file_system__protocol list;
}
[@@deriving yojson_of]
(** aws_datasync_location_fsx_ontap_file_system *)

let aws_datasync_location_fsx_ontap_file_system ?tags
    ~security_group_arns ~storage_virtual_machine_arn ~protocol
    __resource_id =
  let __resource_type =
    "aws_datasync_location_fsx_ontap_file_system"
  in
  let __resource =
    {
      security_group_arns;
      storage_virtual_machine_arn;
      tags;
      protocol;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_location_fsx_ontap_file_system __resource);
  ()
