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

type ssh_keys = {
  fingerprint : string prop;
  id : float prop;
  name : string prop;
  public_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ssh_keys) -> ()

let yojson_of_ssh_keys =
  (function
   | {
       fingerprint = v_fingerprint;
       id = v_id;
       name = v_name;
       public_key = v_public_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_public_key in
         ("public_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fingerprint in
         ("fingerprint", arg) :: bnds
       in
       `Assoc bnds
    : ssh_keys -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssh_keys

[@@@deriving.end]

type digitalocean_ssh_keys = {
  id : string prop option; [@option]
  filter : filter list; [@default []] [@yojson_drop_default ( = )]
  sort : sort list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_ssh_keys) -> ()

let yojson_of_digitalocean_ssh_keys =
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
    : digitalocean_ssh_keys -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_ssh_keys

[@@@deriving.end]

let filter ?all ?match_by ~key ~values () : filter =
  { all; key; match_by; values }

let sort ?direction ~key () : sort = { direction; key }

let digitalocean_ssh_keys ?id ?(sort = []) ~filter () :
    digitalocean_ssh_keys =
  { id; filter; sort }

type t = {
  tf_name : string;
  id : string prop;
  ssh_keys : ssh_keys list prop;
}

let make ?id ?(sort = []) ~filter __id =
  let __type = "digitalocean_ssh_keys" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       ssh_keys = Prop.computed __type __id "ssh_keys";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_ssh_keys
        (digitalocean_ssh_keys ?id ~sort ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(sort = []) ~filter __id =
  let (r : _ Tf_core.resource) = make ?id ~sort ~filter __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
