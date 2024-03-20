(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type s3__auto_export_policy = {
  events : string prop list option; [@option]  (** events *)
}
[@@deriving yojson_of]
(** s3__auto_export_policy *)

type s3__auto_import_policy = {
  events : string prop list option; [@option]  (** events *)
}
[@@deriving yojson_of]
(** s3__auto_import_policy *)

type s3 = {
  auto_export_policy : s3__auto_export_policy list;
  auto_import_policy : s3__auto_import_policy list;
}
[@@deriving yojson_of]
(** s3 *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  s3 : s3 list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_fsx_data_repository_association *)

let s3__auto_export_policy ?events () : s3__auto_export_policy =
  { events }

let s3__auto_import_policy ?events () : s3__auto_import_policy =
  { events }

let s3 ~auto_export_policy ~auto_import_policy () : s3 =
  { auto_export_policy; auto_import_policy }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_fsx_data_repository_association
    ?batch_import_meta_data_on_create ?delete_data_in_filesystem ?id
    ?imported_file_chunk_size ?tags ?tags_all ?timeouts
    ~data_repository_path ~file_system_id ~file_system_path ~s3 () :
    aws_fsx_data_repository_association =
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

let make ?batch_import_meta_data_on_create ?delete_data_in_filesystem
    ?id ?imported_file_chunk_size ?tags ?tags_all ?timeouts
    ~data_repository_path ~file_system_id ~file_system_path ~s3 __id
    =
  let __type = "aws_fsx_data_repository_association" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       association_id = Prop.computed __type __id "association_id";
       batch_import_meta_data_on_create =
         Prop.computed __type __id "batch_import_meta_data_on_create";
       data_repository_path =
         Prop.computed __type __id "data_repository_path";
       delete_data_in_filesystem =
         Prop.computed __type __id "delete_data_in_filesystem";
       file_system_id = Prop.computed __type __id "file_system_id";
       file_system_path =
         Prop.computed __type __id "file_system_path";
       id = Prop.computed __type __id "id";
       imported_file_chunk_size =
         Prop.computed __type __id "imported_file_chunk_size";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_fsx_data_repository_association
        (aws_fsx_data_repository_association
           ?batch_import_meta_data_on_create
           ?delete_data_in_filesystem ?id ?imported_file_chunk_size
           ?tags ?tags_all ?timeouts ~data_repository_path
           ~file_system_id ~file_system_path ~s3 ());
    attrs = __attrs;
  }

let register ?tf_module ?batch_import_meta_data_on_create
    ?delete_data_in_filesystem ?id ?imported_file_chunk_size ?tags
    ?tags_all ?timeouts ~data_repository_path ~file_system_id
    ~file_system_path ~s3 __id =
  let (r : _ Tf_core.resource) =
    make ?batch_import_meta_data_on_create ?delete_data_in_filesystem
      ?id ?imported_file_chunk_size ?tags ?tags_all ?timeouts
      ~data_repository_path ~file_system_id ~file_system_path ~s3
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
