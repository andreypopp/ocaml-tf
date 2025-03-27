(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_mongodbatlas_secret_backend = {
  id : string prop option; [@option]
  mount : string prop;
  namespace : string prop option; [@option]
  private_key : string prop;
  public_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_mongodbatlas_secret_backend) -> ()

let yojson_of_vault_mongodbatlas_secret_backend =
  (function
   | { id = v_id; mount = v_mount; namespace = v_namespace; private_key = v_private_key; public_key = v_public_key } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_public_key in
       ("public_key", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_private_key in
       ("private_key", arg) :: bnds
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
       let arg = yojson_of_prop yojson_of_string v_mount in
       ("mount", arg) :: bnds
     in
     let bnds =
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_mongodbatlas_secret_backend -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_mongodbatlas_secret_backend

[@@@deriving.end]

let vault_mongodbatlas_secret_backend ?id ?namespace ~mount ~private_key ~public_key () =
  ({ id; mount; namespace; private_key; public_key } : vault_mongodbatlas_secret_backend)

type t = {
  tf_name : string;
  id : string prop;
  mount : string prop;
  namespace : string prop;
  path : string prop;
  private_key : string prop;
  public_key : string prop;
}

let make ?id ?namespace ~mount ~private_key ~public_key __id =
  let __type = "vault_mongodbatlas_secret_backend" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       mount = Prop.computed __type __id "mount";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
       private_key = Prop.computed __type __id "private_key";
       public_key = Prop.computed __type __id "public_key";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_mongodbatlas_secret_backend
        (vault_mongodbatlas_secret_backend ?id ?namespace ~mount ~private_key ~public_key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ~mount ~private_key ~public_key __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ~mount ~private_key ~public_key __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
