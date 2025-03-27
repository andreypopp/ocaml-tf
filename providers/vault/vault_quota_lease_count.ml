(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_quota_lease_count = {
  id : string prop option; [@option]
  inheritable : bool prop option; [@option]
  max_leases : float prop;
  name : string prop;
  namespace : string prop option; [@option]
  path : string prop option; [@option]
  role : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_quota_lease_count) -> ()

let yojson_of_vault_quota_lease_count =
  (function
   | {
       id = v_id;
       inheritable = v_inheritable;
       max_leases = v_max_leases;
       name = v_name;
       namespace = v_namespace;
       path = v_path;
       role = v_role;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_role with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "role", arg in
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
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_float v_max_leases in
       ("max_leases", arg) :: bnds
     in
     let bnds =
       match v_inheritable with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "inheritable", arg in
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
     `Assoc bnds
    : vault_quota_lease_count -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_quota_lease_count

[@@@deriving.end]

let vault_quota_lease_count ?id ?inheritable ?namespace ?path ?role ~max_leases ~name () =
  ({ id; inheritable; max_leases; name; namespace; path; role } : vault_quota_lease_count)

type t = {
  tf_name : string;
  id : string prop;
  inheritable : bool prop;
  max_leases : float prop;
  name : string prop;
  namespace : string prop;
  path : string prop;
  role : string prop;
}

let make ?id ?inheritable ?namespace ?path ?role ~max_leases ~name __id =
  let __type = "vault_quota_lease_count" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       inheritable = Prop.computed __type __id "inheritable";
       max_leases = Prop.computed __type __id "max_leases";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_quota_lease_count
        (vault_quota_lease_count ?id ?inheritable ?namespace ?path ?role ~max_leases ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?inheritable ?namespace ?path ?role ~max_leases ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?inheritable ?namespace ?path ?role ~max_leases ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
