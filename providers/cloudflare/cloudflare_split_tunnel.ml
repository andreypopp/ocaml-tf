(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type tunnels = {
  address : string prop option; [@option]
  description : string prop option; [@option]
  host : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tunnels) -> ()

let yojson_of_tunnels =
  (function
   | {
       address = v_address;
       description = v_description;
       host = v_host;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
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
         match v_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : tunnels -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tunnels

[@@@deriving.end]

type cloudflare_split_tunnel = {
  account_id : string prop;
  id : string prop option; [@option]
  mode : string prop;
  policy_id : string prop option; [@option]
  tunnels : tunnels list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_split_tunnel) -> ()

let yojson_of_cloudflare_split_tunnel =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       mode = v_mode;
       policy_id = v_policy_id;
       tunnels = v_tunnels;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_tunnels v_tunnels in
         ("tunnels", arg) :: bnds
       in
       let bnds =
         match v_policy_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
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
    : cloudflare_split_tunnel -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_split_tunnel

[@@@deriving.end]

let tunnels ?address ?description ?host () : tunnels =
  { address; description; host }

let cloudflare_split_tunnel ?id ?policy_id ~account_id ~mode ~tunnels
    () : cloudflare_split_tunnel =
  { account_id; id; mode; policy_id; tunnels }

type t = {
  tf_name : string;
  account_id : string prop;
  id : string prop;
  mode : string prop;
  policy_id : string prop;
}

let make ?id ?policy_id ~account_id ~mode ~tunnels __id =
  let __type = "cloudflare_split_tunnel" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       mode = Prop.computed __type __id "mode";
       policy_id = Prop.computed __type __id "policy_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_split_tunnel
        (cloudflare_split_tunnel ?id ?policy_id ~account_id ~mode
           ~tunnels ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?policy_id ~account_id ~mode ~tunnels
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?policy_id ~account_id ~mode ~tunnels __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
