(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_terraform_cloud_secret_backend = {
  address : string prop option; [@option]
  backend : string prop option; [@option]
  base_path : string prop option; [@option]
  default_lease_ttl_seconds : float prop option; [@option]
  description : string prop option; [@option]
  disable_remount : bool prop option; [@option]
  id : string prop option; [@option]
  max_lease_ttl_seconds : float prop option; [@option]
  namespace : string prop option; [@option]
  token : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_terraform_cloud_secret_backend) -> ()

let yojson_of_vault_terraform_cloud_secret_backend =
  (function
   | {
       address = v_address;
       backend = v_backend;
       base_path = v_base_path;
       default_lease_ttl_seconds = v_default_lease_ttl_seconds;
       description = v_description;
       disable_remount = v_disable_remount;
       id = v_id;
       max_lease_ttl_seconds = v_max_lease_ttl_seconds;
       namespace = v_namespace;
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
       match v_base_path with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "base_path", arg in
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
    : vault_terraform_cloud_secret_backend -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_terraform_cloud_secret_backend

[@@@deriving.end]

let vault_terraform_cloud_secret_backend ?address ?backend ?base_path ?default_lease_ttl_seconds ?description
  ?disable_remount ?id ?max_lease_ttl_seconds ?namespace ?token () =
  ({
     address;
     backend;
     base_path;
     default_lease_ttl_seconds;
     description;
     disable_remount;
     id;
     max_lease_ttl_seconds;
     namespace;
     token;
   }
    : vault_terraform_cloud_secret_backend)

type t = {
  tf_name : string;
  address : string prop;
  backend : string prop;
  base_path : string prop;
  default_lease_ttl_seconds : float prop;
  description : string prop;
  disable_remount : bool prop;
  id : string prop;
  max_lease_ttl_seconds : float prop;
  namespace : string prop;
  token : string prop;
}

let make ?address ?backend ?base_path ?default_lease_ttl_seconds ?description ?disable_remount ?id
  ?max_lease_ttl_seconds ?namespace ?token __id =
  let __type = "vault_terraform_cloud_secret_backend" in
  let __attrs =
    ({
       tf_name = __id;
       address = Prop.computed __type __id "address";
       backend = Prop.computed __type __id "backend";
       base_path = Prop.computed __type __id "base_path";
       default_lease_ttl_seconds = Prop.computed __type __id "default_lease_ttl_seconds";
       description = Prop.computed __type __id "description";
       disable_remount = Prop.computed __type __id "disable_remount";
       id = Prop.computed __type __id "id";
       max_lease_ttl_seconds = Prop.computed __type __id "max_lease_ttl_seconds";
       namespace = Prop.computed __type __id "namespace";
       token = Prop.computed __type __id "token";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_terraform_cloud_secret_backend
        (vault_terraform_cloud_secret_backend ?address ?backend ?base_path ?default_lease_ttl_seconds ?description
           ?disable_remount ?id ?max_lease_ttl_seconds ?namespace ?token ());
    attrs = __attrs;
  }

let register ?tf_module ?address ?backend ?base_path ?default_lease_ttl_seconds ?description ?disable_remount ?id
  ?max_lease_ttl_seconds ?namespace ?token __id =
  let (r : _ Tf_core.resource) =
    make ?address ?backend ?base_path ?default_lease_ttl_seconds ?description ?disable_remount ?id
      ?max_lease_ttl_seconds ?namespace ?token __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
