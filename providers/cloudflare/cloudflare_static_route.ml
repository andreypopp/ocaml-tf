(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_static_route = {
  account_id : string prop option; [@option]
  colo_names : string prop list option; [@option]
  colo_regions : string prop list option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  nexthop : string prop;
  prefix : string prop;
  priority : float prop;
  weight : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_static_route) -> ()

let yojson_of_cloudflare_static_route =
  (function
   | {
       account_id = v_account_id;
       colo_names = v_colo_names;
       colo_regions = v_colo_regions;
       description = v_description;
       id = v_id;
       nexthop = v_nexthop;
       prefix = v_prefix;
       priority = v_priority;
       weight = v_weight;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "weight", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_prefix in
         ("prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_nexthop in
         ("nexthop", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_colo_regions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "colo_regions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_colo_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "colo_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_static_route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_static_route

[@@@deriving.end]

let cloudflare_static_route ?account_id ?colo_names ?colo_regions
    ?description ?id ?weight ~nexthop ~prefix ~priority () :
    cloudflare_static_route =
  {
    account_id;
    colo_names;
    colo_regions;
    description;
    id;
    nexthop;
    prefix;
    priority;
    weight;
  }

type t = {
  account_id : string prop;
  colo_names : string list prop;
  colo_regions : string list prop;
  description : string prop;
  id : string prop;
  nexthop : string prop;
  prefix : string prop;
  priority : float prop;
  weight : float prop;
}

let make ?account_id ?colo_names ?colo_regions ?description ?id
    ?weight ~nexthop ~prefix ~priority __id =
  let __type = "cloudflare_static_route" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       colo_names = Prop.computed __type __id "colo_names";
       colo_regions = Prop.computed __type __id "colo_regions";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       nexthop = Prop.computed __type __id "nexthop";
       prefix = Prop.computed __type __id "prefix";
       priority = Prop.computed __type __id "priority";
       weight = Prop.computed __type __id "weight";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_static_route
        (cloudflare_static_route ?account_id ?colo_names
           ?colo_regions ?description ?id ?weight ~nexthop ~prefix
           ~priority ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?colo_names ?colo_regions
    ?description ?id ?weight ~nexthop ~prefix ~priority __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?colo_names ?colo_regions ?description ?id
      ?weight ~nexthop ~prefix ~priority __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
