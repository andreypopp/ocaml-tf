(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type supported_database_flags__string_restrictions = {
  allowed_values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : supported_database_flags__string_restrictions) -> ()

let yojson_of_supported_database_flags__string_restrictions =
  (function
   | { allowed_values = v_allowed_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_values
           in
           let bnd = "allowed_values", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : supported_database_flags__string_restrictions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_supported_database_flags__string_restrictions

[@@@deriving.end]

type supported_database_flags__integer_restrictions = {
  max_value : string prop;
  min_value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : supported_database_flags__integer_restrictions) -> ()

let yojson_of_supported_database_flags__integer_restrictions =
  (function
   | { max_value = v_max_value; min_value = v_min_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_min_value in
         ("min_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_max_value in
         ("max_value", arg) :: bnds
       in
       `Assoc bnds
    : supported_database_flags__integer_restrictions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_supported_database_flags__integer_restrictions

[@@@deriving.end]

type supported_database_flags = {
  accepts_multiple_values : bool prop;
  flag_name : string prop;
  integer_restrictions :
    supported_database_flags__integer_restrictions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  requires_db_restart : bool prop;
  string_restrictions :
    supported_database_flags__string_restrictions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  supported_db_versions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  value_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : supported_database_flags) -> ()

let yojson_of_supported_database_flags =
  (function
   | {
       accepts_multiple_values = v_accepts_multiple_values;
       flag_name = v_flag_name;
       integer_restrictions = v_integer_restrictions;
       name = v_name;
       requires_db_restart = v_requires_db_restart;
       string_restrictions = v_string_restrictions;
       supported_db_versions = v_supported_db_versions;
       value_type = v_value_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value_type in
         ("value_type", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_supported_db_versions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_supported_db_versions
           in
           let bnd = "supported_db_versions", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_string_restrictions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_supported_database_flags__string_restrictions)
               v_string_restrictions
           in
           let bnd = "string_restrictions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_requires_db_restart
         in
         ("requires_db_restart", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_integer_restrictions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_supported_database_flags__integer_restrictions)
               v_integer_restrictions
           in
           let bnd = "integer_restrictions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_flag_name in
         ("flag_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_accepts_multiple_values
         in
         ("accepts_multiple_values", arg) :: bnds
       in
       `Assoc bnds
    : supported_database_flags -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_supported_database_flags

[@@@deriving.end]

type google_alloydb_supported_database_flags = {
  id : string prop option; [@option]
  location : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_alloydb_supported_database_flags) -> ()

let yojson_of_google_alloydb_supported_database_flags =
  (function
   | { id = v_id; location = v_location; project = v_project } ->
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_alloydb_supported_database_flags ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_alloydb_supported_database_flags

[@@@deriving.end]

let google_alloydb_supported_database_flags ?id ?project ~location ()
    : google_alloydb_supported_database_flags =
  { id; location; project }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  project : string prop;
  supported_database_flags : supported_database_flags list prop;
}

let make ?id ?project ~location __id =
  let __type = "google_alloydb_supported_database_flags" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       project = Prop.computed __type __id "project";
       supported_database_flags =
         Prop.computed __type __id "supported_database_flags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_alloydb_supported_database_flags
        (google_alloydb_supported_database_flags ?id ?project
           ~location ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~location __id =
  let (r : _ Tf_core.resource) = make ?id ?project ~location __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
