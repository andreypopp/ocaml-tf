(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type protocol__nfs__mount_options = {
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** protocol__nfs__mount_options *)

type protocol__nfs = {
  mount_options : protocol__nfs__mount_options list;
}
[@@deriving yojson_of]
(** protocol__nfs *)

type protocol__smb__mount_options = {
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** protocol__smb__mount_options *)

type protocol__smb = {
  domain : string prop option; [@option]  (** domain *)
  password : string prop;  (** password *)
  user : string prop;  (** user *)
  mount_options : protocol__smb__mount_options list;
}
[@@deriving yojson_of]
(** protocol__smb *)

type protocol = {
  nfs : protocol__nfs list;
  smb : protocol__smb list;
}
[@@deriving yojson_of]
(** protocol *)

type aws_datasync_location_fsx_ontap_file_system = {
  id : string prop option; [@option]  (** id *)
  security_group_arns : string prop list;  (** security_group_arns *)
  storage_virtual_machine_arn : string prop;
      (** storage_virtual_machine_arn *)
  subdirectory : string prop option; [@option]  (** subdirectory *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  protocol : protocol list;
}
[@@deriving yojson_of]
(** aws_datasync_location_fsx_ontap_file_system *)

let protocol__nfs__mount_options ?version () :
    protocol__nfs__mount_options =
  { version }

let protocol__nfs ~mount_options () : protocol__nfs =
  { mount_options }

let protocol__smb__mount_options ?version () :
    protocol__smb__mount_options =
  { version }

let protocol__smb ?domain ~password ~user ~mount_options () :
    protocol__smb =
  { domain; password; user; mount_options }

let protocol ~nfs ~smb () : protocol = { nfs; smb }

let aws_datasync_location_fsx_ontap_file_system ?id ?subdirectory
    ?tags ?tags_all ~security_group_arns ~storage_virtual_machine_arn
    ~protocol () : aws_datasync_location_fsx_ontap_file_system =
  {
    id;
    security_group_arns;
    storage_virtual_machine_arn;
    subdirectory;
    tags;
    tags_all;
    protocol;
  }

type t = {
  arn : string prop;
  creation_time : string prop;
  fsx_filesystem_arn : string prop;
  id : string prop;
  security_group_arns : string list prop;
  storage_virtual_machine_arn : string prop;
  subdirectory : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uri : string prop;
}

let make ?id ?subdirectory ?tags ?tags_all ~security_group_arns
    ~storage_virtual_machine_arn ~protocol __id =
  let __type = "aws_datasync_location_fsx_ontap_file_system" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       creation_time = Prop.computed __type __id "creation_time";
       fsx_filesystem_arn =
         Prop.computed __type __id "fsx_filesystem_arn";
       id = Prop.computed __type __id "id";
       security_group_arns =
         Prop.computed __type __id "security_group_arns";
       storage_virtual_machine_arn =
         Prop.computed __type __id "storage_virtual_machine_arn";
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
      yojson_of_aws_datasync_location_fsx_ontap_file_system
        (aws_datasync_location_fsx_ontap_file_system ?id
           ?subdirectory ?tags ?tags_all ~security_group_arns
           ~storage_virtual_machine_arn ~protocol ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?subdirectory ?tags ?tags_all
    ~security_group_arns ~storage_virtual_machine_arn ~protocol __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?subdirectory ?tags ?tags_all ~security_group_arns
      ~storage_virtual_machine_arn ~protocol __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
