(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_active_directory_domain_trust = {
  domain : string prop;
  id : string prop option; [@option]
  project : string prop option; [@option]
  selective_authentication : bool prop option; [@option]
  target_dns_ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  target_domain_name : string prop;
  trust_direction : string prop;
  trust_handshake_secret : string prop;
  trust_type : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_active_directory_domain_trust) -> ()

let yojson_of_google_active_directory_domain_trust =
  (function
   | {
       domain = v_domain;
       id = v_id;
       project = v_project;
       selective_authentication = v_selective_authentication;
       target_dns_ip_addresses = v_target_dns_ip_addresses;
       target_domain_name = v_target_domain_name;
       trust_direction = v_trust_direction;
       trust_handshake_secret = v_trust_handshake_secret;
       trust_type = v_trust_type;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_trust_type in
         ("trust_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_trust_handshake_secret
         in
         ("trust_handshake_secret", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_trust_direction
         in
         ("trust_direction", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_domain_name
         in
         ("target_domain_name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_target_dns_ip_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_target_dns_ip_addresses
           in
           let bnd = "target_dns_ip_addresses", arg in
           bnd :: bnds
       in
       let bnds =
         match v_selective_authentication with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "selective_authentication", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
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
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       `Assoc bnds
    : google_active_directory_domain_trust ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_active_directory_domain_trust

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_active_directory_domain_trust ?id ?project
    ?selective_authentication ?timeouts ~domain
    ~target_dns_ip_addresses ~target_domain_name ~trust_direction
    ~trust_handshake_secret ~trust_type () :
    google_active_directory_domain_trust =
  {
    domain;
    id;
    project;
    selective_authentication;
    target_dns_ip_addresses;
    target_domain_name;
    trust_direction;
    trust_handshake_secret;
    trust_type;
    timeouts;
  }

type t = {
  tf_name : string;
  domain : string prop;
  id : string prop;
  project : string prop;
  selective_authentication : bool prop;
  target_dns_ip_addresses : string list prop;
  target_domain_name : string prop;
  trust_direction : string prop;
  trust_handshake_secret : string prop;
  trust_type : string prop;
}

let make ?id ?project ?selective_authentication ?timeouts ~domain
    ~target_dns_ip_addresses ~target_domain_name ~trust_direction
    ~trust_handshake_secret ~trust_type __id =
  let __type = "google_active_directory_domain_trust" in
  let __attrs =
    ({
       tf_name = __id;
       domain = Prop.computed __type __id "domain";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       selective_authentication =
         Prop.computed __type __id "selective_authentication";
       target_dns_ip_addresses =
         Prop.computed __type __id "target_dns_ip_addresses";
       target_domain_name =
         Prop.computed __type __id "target_domain_name";
       trust_direction = Prop.computed __type __id "trust_direction";
       trust_handshake_secret =
         Prop.computed __type __id "trust_handshake_secret";
       trust_type = Prop.computed __type __id "trust_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_active_directory_domain_trust
        (google_active_directory_domain_trust ?id ?project
           ?selective_authentication ?timeouts ~domain
           ~target_dns_ip_addresses ~target_domain_name
           ~trust_direction ~trust_handshake_secret ~trust_type ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?selective_authentication
    ?timeouts ~domain ~target_dns_ip_addresses ~target_domain_name
    ~trust_direction ~trust_handshake_secret ~trust_type __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?selective_authentication ?timeouts ~domain
      ~target_dns_ip_addresses ~target_domain_name ~trust_direction
      ~trust_handshake_secret ~trust_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
