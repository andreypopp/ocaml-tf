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

type sizes = {
  available : bool prop;
  disk : float prop;
  memory : float prop;
  price_hourly : float prop;
  price_monthly : float prop;
  regions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  slug : string prop;
  transfer : float prop;
  vcpus : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sizes) -> ()

let yojson_of_sizes =
  (function
   | {
       available = v_available;
       disk = v_disk;
       memory = v_memory;
       price_hourly = v_price_hourly;
       price_monthly = v_price_monthly;
       regions = v_regions;
       slug = v_slug;
       transfer = v_transfer;
       vcpus = v_vcpus;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_vcpus in
         ("vcpus", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_transfer in
         ("transfer", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_slug in
         ("slug", arg) :: bnds
       in
       let bnds =
         if [] = v_regions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_regions
           in
           let bnd = "regions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_price_monthly in
         ("price_monthly", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_price_hourly in
         ("price_hourly", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_memory in
         ("memory", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_disk in
         ("disk", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_available in
         ("available", arg) :: bnds
       in
       `Assoc bnds
    : sizes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sizes

[@@@deriving.end]

type digitalocean_sizes = {
  id : string prop option; [@option]
  filter : filter list; [@default []] [@yojson_drop_default ( = )]
  sort : sort list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_sizes) -> ()

let yojson_of_digitalocean_sizes =
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
    : digitalocean_sizes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_sizes

[@@@deriving.end]

let filter ?all ?match_by ~key ~values () : filter =
  { all; key; match_by; values }

let sort ?direction ~key () : sort = { direction; key }

let digitalocean_sizes ?id ?(sort = []) ~filter () :
    digitalocean_sizes =
  { id; filter; sort }

type t = {
  tf_name : string;
  id : string prop;
  sizes : sizes list prop;
}

let make ?id ?(sort = []) ~filter __id =
  let __type = "digitalocean_sizes" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       sizes = Prop.computed __type __id "sizes";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_sizes
        (digitalocean_sizes ?id ~sort ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(sort = []) ~filter __id =
  let (r : _ Tf_core.resource) = make ?id ~sort ~filter __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
