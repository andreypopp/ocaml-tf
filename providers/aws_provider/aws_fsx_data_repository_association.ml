(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_fsx_data_repository_association__s3__auto_export_policy = {
  events : string list option; [@option]  (** events *)
}
[@@deriving yojson_of]
(** aws_fsx_data_repository_association__s3__auto_export_policy *)

type aws_fsx_data_repository_association__s3__auto_import_policy = {
  events : string list option; [@option]  (** events *)
}
[@@deriving yojson_of]
(** aws_fsx_data_repository_association__s3__auto_import_policy *)

type aws_fsx_data_repository_association__s3 = {
  auto_export_policy :
    aws_fsx_data_repository_association__s3__auto_export_policy list;
  auto_import_policy :
    aws_fsx_data_repository_association__s3__auto_import_policy list;
}
[@@deriving yojson_of]
(** aws_fsx_data_repository_association__s3 *)

type aws_fsx_data_repository_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_fsx_data_repository_association__timeouts *)

type aws_fsx_data_repository_association = {
  batch_import_meta_data_on_create : bool option; [@option]
      (** batch_import_meta_data_on_create *)
  data_repository_path : string;  (** data_repository_path *)
  delete_data_in_filesystem : bool option; [@option]
      (** delete_data_in_filesystem *)
  file_system_id : string;  (** file_system_id *)
  file_system_path : string;  (** file_system_path *)
  id : string option; [@option]  (** id *)
  imported_file_chunk_size : float option; [@option]
      (** imported_file_chunk_size *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  s3 : aws_fsx_data_repository_association__s3 list;
  timeouts : aws_fsx_data_repository_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_data_repository_association *)

let aws_fsx_data_repository_association
    ?batch_import_meta_data_on_create ?delete_data_in_filesystem ?id
    ?imported_file_chunk_size ?tags ?tags_all ?timeouts
    ~data_repository_path ~file_system_id ~file_system_path ~s3
    __resource_id =
  let __resource_type = "aws_fsx_data_repository_association" in
  let __resource =
    {
      batch_import_meta_data_on_create;
      data_repository_path;
      delete_data_in_filesystem;
      file_system_id;
      file_system_path;
      id;
      imported_file_chunk_size;
      tags;
      tags_all;
      s3;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fsx_data_repository_association __resource);
  ()
