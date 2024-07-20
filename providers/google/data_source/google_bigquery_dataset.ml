(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access__view = {
  dataset_id : string prop;
  project_id : string prop;
  table_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access__view) -> ()

let yojson_of_access__view =
  (function
   | {
       dataset_id = v_dataset_id;
       project_id = v_project_id;
       table_id = v_table_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_id in
         ("table_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset_id in
         ("dataset_id", arg) :: bnds
       in
       `Assoc bnds
    : access__view -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access__view

[@@@deriving.end]

type access__routine = {
  dataset_id : string prop;
  project_id : string prop;
  routine_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access__routine) -> ()

let yojson_of_access__routine =
  (function
   | {
       dataset_id = v_dataset_id;
       project_id = v_project_id;
       routine_id = v_routine_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_routine_id in
         ("routine_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset_id in
         ("dataset_id", arg) :: bnds
       in
       `Assoc bnds
    : access__routine -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access__routine

[@@@deriving.end]

type access__dataset__dataset = {
  dataset_id : string prop;
  project_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access__dataset__dataset) -> ()

let yojson_of_access__dataset__dataset =
  (function
   | { dataset_id = v_dataset_id; project_id = v_project_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset_id in
         ("dataset_id", arg) :: bnds
       in
       `Assoc bnds
    : access__dataset__dataset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access__dataset__dataset

[@@@deriving.end]

type access__dataset = {
  dataset : access__dataset__dataset list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  target_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access__dataset) -> ()

let yojson_of_access__dataset =
  (function
   | { dataset = v_dataset; target_types = v_target_types } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_target_types then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_target_types
           in
           let bnd = "target_types", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dataset then bnds
         else
           let arg =
             (yojson_of_list yojson_of_access__dataset__dataset)
               v_dataset
           in
           let bnd = "dataset", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : access__dataset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access__dataset

[@@@deriving.end]

type access = {
  dataset : access__dataset list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  domain : string prop;
  group_by_email : string prop;
  iam_member : string prop;
  role : string prop;
  routine : access__routine list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  special_group : string prop;
  user_by_email : string prop;
  view : access__view list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access) -> ()

let yojson_of_access =
  (function
   | {
       dataset = v_dataset;
       domain = v_domain;
       group_by_email = v_group_by_email;
       iam_member = v_iam_member;
       role = v_role;
       routine = v_routine;
       special_group = v_special_group;
       user_by_email = v_user_by_email;
       view = v_view;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_view then bnds
         else
           let arg =
             (yojson_of_list yojson_of_access__view) v_view
           in
           let bnd = "view", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_by_email in
         ("user_by_email", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_special_group in
         ("special_group", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_routine then bnds
         else
           let arg =
             (yojson_of_list yojson_of_access__routine) v_routine
           in
           let bnd = "routine", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role in
         ("role", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_iam_member in
         ("iam_member", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_group_by_email
         in
         ("group_by_email", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dataset then bnds
         else
           let arg =
             (yojson_of_list yojson_of_access__dataset) v_dataset
           in
           let bnd = "dataset", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : access -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access

[@@@deriving.end]

type default_encryption_configuration = {
  kms_key_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_encryption_configuration) -> ()

let yojson_of_default_encryption_configuration =
  (function
   | { kms_key_name = v_kms_key_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_name in
         ("kms_key_name", arg) :: bnds
       in
       `Assoc bnds
    : default_encryption_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_encryption_configuration

[@@@deriving.end]

type external_dataset_reference = {
  connection : string prop;
  external_source : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : external_dataset_reference) -> ()

let yojson_of_external_dataset_reference =
  (function
   | {
       connection = v_connection;
       external_source = v_external_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_external_source
         in
         ("external_source", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_connection in
         ("connection", arg) :: bnds
       in
       `Assoc bnds
    : external_dataset_reference -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_external_dataset_reference

[@@@deriving.end]

type google_bigquery_dataset = {
  dataset_id : string prop;
  id : string prop option; [@option]
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_bigquery_dataset) -> ()

let yojson_of_google_bigquery_dataset =
  (function
   | { dataset_id = v_dataset_id; id = v_id; project = v_project } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
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
         let arg = yojson_of_prop yojson_of_string v_dataset_id in
         ("dataset_id", arg) :: bnds
       in
       `Assoc bnds
    : google_bigquery_dataset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_bigquery_dataset

[@@@deriving.end]

let google_bigquery_dataset ?id ?project ~dataset_id () :
    google_bigquery_dataset =
  { dataset_id; id; project }

type t = {
  tf_name : string;
  access : access list prop;
  creation_time : float prop;
  dataset_id : string prop;
  default_collation : string prop;
  default_encryption_configuration :
    default_encryption_configuration list prop;
  default_partition_expiration_ms : float prop;
  default_table_expiration_ms : float prop;
  delete_contents_on_destroy : bool prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  external_dataset_reference : external_dataset_reference list prop;
  friendly_name : string prop;
  id : string prop;
  is_case_insensitive : bool prop;
  labels : (string * string) list prop;
  last_modified_time : float prop;
  location : string prop;
  max_time_travel_hours : string prop;
  project : string prop;
  self_link : string prop;
  storage_billing_model : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?id ?project ~dataset_id __id =
  let __type = "google_bigquery_dataset" in
  let __attrs =
    ({
       tf_name = __id;
       access = Prop.computed __type __id "access";
       creation_time = Prop.computed __type __id "creation_time";
       dataset_id = Prop.computed __type __id "dataset_id";
       default_collation =
         Prop.computed __type __id "default_collation";
       default_encryption_configuration =
         Prop.computed __type __id "default_encryption_configuration";
       default_partition_expiration_ms =
         Prop.computed __type __id "default_partition_expiration_ms";
       default_table_expiration_ms =
         Prop.computed __type __id "default_table_expiration_ms";
       delete_contents_on_destroy =
         Prop.computed __type __id "delete_contents_on_destroy";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       external_dataset_reference =
         Prop.computed __type __id "external_dataset_reference";
       friendly_name = Prop.computed __type __id "friendly_name";
       id = Prop.computed __type __id "id";
       is_case_insensitive =
         Prop.computed __type __id "is_case_insensitive";
       labels = Prop.computed __type __id "labels";
       last_modified_time =
         Prop.computed __type __id "last_modified_time";
       location = Prop.computed __type __id "location";
       max_time_travel_hours =
         Prop.computed __type __id "max_time_travel_hours";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       storage_billing_model =
         Prop.computed __type __id "storage_billing_model";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_dataset
        (google_bigquery_dataset ?id ?project ~dataset_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~dataset_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~dataset_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
