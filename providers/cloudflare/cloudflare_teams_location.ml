(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type networks = { network : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : networks) -> ()

let yojson_of_networks =
  (function
   | { network = v_network } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network in
         ("network", arg) :: bnds
       in
       `Assoc bnds
    : networks -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_networks

[@@@deriving.end]

type cloudflare_teams_location = {
  account_id : string prop;
  client_default : bool prop option; [@option]
  ecs_support : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  networks : networks list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_teams_location) -> ()

let yojson_of_cloudflare_teams_location =
  (function
   | {
       account_id = v_account_id;
       client_default = v_client_default;
       ecs_support = v_ecs_support;
       id = v_id;
       name = v_name;
       networks = v_networks;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_networks then bnds
         else
           let arg =
             (yojson_of_list yojson_of_networks) v_networks
           in
           let bnd = "networks", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_ecs_support with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ecs_support", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_default with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "client_default", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_teams_location -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_teams_location

[@@@deriving.end]

let networks ~network () : networks = { network }

let cloudflare_teams_location ?client_default ?ecs_support ?id
    ~account_id ~name ~networks () : cloudflare_teams_location =
  { account_id; client_default; ecs_support; id; name; networks }

type t = {
  tf_name : string;
  account_id : string prop;
  anonymized_logs_enabled : bool prop;
  client_default : bool prop;
  doh_subdomain : string prop;
  ecs_support : bool prop;
  id : string prop;
  ip : string prop;
  ipv4_destination : string prop;
  name : string prop;
  policy_ids : string list prop;
}

let make ?client_default ?ecs_support ?id ~account_id ~name ~networks
    __id =
  let __type = "cloudflare_teams_location" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       anonymized_logs_enabled =
         Prop.computed __type __id "anonymized_logs_enabled";
       client_default = Prop.computed __type __id "client_default";
       doh_subdomain = Prop.computed __type __id "doh_subdomain";
       ecs_support = Prop.computed __type __id "ecs_support";
       id = Prop.computed __type __id "id";
       ip = Prop.computed __type __id "ip";
       ipv4_destination =
         Prop.computed __type __id "ipv4_destination";
       name = Prop.computed __type __id "name";
       policy_ids = Prop.computed __type __id "policy_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_teams_location
        (cloudflare_teams_location ?client_default ?ecs_support ?id
           ~account_id ~name ~networks ());
    attrs = __attrs;
  }

let register ?tf_module ?client_default ?ecs_support ?id ~account_id
    ~name ~networks __id =
  let (r : _ Tf_core.resource) =
    make ?client_default ?ecs_support ?id ~account_id ~name ~networks
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
