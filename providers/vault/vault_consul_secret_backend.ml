(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_consul_secret_backend = {
  address : string prop;
  bootstrap : bool prop option; [@option]
  ca_cert : string prop option; [@option]
  client_cert : string prop option; [@option]
  client_key : string prop option; [@option]
  default_lease_ttl_seconds : float prop option; [@option]
  description : string prop option; [@option]
  disable_remount : bool prop option; [@option]
  id : string prop option; [@option]
  local : bool prop option; [@option]
  max_lease_ttl_seconds : float prop option; [@option]
  namespace : string prop option; [@option]
  path : string prop option; [@option]
  scheme : string prop option; [@option]
  token : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_consul_secret_backend) -> ()

let yojson_of_vault_consul_secret_backend =
  (function
   | {
       address = v_address;
       bootstrap = v_bootstrap;
       ca_cert = v_ca_cert;
       client_cert = v_client_cert;
       client_key = v_client_key;
       default_lease_ttl_seconds = v_default_lease_ttl_seconds;
       description = v_description;
       disable_remount = v_disable_remount;
       id = v_id;
       local = v_local;
       max_lease_ttl_seconds = v_max_lease_ttl_seconds;
       namespace = v_namespace;
       path = v_path;
       scheme = v_scheme;
       token = v_token;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_token with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "token", arg in
         bnd :: bnds
     in
     let bnds =
       match v_scheme with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "scheme", arg in
         bnd :: bnds
     in
     let bnds =
       match v_path with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "path", arg in
         bnd :: bnds
     in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_lease_ttl_seconds with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_lease_ttl_seconds", arg in
         bnd :: bnds
     in
     let bnds =
       match v_local with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "local", arg in
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
       match v_disable_remount with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_remount", arg in
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
       match v_default_lease_ttl_seconds with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "default_lease_ttl_seconds", arg in
         bnd :: bnds
     in
     let bnds =
       match v_client_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "client_key", arg in
         bnd :: bnds
     in
     let bnds =
       match v_client_cert with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "client_cert", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ca_cert with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "ca_cert", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bootstrap with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "bootstrap", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_address in
       ("address", arg) :: bnds
     in
     `Assoc bnds
    : vault_consul_secret_backend -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_consul_secret_backend

[@@@deriving.end]

let vault_consul_secret_backend ?bootstrap ?ca_cert ?client_cert ?client_key ?default_lease_ttl_seconds ?description
  ?disable_remount ?id ?local ?max_lease_ttl_seconds ?namespace ?path ?scheme ?token ~address () =
  ({
     address;
     bootstrap;
     ca_cert;
     client_cert;
     client_key;
     default_lease_ttl_seconds;
     description;
     disable_remount;
     id;
     local;
     max_lease_ttl_seconds;
     namespace;
     path;
     scheme;
     token;
   }
    : vault_consul_secret_backend)

type t = {
  tf_name : string;
  address : string prop;
  bootstrap : bool prop;
  ca_cert : string prop;
  client_cert : string prop;
  client_key : string prop;
  default_lease_ttl_seconds : float prop;
  description : string prop;
  disable_remount : bool prop;
  id : string prop;
  local : bool prop;
  max_lease_ttl_seconds : float prop;
  namespace : string prop;
  path : string prop;
  scheme : string prop;
  token : string prop;
}

let make ?bootstrap ?ca_cert ?client_cert ?client_key ?default_lease_ttl_seconds ?description ?disable_remount ?id
  ?local ?max_lease_ttl_seconds ?namespace ?path ?scheme ?token ~address __id =
  let __type = "vault_consul_secret_backend" in
  let __attrs =
    ({
       tf_name = __id;
       address = Prop.computed __type __id "address";
       bootstrap = Prop.computed __type __id "bootstrap";
       ca_cert = Prop.computed __type __id "ca_cert";
       client_cert = Prop.computed __type __id "client_cert";
       client_key = Prop.computed __type __id "client_key";
       default_lease_ttl_seconds = Prop.computed __type __id "default_lease_ttl_seconds";
       description = Prop.computed __type __id "description";
       disable_remount = Prop.computed __type __id "disable_remount";
       id = Prop.computed __type __id "id";
       local = Prop.computed __type __id "local";
       max_lease_ttl_seconds = Prop.computed __type __id "max_lease_ttl_seconds";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
       scheme = Prop.computed __type __id "scheme";
       token = Prop.computed __type __id "token";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_consul_secret_backend
        (vault_consul_secret_backend ?bootstrap ?ca_cert ?client_cert ?client_key ?default_lease_ttl_seconds
           ?description ?disable_remount ?id ?local ?max_lease_ttl_seconds ?namespace ?path ?scheme ?token ~address ());
    attrs = __attrs;
  }

let register ?tf_module ?bootstrap ?ca_cert ?client_cert ?client_key ?default_lease_ttl_seconds ?description
  ?disable_remount ?id ?local ?max_lease_ttl_seconds ?namespace ?path ?scheme ?token ~address __id =
  let (r : _ Tf_core.resource) =
    make ?bootstrap ?ca_cert ?client_cert ?client_key ?default_lease_ttl_seconds ?description ?disable_remount ?id
      ?local ?max_lease_ttl_seconds ?namespace ?path ?scheme ?token ~address __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
