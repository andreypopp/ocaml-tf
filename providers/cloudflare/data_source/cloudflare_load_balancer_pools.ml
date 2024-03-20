(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = { name : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type pools__load_shedding = {
  default_percent : float prop;
  default_policy : string prop;
  session_percent : float prop;
  session_policy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pools__load_shedding) -> ()

let yojson_of_pools__load_shedding =
  (function
   | {
       default_percent = v_default_percent;
       default_policy = v_default_policy;
       session_percent = v_session_percent;
       session_policy = v_session_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_session_policy
         in
         ("session_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_session_percent
         in
         ("session_percent", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_default_policy
         in
         ("default_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_default_percent
         in
         ("default_percent", arg) :: bnds
       in
       `Assoc bnds
    : pools__load_shedding -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pools__load_shedding

[@@@deriving.end]

type pools__origins__header = {
  header : string prop;
  values : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pools__origins__header) -> ()

let yojson_of_pools__origins__header =
  (function
   | { header = v_header; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header in
         ("header", arg) :: bnds
       in
       `Assoc bnds
    : pools__origins__header -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pools__origins__header

[@@@deriving.end]

type pools__origins = {
  address : string prop;
  enabled : bool prop;
  header : pools__origins__header list;
  name : string prop;
  weight : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : pools__origins) -> ()

let yojson_of_pools__origins =
  (function
   | {
       address = v_address;
       enabled = v_enabled;
       header = v_header;
       name = v_name;
       weight = v_weight;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_weight in
         ("weight", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_pools__origins__header v_header
         in
         ("header", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address in
         ("address", arg) :: bnds
       in
       `Assoc bnds
    : pools__origins -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pools__origins

[@@@deriving.end]

type pools = unit [@@deriving_inline yojson_of]

let _ = fun (_ : pools) -> ()

let yojson_of_pools =
  (yojson_of_unit : pools -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pools

[@@@deriving.end]

type cloudflare_load_balancer_pools = {
  account_id : string prop;
  id : string prop option; [@option]
  filter : filter list;
  pools : pools list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_load_balancer_pools) -> ()

let yojson_of_cloudflare_load_balancer_pools =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       filter = v_filter;
       pools = v_pools;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_pools v_pools in
         ("pools", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_filter v_filter in
         ("filter", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_load_balancer_pools ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_load_balancer_pools

[@@@deriving.end]

let filter ?name () : filter = { name }
let pools () = ()

let cloudflare_load_balancer_pools ?id ~account_id ~filter ~pools ()
    : cloudflare_load_balancer_pools =
  { account_id; id; filter; pools }

type t = { account_id : string prop; id : string prop }

let make ?id ~account_id ~filter ~pools __id =
  let __type = "cloudflare_load_balancer_pools" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_load_balancer_pools
        (cloudflare_load_balancer_pools ?id ~account_id ~filter
           ~pools ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id ~filter ~pools __id =
  let (r : _ Tf_core.resource) =
    make ?id ~account_id ~filter ~pools __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
