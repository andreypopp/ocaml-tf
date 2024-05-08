(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  all : bool prop option; [@option]
  key : string prop;
  match_by : string prop option; [@option]
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_values then bnds
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

type regions = {
  available : bool prop;
  features : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  sizes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  slug : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : regions) -> ()

let yojson_of_regions =
  (function
   | {
       available = v_available;
       features = v_features;
       name = v_name;
       sizes = v_sizes;
       slug = v_slug;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_slug in
         ("slug", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_sizes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_sizes
           in
           let bnd = "sizes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_features then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_features
           in
           let bnd = "features", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_available in
         ("available", arg) :: bnds
       in
       `Assoc bnds
    : regions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_regions

[@@@deriving.end]

type digitalocean_regions = {
  id : string prop option; [@option]
  filter : filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sort : sort list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_regions) -> ()

let yojson_of_digitalocean_regions =
  (function
   | { id = v_id; filter = v_filter; sort = v_sort } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_sort then bnds
         else
           let arg = (yojson_of_list yojson_of_sort) v_sort in
           let bnd = "sort", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_filter then bnds
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
    : digitalocean_regions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_regions

[@@@deriving.end]

let filter ?all ?match_by ~key ~values () : filter =
  { all; key; match_by; values }

let sort ?direction ~key () : sort = { direction; key }

let digitalocean_regions ?id ?(sort = []) ~filter () :
    digitalocean_regions =
  { id; filter; sort }

type t = {
  tf_name : string;
  id : string prop;
  regions : regions list prop;
}

let make ?id ?(sort = []) ~filter __id =
  let __type = "digitalocean_regions" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       regions = Prop.computed __type __id "regions";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_regions
        (digitalocean_regions ?id ~sort ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(sort = []) ~filter __id =
  let (r : _ Tf_core.resource) = make ?id ~sort ~filter __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
