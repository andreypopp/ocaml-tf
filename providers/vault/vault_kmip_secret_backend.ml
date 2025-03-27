(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_kmip_secret_backend = {
  default_tls_client_key_bits : float prop option; [@option]
  default_tls_client_key_type : string prop option; [@option]
  default_tls_client_ttl : float prop option; [@option]
  description : string prop option; [@option]
  disable_remount : bool prop option; [@option]
  id : string prop option; [@option]
  listen_addrs : string prop list option; [@option]
  namespace : string prop option; [@option]
  path : string prop;
  server_hostnames : string prop list option; [@option]
  server_ips : string prop list option; [@option]
  tls_ca_key_bits : float prop option; [@option]
  tls_ca_key_type : string prop option; [@option]
  tls_min_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_kmip_secret_backend) -> ()

let yojson_of_vault_kmip_secret_backend =
  (function
   | {
       default_tls_client_key_bits = v_default_tls_client_key_bits;
       default_tls_client_key_type = v_default_tls_client_key_type;
       default_tls_client_ttl = v_default_tls_client_ttl;
       description = v_description;
       disable_remount = v_disable_remount;
       id = v_id;
       listen_addrs = v_listen_addrs;
       namespace = v_namespace;
       path = v_path;
       server_hostnames = v_server_hostnames;
       server_ips = v_server_ips;
       tls_ca_key_bits = v_tls_ca_key_bits;
       tls_ca_key_type = v_tls_ca_key_type;
       tls_min_version = v_tls_min_version;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_tls_min_version with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "tls_min_version", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tls_ca_key_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "tls_ca_key_type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tls_ca_key_bits with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "tls_ca_key_bits", arg in
         bnd :: bnds
     in
     let bnds =
       match v_server_ips with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "server_ips", arg in
         bnd :: bnds
     in
     let bnds =
       match v_server_hostnames with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "server_hostnames", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_path in
       ("path", arg) :: bnds
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
       match v_listen_addrs with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "listen_addrs", arg in
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
       match v_default_tls_client_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "default_tls_client_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_default_tls_client_key_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "default_tls_client_key_type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_default_tls_client_key_bits with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "default_tls_client_key_bits", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_kmip_secret_backend -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_kmip_secret_backend

[@@@deriving.end]

let vault_kmip_secret_backend ?default_tls_client_key_bits ?default_tls_client_key_type ?default_tls_client_ttl
  ?description ?disable_remount ?id ?listen_addrs ?namespace ?server_hostnames ?server_ips ?tls_ca_key_bits
  ?tls_ca_key_type ?tls_min_version ~path () =
  ({
     default_tls_client_key_bits;
     default_tls_client_key_type;
     default_tls_client_ttl;
     description;
     disable_remount;
     id;
     listen_addrs;
     namespace;
     path;
     server_hostnames;
     server_ips;
     tls_ca_key_bits;
     tls_ca_key_type;
     tls_min_version;
   }
    : vault_kmip_secret_backend)

type t = {
  tf_name : string;
  default_tls_client_key_bits : float prop;
  default_tls_client_key_type : string prop;
  default_tls_client_ttl : float prop;
  description : string prop;
  disable_remount : bool prop;
  id : string prop;
  listen_addrs : string list prop;
  namespace : string prop;
  path : string prop;
  server_hostnames : string list prop;
  server_ips : string list prop;
  tls_ca_key_bits : float prop;
  tls_ca_key_type : string prop;
  tls_min_version : string prop;
}

let make ?default_tls_client_key_bits ?default_tls_client_key_type ?default_tls_client_ttl ?description ?disable_remount
  ?id ?listen_addrs ?namespace ?server_hostnames ?server_ips ?tls_ca_key_bits ?tls_ca_key_type ?tls_min_version ~path
  __id =
  let __type = "vault_kmip_secret_backend" in
  let __attrs =
    ({
       tf_name = __id;
       default_tls_client_key_bits = Prop.computed __type __id "default_tls_client_key_bits";
       default_tls_client_key_type = Prop.computed __type __id "default_tls_client_key_type";
       default_tls_client_ttl = Prop.computed __type __id "default_tls_client_ttl";
       description = Prop.computed __type __id "description";
       disable_remount = Prop.computed __type __id "disable_remount";
       id = Prop.computed __type __id "id";
       listen_addrs = Prop.computed __type __id "listen_addrs";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
       server_hostnames = Prop.computed __type __id "server_hostnames";
       server_ips = Prop.computed __type __id "server_ips";
       tls_ca_key_bits = Prop.computed __type __id "tls_ca_key_bits";
       tls_ca_key_type = Prop.computed __type __id "tls_ca_key_type";
       tls_min_version = Prop.computed __type __id "tls_min_version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_kmip_secret_backend
        (vault_kmip_secret_backend ?default_tls_client_key_bits ?default_tls_client_key_type ?default_tls_client_ttl
           ?description ?disable_remount ?id ?listen_addrs ?namespace ?server_hostnames ?server_ips ?tls_ca_key_bits
           ?tls_ca_key_type ?tls_min_version ~path ());
    attrs = __attrs;
  }

let register ?tf_module ?default_tls_client_key_bits ?default_tls_client_key_type ?default_tls_client_ttl ?description
  ?disable_remount ?id ?listen_addrs ?namespace ?server_hostnames ?server_ips ?tls_ca_key_bits ?tls_ca_key_type
  ?tls_min_version ~path __id =
  let (r : _ Tf_core.resource) =
    make ?default_tls_client_key_bits ?default_tls_client_key_type ?default_tls_client_ttl ?description ?disable_remount
      ?id ?listen_addrs ?namespace ?server_hostnames ?server_ips ?tls_ca_key_bits ?tls_ca_key_type ?tls_min_version
      ~path __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
