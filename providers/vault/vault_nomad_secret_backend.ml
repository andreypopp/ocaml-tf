(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_nomad_secret_backend = {
  address : string prop option; [@option]
  backend : string prop option; [@option]
  ca_cert : string prop option; [@option]
  client_cert : string prop option; [@option]
  client_key : string prop option; [@option]
  default_lease_ttl_seconds : float prop option; [@option]
  description : string prop option; [@option]
  disable_remount : bool prop option; [@option]
  id : string prop option; [@option]
  local : bool prop option; [@option]
  max_lease_ttl_seconds : float prop option; [@option]
  max_token_name_length : float prop option; [@option]
  max_ttl : float prop option; [@option]
  namespace : string prop option; [@option]
  token : string prop option; [@option]
  ttl : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_nomad_secret_backend) -> ()

let yojson_of_vault_nomad_secret_backend =
  (function
   | {
       address = v_address;
       backend = v_backend;
       ca_cert = v_ca_cert;
       client_cert = v_client_cert;
       client_key = v_client_key;
       default_lease_ttl_seconds = v_default_lease_ttl_seconds;
       description = v_description;
       disable_remount = v_disable_remount;
       id = v_id;
       local = v_local;
       max_lease_ttl_seconds = v_max_lease_ttl_seconds;
       max_token_name_length = v_max_token_name_length;
       max_ttl = v_max_ttl;
       namespace = v_namespace;
       token = v_token;
       ttl = v_ttl;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_token with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "token", arg in
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
       match v_max_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_token_name_length with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_token_name_length", arg in
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
       match v_backend with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "backend", arg in
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
    : vault_nomad_secret_backend -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_nomad_secret_backend

[@@@deriving.end]

let vault_nomad_secret_backend ?address ?backend ?ca_cert ?client_cert ?client_key ?default_lease_ttl_seconds
  ?description ?disable_remount ?id ?local ?max_lease_ttl_seconds ?max_token_name_length ?max_ttl ?namespace ?token ?ttl
  () =
  ({
     address;
     backend;
     ca_cert;
     client_cert;
     client_key;
     default_lease_ttl_seconds;
     description;
     disable_remount;
     id;
     local;
     max_lease_ttl_seconds;
     max_token_name_length;
     max_ttl;
     namespace;
     token;
     ttl;
   }
    : vault_nomad_secret_backend)

type t = {
  tf_name : string;
  address : string prop;
  backend : string prop;
  ca_cert : string prop;
  client_cert : string prop;
  client_key : string prop;
  default_lease_ttl_seconds : float prop;
  description : string prop;
  disable_remount : bool prop;
  id : string prop;
  local : bool prop;
  max_lease_ttl_seconds : float prop;
  max_token_name_length : float prop;
  max_ttl : float prop;
  namespace : string prop;
  token : string prop;
  ttl : float prop;
}

let make ?address ?backend ?ca_cert ?client_cert ?client_key ?default_lease_ttl_seconds ?description ?disable_remount
  ?id ?local ?max_lease_ttl_seconds ?max_token_name_length ?max_ttl ?namespace ?token ?ttl __id =
  let __type = "vault_nomad_secret_backend" in
  let __attrs =
    ({
       tf_name = __id;
       address = Prop.computed __type __id "address";
       backend = Prop.computed __type __id "backend";
       ca_cert = Prop.computed __type __id "ca_cert";
       client_cert = Prop.computed __type __id "client_cert";
       client_key = Prop.computed __type __id "client_key";
       default_lease_ttl_seconds = Prop.computed __type __id "default_lease_ttl_seconds";
       description = Prop.computed __type __id "description";
       disable_remount = Prop.computed __type __id "disable_remount";
       id = Prop.computed __type __id "id";
       local = Prop.computed __type __id "local";
       max_lease_ttl_seconds = Prop.computed __type __id "max_lease_ttl_seconds";
       max_token_name_length = Prop.computed __type __id "max_token_name_length";
       max_ttl = Prop.computed __type __id "max_ttl";
       namespace = Prop.computed __type __id "namespace";
       token = Prop.computed __type __id "token";
       ttl = Prop.computed __type __id "ttl";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_nomad_secret_backend
        (vault_nomad_secret_backend ?address ?backend ?ca_cert ?client_cert ?client_key ?default_lease_ttl_seconds
           ?description ?disable_remount ?id ?local ?max_lease_ttl_seconds ?max_token_name_length ?max_ttl ?namespace
           ?token ?ttl ());
    attrs = __attrs;
  }

let register ?tf_module ?address ?backend ?ca_cert ?client_cert ?client_key ?default_lease_ttl_seconds ?description
  ?disable_remount ?id ?local ?max_lease_ttl_seconds ?max_token_name_length ?max_ttl ?namespace ?token ?ttl __id =
  let (r : _ Tf_core.resource) =
    make ?address ?backend ?ca_cert ?client_cert ?client_key ?default_lease_ttl_seconds ?description ?disable_remount
      ?id ?local ?max_lease_ttl_seconds ?max_token_name_length ?max_ttl ?namespace ?token ?ttl __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
