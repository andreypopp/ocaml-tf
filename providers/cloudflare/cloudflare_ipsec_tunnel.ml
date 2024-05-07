(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_ipsec_tunnel = {
  account_id : string prop option; [@option]
  allow_null_cipher : bool prop option; [@option]
  cloudflare_endpoint : string prop;
  customer_endpoint : string prop;
  description : string prop option; [@option]
  fqdn_id : string prop option; [@option]
  health_check_enabled : bool prop option; [@option]
  health_check_target : string prop option; [@option]
  health_check_type : string prop option; [@option]
  hex_id : string prop option; [@option]
  id : string prop option; [@option]
  interface_address : string prop;
  name : string prop;
  psk : string prop option; [@option]
  remote_id : string prop option; [@option]
  user_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_ipsec_tunnel) -> ()

let yojson_of_cloudflare_ipsec_tunnel =
  (function
   | {
       account_id = v_account_id;
       allow_null_cipher = v_allow_null_cipher;
       cloudflare_endpoint = v_cloudflare_endpoint;
       customer_endpoint = v_customer_endpoint;
       description = v_description;
       fqdn_id = v_fqdn_id;
       health_check_enabled = v_health_check_enabled;
       health_check_target = v_health_check_target;
       health_check_type = v_health_check_type;
       hex_id = v_hex_id;
       id = v_id;
       interface_address = v_interface_address;
       name = v_name;
       psk = v_psk;
       remote_id = v_remote_id;
       user_id = v_user_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_remote_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "remote_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_psk with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "psk", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_hex_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hex_id", arg in
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
         match v_fqdn_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fqdn_id", arg in
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
           yojson_of_prop yojson_of_string v_customer_endpoint
         in
         ("customer_endpoint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cloudflare_endpoint
         in
         ("cloudflare_endpoint", arg) :: bnds
       in
       let bnds =
         match v_allow_null_cipher with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_null_cipher", arg in
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
    : cloudflare_ipsec_tunnel -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_ipsec_tunnel

[@@@deriving.end]

let cloudflare_ipsec_tunnel ?account_id ?allow_null_cipher
    ?description ?fqdn_id ?health_check_enabled ?health_check_target
    ?health_check_type ?hex_id ?id ?psk ?remote_id ?user_id
    ~cloudflare_endpoint ~customer_endpoint ~interface_address ~name
    () : cloudflare_ipsec_tunnel =
  {
    account_id;
    allow_null_cipher;
    cloudflare_endpoint;
    customer_endpoint;
    description;
    fqdn_id;
    health_check_enabled;
    health_check_target;
    health_check_type;
    hex_id;
    id;
    interface_address;
    name;
    psk;
    remote_id;
    user_id;
  }

type t = {
  tf_name : string;
  account_id : string prop;
  allow_null_cipher : bool prop;
  cloudflare_endpoint : string prop;
  customer_endpoint : string prop;
  description : string prop;
  fqdn_id : string prop;
  health_check_enabled : bool prop;
  health_check_target : string prop;
  health_check_type : string prop;
  hex_id : string prop;
  id : string prop;
  interface_address : string prop;
  name : string prop;
  psk : string prop;
  remote_id : string prop;
  user_id : string prop;
}

let make ?account_id ?allow_null_cipher ?description ?fqdn_id
    ?health_check_enabled ?health_check_target ?health_check_type
    ?hex_id ?id ?psk ?remote_id ?user_id ~cloudflare_endpoint
    ~customer_endpoint ~interface_address ~name __id =
  let __type = "cloudflare_ipsec_tunnel" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       allow_null_cipher =
         Prop.computed __type __id "allow_null_cipher";
       cloudflare_endpoint =
         Prop.computed __type __id "cloudflare_endpoint";
       customer_endpoint =
         Prop.computed __type __id "customer_endpoint";
       description = Prop.computed __type __id "description";
       fqdn_id = Prop.computed __type __id "fqdn_id";
       health_check_enabled =
         Prop.computed __type __id "health_check_enabled";
       health_check_target =
         Prop.computed __type __id "health_check_target";
       health_check_type =
         Prop.computed __type __id "health_check_type";
       hex_id = Prop.computed __type __id "hex_id";
       id = Prop.computed __type __id "id";
       interface_address =
         Prop.computed __type __id "interface_address";
       name = Prop.computed __type __id "name";
       psk = Prop.computed __type __id "psk";
       remote_id = Prop.computed __type __id "remote_id";
       user_id = Prop.computed __type __id "user_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_ipsec_tunnel
        (cloudflare_ipsec_tunnel ?account_id ?allow_null_cipher
           ?description ?fqdn_id ?health_check_enabled
           ?health_check_target ?health_check_type ?hex_id ?id ?psk
           ?remote_id ?user_id ~cloudflare_endpoint
           ~customer_endpoint ~interface_address ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?allow_null_cipher ?description
    ?fqdn_id ?health_check_enabled ?health_check_target
    ?health_check_type ?hex_id ?id ?psk ?remote_id ?user_id
    ~cloudflare_endpoint ~customer_endpoint ~interface_address ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?allow_null_cipher ?description ?fqdn_id
      ?health_check_enabled ?health_check_target ?health_check_type
      ?hex_id ?id ?psk ?remote_id ?user_id ~cloudflare_endpoint
      ~customer_endpoint ~interface_address ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
