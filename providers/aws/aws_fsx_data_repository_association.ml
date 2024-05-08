(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type s3__auto_export_policy = {
  events : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : s3__auto_export_policy) -> ()

let yojson_of_s3__auto_export_policy =
  (function
   | { events = v_events } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_events with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "events", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : s3__auto_export_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3__auto_export_policy

[@@@deriving.end]

type s3__auto_import_policy = {
  events : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : s3__auto_import_policy) -> ()

let yojson_of_s3__auto_import_policy =
  (function
   | { events = v_events } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_events with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "events", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : s3__auto_import_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3__auto_import_policy

[@@@deriving.end]

type s3 = {
  auto_export_policy : s3__auto_export_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  auto_import_policy : s3__auto_import_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : s3) -> ()

let yojson_of_s3 =
  (function
   | {
       auto_export_policy = v_auto_export_policy;
       auto_import_policy = v_auto_import_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_auto_import_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_s3__auto_import_policy)
               v_auto_import_policy
           in
           let bnd = "auto_import_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_auto_export_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_s3__auto_export_policy)
               v_auto_export_policy
           in
           let bnd = "auto_export_policy", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : s3 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_fsx_data_repository_association = {
  batch_import_meta_data_on_create : bool prop option; [@option]
  data_repository_path : string prop;
  delete_data_in_filesystem : bool prop option; [@option]
  file_system_id : string prop;
  file_system_path : string prop;
  id : string prop option; [@option]
  imported_file_chunk_size : float prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  s3 : s3 list; [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_fsx_data_repository_association) -> ()

let yojson_of_aws_fsx_data_repository_association =
  (function
   | {
       batch_import_meta_data_on_create =
         v_batch_import_meta_data_on_create;
       data_repository_path = v_data_repository_path;
       delete_data_in_filesystem = v_delete_data_in_filesystem;
       file_system_id = v_file_system_id;
       file_system_path = v_file_system_path;
       id = v_id;
       imported_file_chunk_size = v_imported_file_chunk_size;
       tags = v_tags;
       tags_all = v_tags_all;
       s3 = v_s3;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_s3 then bnds
         else
           let arg = (yojson_of_list yojson_of_s3) v_s3 in
           let bnd = "s3", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_imported_file_chunk_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "imported_file_chunk_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_file_system_path
         in
         ("file_system_path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_file_system_id
         in
         ("file_system_id", arg) :: bnds
       in
       let bnds =
         match v_delete_data_in_filesystem with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_data_in_filesystem", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_repository_path
         in
         ("data_repository_path", arg) :: bnds
       in
       let bnds =
         match v_batch_import_meta_data_on_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "batch_import_meta_data_on_create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_fsx_data_repository_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_fsx_data_repository_association

[@@@deriving.end]

let s3__auto_export_policy ?events () : s3__auto_export_policy =
  { events }

let s3__auto_import_policy ?events () : s3__auto_import_policy =
  { events }

let s3 ?(auto_export_policy = []) ?(auto_import_policy = []) () : s3
    =
  { auto_export_policy; auto_import_policy }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_fsx_data_repository_association
    ?batch_import_meta_data_on_create ?delete_data_in_filesystem ?id
    ?imported_file_chunk_size ?tags ?tags_all ?(s3 = []) ?timeouts
    ~data_repository_path ~file_system_id ~file_system_path () :
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
  tf_name : string;
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
    ?id ?imported_file_chunk_size ?tags ?tags_all ?(s3 = [])
    ?timeouts ~data_repository_path ~file_system_id ~file_system_path
    __id =
  let __type = "aws_fsx_data_repository_association" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?tags ?tags_all ~s3 ?timeouts ~data_repository_path
           ~file_system_id ~file_system_path ());
    attrs = __attrs;
  }

let register ?tf_module ?batch_import_meta_data_on_create
    ?delete_data_in_filesystem ?id ?imported_file_chunk_size ?tags
    ?tags_all ?(s3 = []) ?timeouts ~data_repository_path
    ~file_system_id ~file_system_path __id =
  let (r : _ Tf_core.resource) =
    make ?batch_import_meta_data_on_create ?delete_data_in_filesystem
      ?id ?imported_file_chunk_size ?tags ?tags_all ~s3 ?timeouts
      ~data_repository_path ~file_system_id ~file_system_path __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
