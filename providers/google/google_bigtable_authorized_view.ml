(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type subset_view__family_subsets = {
  family_name : string prop;
  qualifier_prefixes : string prop list option; [@option]
  qualifiers : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subset_view__family_subsets) -> ()

let yojson_of_subset_view__family_subsets =
  (function
   | {
       family_name = v_family_name;
       qualifier_prefixes = v_qualifier_prefixes;
       qualifiers = v_qualifiers;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_qualifiers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "qualifiers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_qualifier_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "qualifier_prefixes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_family_name in
         ("family_name", arg) :: bnds
       in
       `Assoc bnds
    : subset_view__family_subsets ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subset_view__family_subsets

[@@@deriving.end]

type subset_view = {
  row_prefixes : string prop list option; [@option]
  family_subsets : subset_view__family_subsets list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subset_view) -> ()

let yojson_of_subset_view =
  (function
   | {
       row_prefixes = v_row_prefixes;
       family_subsets = v_family_subsets;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_family_subsets then bnds
         else
           let arg =
             (yojson_of_list yojson_of_subset_view__family_subsets)
               v_family_subsets
           in
           let bnd = "family_subsets", arg in
           bnd :: bnds
       in
       let bnds =
         match v_row_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "row_prefixes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : subset_view -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subset_view

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; update = v_update } ->
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

type google_bigtable_authorized_view = {
  deletion_protection : string prop option; [@option]
  id : string prop option; [@option]
  instance_name : string prop;
  name : string prop;
  project : string prop option; [@option]
  table_name : string prop;
  subset_view : subset_view list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_bigtable_authorized_view) -> ()

let yojson_of_google_bigtable_authorized_view =
  (function
   | {
       deletion_protection = v_deletion_protection;
       id = v_id;
       instance_name = v_instance_name;
       name = v_name;
       project = v_project;
       table_name = v_table_name;
       subset_view = v_subset_view;
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
         if Stdlib.( = ) [] v_subset_view then bnds
         else
           let arg =
             (yojson_of_list yojson_of_subset_view) v_subset_view
           in
           let bnd = "subset_view", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_name in
         ("table_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_name in
         ("instance_name", arg) :: bnds
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
         match v_deletion_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deletion_protection", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_bigtable_authorized_view ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_bigtable_authorized_view

[@@@deriving.end]

let subset_view__family_subsets ?qualifier_prefixes ?qualifiers
    ~family_name () : subset_view__family_subsets =
  { family_name; qualifier_prefixes; qualifiers }

let subset_view ?row_prefixes ~family_subsets () : subset_view =
  { row_prefixes; family_subsets }

let timeouts ?create ?update () : timeouts = { create; update }

let google_bigtable_authorized_view ?deletion_protection ?id ?project
    ?(subset_view = []) ?timeouts ~instance_name ~name ~table_name ()
    : google_bigtable_authorized_view =
  {
    deletion_protection;
    id;
    instance_name;
    name;
    project;
    table_name;
    subset_view;
    timeouts;
  }

type t = {
  tf_name : string;
  deletion_protection : string prop;
  id : string prop;
  instance_name : string prop;
  name : string prop;
  project : string prop;
  table_name : string prop;
}

let make ?deletion_protection ?id ?project ?(subset_view = [])
    ?timeouts ~instance_name ~name ~table_name __id =
  let __type = "google_bigtable_authorized_view" in
  let __attrs =
    ({
       tf_name = __id;
       deletion_protection =
         Prop.computed __type __id "deletion_protection";
       id = Prop.computed __type __id "id";
       instance_name = Prop.computed __type __id "instance_name";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       table_name = Prop.computed __type __id "table_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigtable_authorized_view
        (google_bigtable_authorized_view ?deletion_protection ?id
           ?project ~subset_view ?timeouts ~instance_name ~name
           ~table_name ());
    attrs = __attrs;
  }

let register ?tf_module ?deletion_protection ?id ?project
    ?(subset_view = []) ?timeouts ~instance_name ~name ~table_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?deletion_protection ?id ?project ~subset_view ?timeouts
      ~instance_name ~name ~table_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
