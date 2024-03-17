(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_fsx_data_repository_association__s3__auto_export_policy = {
  events : string prop list option; [@option]  (** events *)
}
[@@deriving yojson_of]
(** aws_fsx_data_repository_association__s3__auto_export_policy *)

type aws_fsx_data_repository_association__s3__auto_import_policy = {
  events : string prop list option; [@option]  (** events *)
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
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_fsx_data_repository_association__timeouts *)

type aws_fsx_data_repository_association = {
  batch_import_meta_data_on_create : bool prop option; [@option]
      (** batch_import_meta_data_on_create *)
  data_repository_path : string prop;  (** data_repository_path *)
  delete_data_in_filesystem : bool prop option; [@option]
      (** delete_data_in_filesystem *)
  file_system_id : string prop;  (** file_system_id *)
  file_system_path : string prop;  (** file_system_path *)
  id : string prop option; [@option]  (** id *)
  imported_file_chunk_size : float prop option; [@option]
      (** imported_file_chunk_size *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  s3 : aws_fsx_data_repository_association__s3 list;
  timeouts : aws_fsx_data_repository_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_data_repository_association *)

type t = {
  arn : string prop;
  association_id : string prop;
  batch_import_meta_data_on_create : bool prop;
  data_repository_path : string prop;
  delete_data_in_filesystem : bool prop;
  file_system_id : string prop;
  file_system_path : string prop;
  id : string prop;
  imported_file_chunk_size : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_fsx_data_repository_association
    ?batch_import_meta_data_on_create ?delete_data_in_filesystem ?id
    ?imported_file_chunk_size ?tags ?tags_all ?timeouts
    ~data_repository_path ~file_system_id ~file_system_path ~s3
    __resource_id =
  let __resource_type = "aws_fsx_data_repository_association" in
  let __resource =
    ({
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
      : aws_fsx_data_repository_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fsx_data_repository_association __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       association_id =
         Prop.computed __resource_type __resource_id "association_id";
       batch_import_meta_data_on_create =
         Prop.computed __resource_type __resource_id
           "batch_import_meta_data_on_create";
       data_repository_path =
         Prop.computed __resource_type __resource_id
           "data_repository_path";
       delete_data_in_filesystem =
         Prop.computed __resource_type __resource_id
           "delete_data_in_filesystem";
       file_system_id =
         Prop.computed __resource_type __resource_id "file_system_id";
       file_system_path =
         Prop.computed __resource_type __resource_id
           "file_system_path";
       id = Prop.computed __resource_type __resource_id "id";
       imported_file_chunk_size =
         Prop.computed __resource_type __resource_id
           "imported_file_chunk_size";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
