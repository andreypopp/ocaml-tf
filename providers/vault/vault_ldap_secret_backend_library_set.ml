(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_ldap_secret_backend_library_set = {
  disable_check_in_enforcement : bool prop option; [@option]
  id : string prop option; [@option]
  max_ttl : float prop option; [@option]
  mount : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  service_account_names : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
  ttl : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_ldap_secret_backend_library_set) -> ()

let yojson_of_vault_ldap_secret_backend_library_set =
  (function
   | {
       disable_check_in_enforcement = v_disable_check_in_enforcement;
       id = v_id;
       max_ttl = v_max_ttl;
       mount = v_mount;
       name = v_name;
       namespace = v_namespace;
       service_account_names = v_service_account_names;
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
       if Stdlib.( = ) [] v_service_account_names then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_string)) v_service_account_names in
         let bnd = "service_account_names", arg in
         bnd :: bnds)
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
       match v_mount with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "mount", arg in
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
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_check_in_enforcement with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_check_in_enforcement", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_ldap_secret_backend_library_set -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_ldap_secret_backend_library_set

[@@@deriving.end]

let vault_ldap_secret_backend_library_set ?disable_check_in_enforcement ?id ?max_ttl ?mount ?namespace ?ttl ~name
  ~service_account_names () =
  ({ disable_check_in_enforcement; id; max_ttl; mount; name; namespace; service_account_names; ttl }
    : vault_ldap_secret_backend_library_set)

type t = {
  tf_name : string;
  disable_check_in_enforcement : bool prop;
  id : string prop;
  max_ttl : float prop;
  mount : string prop;
  name : string prop;
  namespace : string prop;
  service_account_names : string list prop;
  ttl : float prop;
}

let make ?disable_check_in_enforcement ?id ?max_ttl ?mount ?namespace ?ttl ~name ~service_account_names __id =
  let __type = "vault_ldap_secret_backend_library_set" in
  let __attrs =
    ({
       tf_name = __id;
       disable_check_in_enforcement = Prop.computed __type __id "disable_check_in_enforcement";
       id = Prop.computed __type __id "id";
       max_ttl = Prop.computed __type __id "max_ttl";
       mount = Prop.computed __type __id "mount";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       service_account_names = Prop.computed __type __id "service_account_names";
       ttl = Prop.computed __type __id "ttl";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_ldap_secret_backend_library_set
        (vault_ldap_secret_backend_library_set ?disable_check_in_enforcement ?id ?max_ttl ?mount ?namespace ?ttl ~name
           ~service_account_names ());
    attrs = __attrs;
  }

let register ?tf_module ?disable_check_in_enforcement ?id ?max_ttl ?mount ?namespace ?ttl ~name ~service_account_names
  __id =
  let (r : _ Tf_core.resource) =
    make ?disable_check_in_enforcement ?id ?max_ttl ?mount ?namespace ?ttl ~name ~service_account_names __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
