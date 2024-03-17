(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ebs_snapshot_import__client_data = {
  comment : string prop option; [@option]  (** comment *)
  upload_end : string prop option; [@option]  (** upload_end *)
  upload_size : float prop option; [@option]  (** upload_size *)
  upload_start : string prop option; [@option]  (** upload_start *)
}
[@@deriving yojson_of]
(** aws_ebs_snapshot_import__client_data *)

type aws_ebs_snapshot_import__disk_container__user_bucket = {
  s3_bucket : string prop;  (** s3_bucket *)
  s3_key : string prop;  (** s3_key *)
}
[@@deriving yojson_of]
(** aws_ebs_snapshot_import__disk_container__user_bucket *)

type aws_ebs_snapshot_import__disk_container = {
  description : string prop option; [@option]  (** description *)
  format : string prop;  (** format *)
  url : string prop option; [@option]  (** url *)
  user_bucket :
    aws_ebs_snapshot_import__disk_container__user_bucket list;
}
[@@deriving yojson_of]
(** aws_ebs_snapshot_import__disk_container *)

type aws_ebs_snapshot_import__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ebs_snapshot_import__timeouts *)

type aws_ebs_snapshot_import = {
  description : string prop option; [@option]  (** description *)
  encrypted : bool prop option; [@option]  (** encrypted *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  permanent_restore : bool prop option; [@option]
      (** permanent_restore *)
  role_name : string prop option; [@option]  (** role_name *)
  storage_tier : string prop option; [@option]  (** storage_tier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  temporary_restore_days : float prop option; [@option]
      (** temporary_restore_days *)
  client_data : aws_ebs_snapshot_import__client_data list;
  disk_container : aws_ebs_snapshot_import__disk_container list;
  timeouts : aws_ebs_snapshot_import__timeouts option;
}
[@@deriving yojson_of]
(** aws_ebs_snapshot_import *)

let aws_ebs_snapshot_import ?description ?encrypted ?id ?kms_key_id
    ?permanent_restore ?role_name ?storage_tier ?tags ?tags_all
    ?temporary_restore_days ?timeouts ~client_data ~disk_container
    __resource_id =
  let __resource_type = "aws_ebs_snapshot_import" in
  let __resource =
    {
      description;
      encrypted;
      id;
      kms_key_id;
      permanent_restore;
      role_name;
      storage_tier;
      tags;
      tags_all;
      temporary_restore_days;
      client_data;
      disk_container;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ebs_snapshot_import __resource);
  ()
