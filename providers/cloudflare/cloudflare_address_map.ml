(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ips = { ip : string prop } [@@deriving_inline yojson_of]

let _ = fun (_ : ips) -> ()

let yojson_of_ips =
  (function
   | { ip = v_ip } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip in
         ("ip", arg) :: bnds
       in
       `Assoc bnds
    : ips -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ips

[@@@deriving.end]

type memberships = { identifier : string prop; kind : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : memberships) -> ()

let yojson_of_memberships =
  (function
   | { identifier = v_identifier; kind = v_kind } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kind in
         ("kind", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_identifier in
         ("identifier", arg) :: bnds
       in
       `Assoc bnds
    : memberships -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_memberships

[@@@deriving.end]

type cloudflare_address_map = {
  account_id : string prop;
  default_sni : string prop option; [@option]
  description : string prop option; [@option]
  enabled : bool prop;
  id : string prop option; [@option]
  ips : ips list; [@default []] [@yojson_drop_default Stdlib.( = )]
  memberships : memberships list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_address_map) -> ()

let yojson_of_cloudflare_address_map =
  (function
   | {
       account_id = v_account_id;
       default_sni = v_default_sni;
       description = v_description;
       enabled = v_enabled;
       id = v_id;
       ips = v_ips;
       memberships = v_memberships;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_memberships then bnds
         else
           let arg =
             (yojson_of_list yojson_of_memberships) v_memberships
           in
           let bnd = "memberships", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ips then bnds
         else
           let arg = (yojson_of_list yojson_of_ips) v_ips in
           let bnd = "ips", arg in
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
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
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
         match v_default_sni with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_sni", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_address_map -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_address_map

[@@@deriving.end]

let ips ~ip () : ips = { ip }

let memberships ~identifier ~kind () : memberships =
  { identifier; kind }

let cloudflare_address_map ?default_sni ?description ?id ~account_id
    ~enabled ~ips ~memberships () : cloudflare_address_map =
  {
    account_id;
    default_sni;
    description;
    enabled;
    id;
    ips;
    memberships;
  }

type t = {
  tf_name : string;
  account_id : string prop;
  can_delete : bool prop;
  can_modify_ips : bool prop;
  default_sni : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
}

let make ?default_sni ?description ?id ~account_id ~enabled ~ips
    ~memberships __id =
  let __type = "cloudflare_address_map" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       can_delete = Prop.computed __type __id "can_delete";
       can_modify_ips = Prop.computed __type __id "can_modify_ips";
       default_sni = Prop.computed __type __id "default_sni";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_address_map
        (cloudflare_address_map ?default_sni ?description ?id
           ~account_id ~enabled ~ips ~memberships ());
    attrs = __attrs;
  }

let register ?tf_module ?default_sni ?description ?id ~account_id
    ~enabled ~ips ~memberships __id =
  let (r : _ Tf_core.resource) =
    make ?default_sni ?description ?id ~account_id ~enabled ~ips
      ~memberships __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
