(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_ssh_secret_backend_sign = {
  cert_type : string prop option; [@option]
  critical_options : string prop Tf_core.assoc option; [@option]
  extensions : string prop Tf_core.assoc option; [@option]
  id : string prop option; [@option]
  key_id : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  path : string prop;
  public_key : string prop;
  ttl : string prop option; [@option]
  valid_principals : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_ssh_secret_backend_sign) -> ()

let yojson_of_vault_ssh_secret_backend_sign =
  (function
   | {
       cert_type = v_cert_type;
       critical_options = v_critical_options;
       extensions = v_extensions;
       id = v_id;
       key_id = v_key_id;
       name = v_name;
       namespace = v_namespace;
       path = v_path;
       public_key = v_public_key;
       ttl = v_ttl;
       valid_principals = v_valid_principals;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_valid_principals with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "valid_principals", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "ttl", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_public_key in
       ("public_key", arg) :: bnds
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
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_key_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "key_id", arg in
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
       match v_extensions with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "extensions", arg in
         bnd :: bnds
     in
     let bnds =
       match v_critical_options with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "critical_options", arg in
         bnd :: bnds
     in
     let bnds =
       match v_cert_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "cert_type", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_ssh_secret_backend_sign -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_ssh_secret_backend_sign

[@@@deriving.end]

let vault_ssh_secret_backend_sign ?cert_type ?critical_options ?extensions ?id ?key_id ?namespace ?ttl ?valid_principals
  ~name ~path ~public_key () =
  ({ cert_type; critical_options; extensions; id; key_id; name; namespace; path; public_key; ttl; valid_principals }
    : vault_ssh_secret_backend_sign)

type t = {
  tf_name : string;
  cert_type : string prop;
  critical_options : string Tf_core.assoc prop;
  extensions : string Tf_core.assoc prop;
  id : string prop;
  key_id : string prop;
  name : string prop;
  namespace : string prop;
  path : string prop;
  public_key : string prop;
  serial_number : string prop;
  signed_key : string prop;
  ttl : string prop;
  valid_principals : string prop;
}

let make ?cert_type ?critical_options ?extensions ?id ?key_id ?namespace ?ttl ?valid_principals ~name ~path ~public_key
  __id =
  let __type = "vault_ssh_secret_backend_sign" in
  let __attrs =
    ({
       tf_name = __id;
       cert_type = Prop.computed __type __id "cert_type";
       critical_options = Prop.computed __type __id "critical_options";
       extensions = Prop.computed __type __id "extensions";
       id = Prop.computed __type __id "id";
       key_id = Prop.computed __type __id "key_id";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
       public_key = Prop.computed __type __id "public_key";
       serial_number = Prop.computed __type __id "serial_number";
       signed_key = Prop.computed __type __id "signed_key";
       ttl = Prop.computed __type __id "ttl";
       valid_principals = Prop.computed __type __id "valid_principals";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_ssh_secret_backend_sign
        (vault_ssh_secret_backend_sign ?cert_type ?critical_options ?extensions ?id ?key_id ?namespace ?ttl
           ?valid_principals ~name ~path ~public_key ());
    attrs = __attrs;
  }

let register ?tf_module ?cert_type ?critical_options ?extensions ?id ?key_id ?namespace ?ttl ?valid_principals ~name
  ~path ~public_key __id =
  let (r : _ Tf_core.resource) =
    make ?cert_type ?critical_options ?extensions ?id ?key_id ?namespace ?ttl ?valid_principals ~name ~path ~public_key
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
