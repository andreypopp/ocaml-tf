(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_pki_secret_backend_issuer = {
  backend : string prop;
  disable_critical_extension_checks : bool prop option; [@option]
  disable_name_checks : bool prop option; [@option]
  disable_name_constraint_checks : bool prop option; [@option]
  disable_path_length_checks : bool prop option; [@option]
  id : string prop option; [@option]
  issuer_ref : string prop;
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_pki_secret_backend_issuer) -> ()

let yojson_of_vault_pki_secret_backend_issuer =
  (function
   | {
       backend = v_backend;
       disable_critical_extension_checks = v_disable_critical_extension_checks;
       disable_name_checks = v_disable_name_checks;
       disable_name_constraint_checks = v_disable_name_constraint_checks;
       disable_path_length_checks = v_disable_path_length_checks;
       id = v_id;
       issuer_ref = v_issuer_ref;
       namespace = v_namespace;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_issuer_ref in
       ("issuer_ref", arg) :: bnds
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
       match v_disable_path_length_checks with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_path_length_checks", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_name_constraint_checks with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_name_constraint_checks", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_name_checks with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_name_checks", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_critical_extension_checks with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_critical_extension_checks", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     `Assoc bnds
    : vault_pki_secret_backend_issuer -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_pki_secret_backend_issuer

[@@@deriving.end]

let vault_pki_secret_backend_issuer ?disable_critical_extension_checks ?disable_name_checks
  ?disable_name_constraint_checks ?disable_path_length_checks ?id ?namespace ~backend ~issuer_ref () =
  ({
     backend;
     disable_critical_extension_checks;
     disable_name_checks;
     disable_name_constraint_checks;
     disable_path_length_checks;
     id;
     issuer_ref;
     namespace;
   }
    : vault_pki_secret_backend_issuer)

type t = {
  tf_name : string;
  backend : string prop;
  ca_chain : string list prop;
  certificate : string prop;
  disable_critical_extension_checks : bool prop;
  disable_name_checks : bool prop;
  disable_name_constraint_checks : bool prop;
  disable_path_length_checks : bool prop;
  id : string prop;
  issuer_id : string prop;
  issuer_name : string prop;
  issuer_ref : string prop;
  key_id : string prop;
  leaf_not_after_behavior : string prop;
  manual_chain : string list prop;
  namespace : string prop;
  usage : string prop;
}

let make ?disable_critical_extension_checks ?disable_name_checks ?disable_name_constraint_checks
  ?disable_path_length_checks ?id ?namespace ~backend ~issuer_ref __id =
  let __type = "vault_pki_secret_backend_issuer" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       ca_chain = Prop.computed __type __id "ca_chain";
       certificate = Prop.computed __type __id "certificate";
       disable_critical_extension_checks = Prop.computed __type __id "disable_critical_extension_checks";
       disable_name_checks = Prop.computed __type __id "disable_name_checks";
       disable_name_constraint_checks = Prop.computed __type __id "disable_name_constraint_checks";
       disable_path_length_checks = Prop.computed __type __id "disable_path_length_checks";
       id = Prop.computed __type __id "id";
       issuer_id = Prop.computed __type __id "issuer_id";
       issuer_name = Prop.computed __type __id "issuer_name";
       issuer_ref = Prop.computed __type __id "issuer_ref";
       key_id = Prop.computed __type __id "key_id";
       leaf_not_after_behavior = Prop.computed __type __id "leaf_not_after_behavior";
       manual_chain = Prop.computed __type __id "manual_chain";
       namespace = Prop.computed __type __id "namespace";
       usage = Prop.computed __type __id "usage";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_pki_secret_backend_issuer
        (vault_pki_secret_backend_issuer ?disable_critical_extension_checks ?disable_name_checks
           ?disable_name_constraint_checks ?disable_path_length_checks ?id ?namespace ~backend ~issuer_ref ());
    attrs = __attrs;
  }

let register ?tf_module ?disable_critical_extension_checks ?disable_name_checks ?disable_name_constraint_checks
  ?disable_path_length_checks ?id ?namespace ~backend ~issuer_ref __id =
  let (r : _ Tf_core.resource) =
    make ?disable_critical_extension_checks ?disable_name_checks ?disable_name_constraint_checks
      ?disable_path_length_checks ?id ?namespace ~backend ~issuer_ref __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
