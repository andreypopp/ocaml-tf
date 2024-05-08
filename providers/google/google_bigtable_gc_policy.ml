(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type max_age = {
  days : float prop option; [@option]
  duration : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : max_age) -> ()

let yojson_of_max_age =
  (function
   | { days = v_days; duration = v_duration } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "days", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : max_age -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_max_age

[@@@deriving.end]

type max_version = { number : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : max_version) -> ()

let yojson_of_max_version =
  (function
   | { number = v_number } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_number in
         ("number", arg) :: bnds
       in
       `Assoc bnds
    : max_version -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_max_version

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

type google_bigtable_gc_policy = {
  column_family : string prop;
  deletion_policy : string prop option; [@option]
  gc_rules : string prop option; [@option]
  id : string prop option; [@option]
  instance_name : string prop;
  mode : string prop option; [@option]
  project : string prop option; [@option]
  table : string prop;
  max_age : max_age list; [@default []] [@yojson_drop_default ( = )]
  max_version : max_version list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_bigtable_gc_policy) -> ()

let yojson_of_google_bigtable_gc_policy =
  (function
   | {
       column_family = v_column_family;
       deletion_policy = v_deletion_policy;
       gc_rules = v_gc_rules;
       id = v_id;
       instance_name = v_instance_name;
       mode = v_mode;
       project = v_project;
       table = v_table;
       max_age = v_max_age;
       max_version = v_max_version;
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
         if [] = v_max_version then bnds
         else
           let arg =
             (yojson_of_list yojson_of_max_version) v_max_version
           in
           let bnd = "max_version", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_max_age then bnds
         else
           let arg = (yojson_of_list yojson_of_max_age) v_max_age in
           let bnd = "max_age", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table in
         ("table", arg) :: bnds
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
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
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
         match v_gc_rules with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gc_rules", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deletion_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deletion_policy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_column_family in
         ("column_family", arg) :: bnds
       in
       `Assoc bnds
    : google_bigtable_gc_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_bigtable_gc_policy

[@@@deriving.end]

let max_age ?days ?duration () : max_age = { days; duration }
let max_version ~number () : max_version = { number }
let timeouts ?create ?delete () : timeouts = { create; delete }

let google_bigtable_gc_policy ?deletion_policy ?gc_rules ?id ?mode
    ?project ?(max_age = []) ?(max_version = []) ?timeouts
    ~column_family ~instance_name ~table () :
    google_bigtable_gc_policy =
  {
    column_family;
    deletion_policy;
    gc_rules;
    id;
    instance_name;
    mode;
    project;
    table;
    max_age;
    max_version;
    timeouts;
  }

type t = {
  tf_name : string;
  column_family : string prop;
  deletion_policy : string prop;
  gc_rules : string prop;
  id : string prop;
  instance_name : string prop;
  mode : string prop;
  project : string prop;
  table : string prop;
}

let make ?deletion_policy ?gc_rules ?id ?mode ?project
    ?(max_age = []) ?(max_version = []) ?timeouts ~column_family
    ~instance_name ~table __id =
  let __type = "google_bigtable_gc_policy" in
  let __attrs =
    ({
       tf_name = __id;
       column_family = Prop.computed __type __id "column_family";
       deletion_policy = Prop.computed __type __id "deletion_policy";
       gc_rules = Prop.computed __type __id "gc_rules";
       id = Prop.computed __type __id "id";
       instance_name = Prop.computed __type __id "instance_name";
       mode = Prop.computed __type __id "mode";
       project = Prop.computed __type __id "project";
       table = Prop.computed __type __id "table";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigtable_gc_policy
        (google_bigtable_gc_policy ?deletion_policy ?gc_rules ?id
           ?mode ?project ~max_age ~max_version ?timeouts
           ~column_family ~instance_name ~table ());
    attrs = __attrs;
  }

let register ?tf_module ?deletion_policy ?gc_rules ?id ?mode ?project
    ?(max_age = []) ?(max_version = []) ?timeouts ~column_family
    ~instance_name ~table __id =
  let (r : _ Tf_core.resource) =
    make ?deletion_policy ?gc_rules ?id ?mode ?project ~max_age
      ~max_version ?timeouts ~column_family ~instance_name ~table
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
