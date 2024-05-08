(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dataset__dataset = {
  dataset_id : string prop;
  project_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dataset__dataset) -> ()

let yojson_of_dataset__dataset =
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
    : dataset__dataset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dataset__dataset

[@@@deriving.end]

type dataset = {
  target_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dataset : dataset__dataset list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dataset) -> ()

let yojson_of_dataset =
  (function
   | { target_types = v_target_types; dataset = v_dataset } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_dataset then bnds
         else
           let arg =
             (yojson_of_list yojson_of_dataset__dataset) v_dataset
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
    : dataset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dataset

[@@@deriving.end]

type routine = {
  dataset_id : string prop;
  project_id : string prop;
  routine_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routine) -> ()

let yojson_of_routine =
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
    : routine -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routine

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type view = {
  dataset_id : string prop;
  project_id : string prop;
  table_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : view) -> ()

let yojson_of_view =
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
    : view -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_view

[@@@deriving.end]

type google_bigquery_dataset_access = {
  dataset_id : string prop;
  domain : string prop option; [@option]
  group_by_email : string prop option; [@option]
  iam_member : string prop option; [@option]
  id : string prop option; [@option]
  project : string prop option; [@option]
  role : string prop option; [@option]
  special_group : string prop option; [@option]
  user_by_email : string prop option; [@option]
  dataset : dataset list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  routine : routine list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  view : view list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_bigquery_dataset_access) -> ()

let yojson_of_google_bigquery_dataset_access =
  (function
   | {
       dataset_id = v_dataset_id;
       domain = v_domain;
       group_by_email = v_group_by_email;
       iam_member = v_iam_member;
       id = v_id;
       project = v_project;
       role = v_role;
       special_group = v_special_group;
       user_by_email = v_user_by_email;
       dataset = v_dataset;
       routine = v_routine;
       timeouts = v_timeouts;
       view = v_view;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_view then bnds
         else
           let arg = (yojson_of_list yojson_of_view) v_view in
           let bnd = "view", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_routine then bnds
         else
           let arg = (yojson_of_list yojson_of_routine) v_routine in
           let bnd = "routine", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dataset then bnds
         else
           let arg = (yojson_of_list yojson_of_dataset) v_dataset in
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset_id in
         ("dataset_id", arg) :: bnds
       in
       `Assoc bnds
    : google_bigquery_dataset_access ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_bigquery_dataset_access

[@@@deriving.end]

let dataset__dataset ~dataset_id ~project_id () : dataset__dataset =
  { dataset_id; project_id }

let dataset ~target_types ~dataset () : dataset =
  { target_types; dataset }

let routine ~dataset_id ~project_id ~routine_id () : routine =
  { dataset_id; project_id; routine_id }

let timeouts ?create ?delete () : timeouts = { create; delete }

let view ~dataset_id ~project_id ~table_id () : view =
  { dataset_id; project_id; table_id }

let google_bigquery_dataset_access ?domain ?group_by_email
    ?iam_member ?id ?project ?role ?special_group ?user_by_email
    ?(dataset = []) ?(routine = []) ?timeouts ?(view = [])
    ~dataset_id () : google_bigquery_dataset_access =
  {
    dataset_id;
    domain;
    group_by_email;
    iam_member;
    id;
    project;
    role;
    special_group;
    user_by_email;
    dataset;
    routine;
    timeouts;
    view;
  }

type t = {
  tf_name : string;
  api_updated_member : bool prop;
  dataset_id : string prop;
  domain : string prop;
  group_by_email : string prop;
  iam_member : string prop;
  id : string prop;
  project : string prop;
  role : string prop;
  special_group : string prop;
  user_by_email : string prop;
}

let make ?domain ?group_by_email ?iam_member ?id ?project ?role
    ?special_group ?user_by_email ?(dataset = []) ?(routine = [])
    ?timeouts ?(view = []) ~dataset_id __id =
  let __type = "google_bigquery_dataset_access" in
  let __attrs =
    ({
       tf_name = __id;
       api_updated_member =
         Prop.computed __type __id "api_updated_member";
       dataset_id = Prop.computed __type __id "dataset_id";
       domain = Prop.computed __type __id "domain";
       group_by_email = Prop.computed __type __id "group_by_email";
       iam_member = Prop.computed __type __id "iam_member";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       role = Prop.computed __type __id "role";
       special_group = Prop.computed __type __id "special_group";
       user_by_email = Prop.computed __type __id "user_by_email";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_dataset_access
        (google_bigquery_dataset_access ?domain ?group_by_email
           ?iam_member ?id ?project ?role ?special_group
           ?user_by_email ~dataset ~routine ?timeouts ~view
           ~dataset_id ());
    attrs = __attrs;
  }

let register ?tf_module ?domain ?group_by_email ?iam_member ?id
    ?project ?role ?special_group ?user_by_email ?(dataset = [])
    ?(routine = []) ?timeouts ?(view = []) ~dataset_id __id =
  let (r : _ Tf_core.resource) =
    make ?domain ?group_by_email ?iam_member ?id ?project ?role
      ?special_group ?user_by_email ~dataset ~routine ?timeouts ~view
      ~dataset_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
