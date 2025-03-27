(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_ssh_secret_backend_ca = {
  backend : string prop option; [@option]
  generate_signing_key : bool prop option; [@option]
  id : string prop option; [@option]
  key_bits : float prop option; [@option]
  key_type : string prop option; [@option]
  namespace : string prop option; [@option]
  private_key : string prop option; [@option]
  public_key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_ssh_secret_backend_ca) -> ()

let yojson_of_vault_ssh_secret_backend_ca =
  (function
   | {
       backend = v_backend;
       generate_signing_key = v_generate_signing_key;
       id = v_id;
       key_bits = v_key_bits;
       key_type = v_key_type;
       namespace = v_namespace;
       private_key = v_private_key;
       public_key = v_public_key;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_public_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "public_key", arg in
         bnd :: bnds
     in
     let bnds =
       match v_private_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "private_key", arg in
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
       match v_key_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "key_type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_key_bits with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "key_bits", arg in
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
       match v_generate_signing_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "generate_signing_key", arg in
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
     `Assoc bnds
    : vault_ssh_secret_backend_ca -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_ssh_secret_backend_ca

[@@@deriving.end]

let vault_ssh_secret_backend_ca ?backend ?generate_signing_key ?id ?key_bits ?key_type ?namespace ?private_key
  ?public_key () =
  ({ backend; generate_signing_key; id; key_bits; key_type; namespace; private_key; public_key }
    : vault_ssh_secret_backend_ca)

type t = {
  tf_name : string;
  backend : string prop;
  generate_signing_key : bool prop;
  id : string prop;
  key_bits : float prop;
  key_type : string prop;
  namespace : string prop;
  private_key : string prop;
  public_key : string prop;
}

let make ?backend ?generate_signing_key ?id ?key_bits ?key_type ?namespace ?private_key ?public_key __id =
  let __type = "vault_ssh_secret_backend_ca" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       generate_signing_key = Prop.computed __type __id "generate_signing_key";
       id = Prop.computed __type __id "id";
       key_bits = Prop.computed __type __id "key_bits";
       key_type = Prop.computed __type __id "key_type";
       namespace = Prop.computed __type __id "namespace";
       private_key = Prop.computed __type __id "private_key";
       public_key = Prop.computed __type __id "public_key";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_ssh_secret_backend_ca
        (vault_ssh_secret_backend_ca ?backend ?generate_signing_key ?id ?key_bits ?key_type ?namespace ?private_key
           ?public_key ());
    attrs = __attrs;
  }

let register ?tf_module ?backend ?generate_signing_key ?id ?key_bits ?key_type ?namespace ?private_key ?public_key __id
    =
  let (r : _ Tf_core.resource) =
    make ?backend ?generate_signing_key ?id ?key_bits ?key_type ?namespace ?private_key ?public_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
