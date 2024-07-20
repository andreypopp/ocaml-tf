(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  target_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dataset : access__dataset__dataset list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access__dataset) -> ()

let yojson_of_access__dataset =
  (function
   | { target_types = v_target_types; dataset = v_dataset } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : access__dataset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access__dataset

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

type access = {
  domain : string prop option; [@option]
  group_by_email : string prop option; [@option]
  iam_member : string prop option; [@option]
  role : string prop option; [@option]
  special_group : string prop option; [@option]
  user_by_email : string prop option; [@option]
  dataset : access__dataset list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  routine : access__routine list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  view : access__view list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access) -> ()

let yojson_of_access =
  (function
   | {
       domain = v_domain;
       group_by_email = v_group_by_email;
       iam_member = v_iam_member;
       role = v_role;
       special_group = v_special_group;
       user_by_email = v_user_by_email;
       dataset = v_dataset;
       routine = v_routine;
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
         if Stdlib.( = ) [] v_routine then bnds
         else
           let arg =
             (yojson_of_list yojson_of_access__routine) v_routine
           in
           let bnd = "routine", arg in
           bnd :: bnds
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
       let bnds =
         match v_user_by_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_by_email", arg in
             bnd :: bnds
       in
       let bnds =
         match v_special_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "special_group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iam_member with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "iam_member", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group_by_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "group_by_email", arg in
             bnd :: bnds
       in
       let bnds =
         match v_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain", arg in
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

type google_bigquery_dataset = {
  dataset_id : string prop;
  default_collation : string prop option; [@option]
  default_partition_expiration_ms : float prop option; [@option]
  default_table_expiration_ms : float prop option; [@option]
  delete_contents_on_destroy : bool prop option; [@option]
  description : string prop option; [@option]
  friendly_name : string prop option; [@option]
  id : string prop option; [@option]
  is_case_insensitive : bool prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop option; [@option]
  max_time_travel_hours : string prop option; [@option]
  project : string prop option; [@option]
  storage_billing_model : string prop option; [@option]
  access : access list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  default_encryption_configuration :
    default_encryption_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  external_dataset_reference : external_dataset_reference list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_bigquery_dataset) -> ()

let yojson_of_google_bigquery_dataset =
  (function
   | {
       dataset_id = v_dataset_id;
       default_collation = v_default_collation;
       default_partition_expiration_ms =
         v_default_partition_expiration_ms;
       default_table_expiration_ms = v_default_table_expiration_ms;
       delete_contents_on_destroy = v_delete_contents_on_destroy;
       description = v_description;
       friendly_name = v_friendly_name;
       id = v_id;
       is_case_insensitive = v_is_case_insensitive;
       labels = v_labels;
       location = v_location;
       max_time_travel_hours = v_max_time_travel_hours;
       project = v_project;
       storage_billing_model = v_storage_billing_model;
       access = v_access;
       default_encryption_configuration =
         v_default_encryption_configuration;
       external_dataset_reference = v_external_dataset_reference;
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
         if Stdlib.( = ) [] v_external_dataset_reference then bnds
         else
           let arg =
             (yojson_of_list yojson_of_external_dataset_reference)
               v_external_dataset_reference
           in
           let bnd = "external_dataset_reference", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_default_encryption_configuration then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_default_encryption_configuration)
               v_default_encryption_configuration
           in
           let bnd = "default_encryption_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_access then bnds
         else
           let arg = (yojson_of_list yojson_of_access) v_access in
           let bnd = "access", arg in
           bnd :: bnds
       in
       let bnds =
         match v_storage_billing_model with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_billing_model", arg in
             bnd :: bnds
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
         match v_max_time_travel_hours with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_time_travel_hours", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_case_insensitive with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_case_insensitive", arg in
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
         match v_friendly_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "friendly_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete_contents_on_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_contents_on_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_table_expiration_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default_table_expiration_ms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_partition_expiration_ms with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default_partition_expiration_ms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_collation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_collation", arg in
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

let access__dataset__dataset ~dataset_id ~project_id () :
    access__dataset__dataset =
  { dataset_id; project_id }

let access__dataset ~target_types ~dataset () : access__dataset =
  { target_types; dataset }

let access__routine ~dataset_id ~project_id ~routine_id () :
    access__routine =
  { dataset_id; project_id; routine_id }

let access__view ~dataset_id ~project_id ~table_id () : access__view
    =
  { dataset_id; project_id; table_id }

let access ?domain ?group_by_email ?iam_member ?role ?special_group
    ?user_by_email ?(dataset = []) ?(routine = []) ?(view = []) () :
    access =
  {
    domain;
    group_by_email;
    iam_member;
    role;
    special_group;
    user_by_email;
    dataset;
    routine;
    view;
  }

let default_encryption_configuration ~kms_key_name () :
    default_encryption_configuration =
  { kms_key_name }

let external_dataset_reference ~connection ~external_source () :
    external_dataset_reference =
  { connection; external_source }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_bigquery_dataset ?default_collation
    ?default_partition_expiration_ms ?default_table_expiration_ms
    ?delete_contents_on_destroy ?description ?friendly_name ?id
    ?is_case_insensitive ?labels ?location ?max_time_travel_hours
    ?project ?storage_billing_model
    ?(default_encryption_configuration = [])
    ?(external_dataset_reference = []) ?timeouts ~dataset_id ~access
    () : google_bigquery_dataset =
  {
    dataset_id;
    default_collation;
    default_partition_expiration_ms;
    default_table_expiration_ms;
    delete_contents_on_destroy;
    description;
    friendly_name;
    id;
    is_case_insensitive;
    labels;
    location;
    max_time_travel_hours;
    project;
    storage_billing_model;
    access;
    default_encryption_configuration;
    external_dataset_reference;
    timeouts;
  }

type t = {
  tf_name : string;
  creation_time : float prop;
  dataset_id : string prop;
  default_collation : string prop;
  default_partition_expiration_ms : float prop;
  default_table_expiration_ms : float prop;
  delete_contents_on_destroy : bool prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
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

let make ?default_collation ?default_partition_expiration_ms
    ?default_table_expiration_ms ?delete_contents_on_destroy
    ?description ?friendly_name ?id ?is_case_insensitive ?labels
    ?location ?max_time_travel_hours ?project ?storage_billing_model
    ?(default_encryption_configuration = [])
    ?(external_dataset_reference = []) ?timeouts ~dataset_id ~access
    __id =
  let __type = "google_bigquery_dataset" in
  let __attrs =
    ({
       tf_name = __id;
       creation_time = Prop.computed __type __id "creation_time";
       dataset_id = Prop.computed __type __id "dataset_id";
       default_collation =
         Prop.computed __type __id "default_collation";
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
        (google_bigquery_dataset ?default_collation
           ?default_partition_expiration_ms
           ?default_table_expiration_ms ?delete_contents_on_destroy
           ?description ?friendly_name ?id ?is_case_insensitive
           ?labels ?location ?max_time_travel_hours ?project
           ?storage_billing_model ~default_encryption_configuration
           ~external_dataset_reference ?timeouts ~dataset_id ~access
           ());
    attrs = __attrs;
  }

let register ?tf_module ?default_collation
    ?default_partition_expiration_ms ?default_table_expiration_ms
    ?delete_contents_on_destroy ?description ?friendly_name ?id
    ?is_case_insensitive ?labels ?location ?max_time_travel_hours
    ?project ?storage_billing_model
    ?(default_encryption_configuration = [])
    ?(external_dataset_reference = []) ?timeouts ~dataset_id ~access
    __id =
  let (r : _ Tf_core.resource) =
    make ?default_collation ?default_partition_expiration_ms
      ?default_table_expiration_ms ?delete_contents_on_destroy
      ?description ?friendly_name ?id ?is_case_insensitive ?labels
      ?location ?max_time_travel_hours ?project
      ?storage_billing_model ~default_encryption_configuration
      ~external_dataset_reference ?timeouts ~dataset_id ~access __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
