(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_gre_tunnel = {
  account_id : string prop option; [@option]
  cloudflare_gre_endpoint : string prop;
  customer_gre_endpoint : string prop;
  description : string prop option; [@option]
  health_check_enabled : bool prop option; [@option]
  health_check_target : string prop option; [@option]
  health_check_type : string prop option; [@option]
  id : string prop option; [@option]
  interface_address : string prop;
  mtu : float prop option; [@option]
  name : string prop;
  ttl : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_gre_tunnel) -> ()

let yojson_of_cloudflare_gre_tunnel =
  (function
   | {
       account_id = v_account_id;
       cloudflare_gre_endpoint = v_cloudflare_gre_endpoint;
       customer_gre_endpoint = v_customer_gre_endpoint;
       description = v_description;
       health_check_enabled = v_health_check_enabled;
       health_check_target = v_health_check_target;
       health_check_type = v_health_check_type;
       id = v_id;
       interface_address = v_interface_address;
       mtu = v_mtu;
       name = v_name;
       ttl = v_ttl;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ttl", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_mtu with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "mtu", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_interface_address
         in
         ("interface_address", arg) :: bnds
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
         match v_health_check_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "health_check_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_health_check_target with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "health_check_target", arg in
             bnd :: bnds
       in
       let bnds =
         match v_health_check_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "health_check_enabled", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_customer_gre_endpoint
         in
         ("customer_gre_endpoint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cloudflare_gre_endpoint
         in
         ("cloudflare_gre_endpoint", arg) :: bnds
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
    : cloudflare_gre_tunnel -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_gre_tunnel

[@@@deriving.end]

let cloudflare_gre_tunnel ?account_id ?description
    ?health_check_enabled ?health_check_target ?health_check_type ?id
    ?mtu ?ttl ~cloudflare_gre_endpoint ~customer_gre_endpoint
    ~interface_address ~name () : cloudflare_gre_tunnel =
  {
    account_id;
    cloudflare_gre_endpoint;
    customer_gre_endpoint;
    description;
    health_check_enabled;
    health_check_target;
    health_check_type;
    id;
    interface_address;
    mtu;
    name;
    ttl;
  }

type t = {
  account_id : string prop;
  cloudflare_gre_endpoint : string prop;
  customer_gre_endpoint : string prop;
  description : string prop;
  health_check_enabled : bool prop;
  health_check_target : string prop;
  health_check_type : string prop;
  id : string prop;
  interface_address : string prop;
  mtu : float prop;
  name : string prop;
  ttl : float prop;
}

let make ?account_id ?description ?health_check_enabled
    ?health_check_target ?health_check_type ?id ?mtu ?ttl
    ~cloudflare_gre_endpoint ~customer_gre_endpoint
    ~interface_address ~name __id =
  let __type = "cloudflare_gre_tunnel" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       cloudflare_gre_endpoint =
         Prop.computed __type __id "cloudflare_gre_endpoint";
       customer_gre_endpoint =
         Prop.computed __type __id "customer_gre_endpoint";
       description = Prop.computed __type __id "description";
       health_check_enabled =
         Prop.computed __type __id "health_check_enabled";
       health_check_target =
         Prop.computed __type __id "health_check_target";
       health_check_type =
         Prop.computed __type __id "health_check_type";
       id = Prop.computed __type __id "id";
       interface_address =
         Prop.computed __type __id "interface_address";
       mtu = Prop.computed __type __id "mtu";
       name = Prop.computed __type __id "name";
       ttl = Prop.computed __type __id "ttl";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_gre_tunnel
        (cloudflare_gre_tunnel ?account_id ?description
           ?health_check_enabled ?health_check_target
           ?health_check_type ?id ?mtu ?ttl ~cloudflare_gre_endpoint
           ~customer_gre_endpoint ~interface_address ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?description
    ?health_check_enabled ?health_check_target ?health_check_type ?id
    ?mtu ?ttl ~cloudflare_gre_endpoint ~customer_gre_endpoint
    ~interface_address ~name __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?description ?health_check_enabled
      ?health_check_target ?health_check_type ?id ?mtu ?ttl
      ~cloudflare_gre_endpoint ~customer_gre_endpoint
      ~interface_address ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
