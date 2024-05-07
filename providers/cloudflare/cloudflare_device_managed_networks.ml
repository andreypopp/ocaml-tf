(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type config = { sha256 : string prop; tls_sockaddr : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : config) -> ()

let yojson_of_config =
  (function
   | { sha256 = v_sha256; tls_sockaddr = v_tls_sockaddr } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tls_sockaddr in
         ("tls_sockaddr", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sha256 in
         ("sha256", arg) :: bnds
       in
       `Assoc bnds
    : config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config

[@@@deriving.end]

type cloudflare_device_managed_networks = {
  account_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  type_ : string prop; [@key "type"]
  config : config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_device_managed_networks) -> ()

let yojson_of_cloudflare_device_managed_networks =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       name = v_name;
       type_ = v_type_;
       config = v_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_config v_config in
         ("config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_device_managed_networks ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_device_managed_networks

[@@@deriving.end]

let config ~sha256 ~tls_sockaddr () : config =
  { sha256; tls_sockaddr }

let cloudflare_device_managed_networks ?id ~account_id ~name ~type_
    ~config () : cloudflare_device_managed_networks =
  { account_id; id; name; type_; config }

type t = {
  tf_name : string;
  account_id : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
}

let make ?id ~account_id ~name ~type_ ~config __id =
  let __type = "cloudflare_device_managed_networks" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_device_managed_networks
        (cloudflare_device_managed_networks ?id ~account_id ~name
           ~type_ ~config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id ~name ~type_ ~config __id =
  let (r : _ Tf_core.resource) =
    make ?id ~account_id ~name ~type_ ~config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
