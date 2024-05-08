(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  all : bool prop option; [@option]
  key : string prop;
  match_by : string prop option; [@option]
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | {
       all = v_all;
       key = v_key;
       match_by = v_match_by;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         match v_match_by with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "match_by", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         match v_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "all", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type sort = {
  direction : string prop option; [@option]
  key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sort) -> ()

let yojson_of_sort =
  (function
   | { direction = v_direction; key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         match v_direction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "direction", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sort -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sort

[@@@deriving.end]

type projects = {
  created_at : string prop;
  description : string prop;
  environment : string prop;
  id : string prop;
  is_default : bool prop;
  name : string prop;
  owner_id : float prop;
  owner_uuid : string prop;
  purpose : string prop;
  resources : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  updated_at : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : projects) -> ()

let yojson_of_projects =
  (function
   | {
       created_at = v_created_at;
       description = v_description;
       environment = v_environment;
       id = v_id;
       is_default = v_is_default;
       name = v_name;
       owner_id = v_owner_id;
       owner_uuid = v_owner_uuid;
       purpose = v_purpose;
       resources = v_resources;
       updated_at = v_updated_at;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_updated_at in
         ("updated_at", arg) :: bnds
       in
       let bnds =
         if [] = v_resources then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_resources
           in
           let bnd = "resources", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_purpose in
         ("purpose", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_owner_uuid in
         ("owner_uuid", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_owner_id in
         ("owner_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_default in
         ("is_default", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_environment in
         ("environment", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_created_at in
         ("created_at", arg) :: bnds
       in
       `Assoc bnds
    : projects -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_projects

[@@@deriving.end]

type digitalocean_projects = {
  id : string prop option; [@option]
  filter : filter list; [@default []] [@yojson_drop_default ( = )]
  sort : sort list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_projects) -> ()

let yojson_of_digitalocean_projects =
  (function
   | { id = v_id; filter = v_filter; sort = v_sort } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_sort then bnds
         else
           let arg = (yojson_of_list yojson_of_sort) v_sort in
           let bnd = "sort", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
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
       `Assoc bnds
    : digitalocean_projects -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_projects

[@@@deriving.end]

let filter ?all ?match_by ~key ~values () : filter =
  { all; key; match_by; values }

let sort ?direction ~key () : sort = { direction; key }

let digitalocean_projects ?id ?(sort = []) ~filter () :
    digitalocean_projects =
  { id; filter; sort }

type t = {
  tf_name : string;
  id : string prop;
  projects : projects list prop;
}

let make ?id ?(sort = []) ~filter __id =
  let __type = "digitalocean_projects" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       projects = Prop.computed __type __id "projects";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_projects
        (digitalocean_projects ?id ~sort ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(sort = []) ~filter __id =
  let (r : _ Tf_core.resource) = make ?id ~sort ~filter __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
