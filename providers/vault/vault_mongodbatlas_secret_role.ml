(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_mongodbatlas_secret_role = {
  cidr_blocks : string prop list option; [@option]
  id : string prop option; [@option]
  ip_addresses : string prop list option; [@option]
  max_ttl : string prop option; [@option]
  mount : string prop;
  name : string prop;
  namespace : string prop option; [@option]
  organization_id : string prop option; [@option]
  project_id : string prop option; [@option]
  project_roles : string prop list option; [@option]
  roles : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
  ttl : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_mongodbatlas_secret_role) -> ()

let yojson_of_vault_mongodbatlas_secret_role =
  (function
   | {
       cidr_blocks = v_cidr_blocks;
       id = v_id;
       ip_addresses = v_ip_addresses;
       max_ttl = v_max_ttl;
       mount = v_mount;
       name = v_name;
       namespace = v_namespace;
       organization_id = v_organization_id;
       project_id = v_project_id;
       project_roles = v_project_roles;
       roles = v_roles;
       ttl = v_ttl;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "ttl", arg in
         bnd :: bnds
     in
     let bnds =
       if Stdlib.( = ) [] v_roles then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_string)) v_roles in
         let bnd = "roles", arg in
         bnd :: bnds)
     in
     let bnds =
       match v_project_roles with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "project_roles", arg in
         bnd :: bnds
     in
     let bnds =
       match v_project_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "project_id", arg in
         bnd :: bnds
     in
     let bnds =
       match v_organization_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "organization_id", arg in
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
       let arg = yojson_of_prop yojson_of_string v_mount in
       ("mount", arg) :: bnds
     in
     let bnds =
       match v_max_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "max_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ip_addresses with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "ip_addresses", arg in
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
       match v_cidr_blocks with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "cidr_blocks", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_mongodbatlas_secret_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_mongodbatlas_secret_role

[@@@deriving.end]

let vault_mongodbatlas_secret_role ?cidr_blocks ?id ?ip_addresses ?max_ttl ?namespace ?organization_id ?project_id
  ?project_roles ?ttl ~mount ~name ~roles () =
  ({
     cidr_blocks;
     id;
     ip_addresses;
     max_ttl;
     mount;
     name;
     namespace;
     organization_id;
     project_id;
     project_roles;
     roles;
     ttl;
   }
    : vault_mongodbatlas_secret_role)

type t = {
  tf_name : string;
  cidr_blocks : string list prop;
  id : string prop;
  ip_addresses : string list prop;
  max_ttl : string prop;
  mount : string prop;
  name : string prop;
  namespace : string prop;
  organization_id : string prop;
  project_id : string prop;
  project_roles : string list prop;
  roles : string list prop;
  ttl : string prop;
}

let make ?cidr_blocks ?id ?ip_addresses ?max_ttl ?namespace ?organization_id ?project_id ?project_roles ?ttl ~mount
  ~name ~roles __id =
  let __type = "vault_mongodbatlas_secret_role" in
  let __attrs =
    ({
       tf_name = __id;
       cidr_blocks = Prop.computed __type __id "cidr_blocks";
       id = Prop.computed __type __id "id";
       ip_addresses = Prop.computed __type __id "ip_addresses";
       max_ttl = Prop.computed __type __id "max_ttl";
       mount = Prop.computed __type __id "mount";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       organization_id = Prop.computed __type __id "organization_id";
       project_id = Prop.computed __type __id "project_id";
       project_roles = Prop.computed __type __id "project_roles";
       roles = Prop.computed __type __id "roles";
       ttl = Prop.computed __type __id "ttl";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_mongodbatlas_secret_role
        (vault_mongodbatlas_secret_role ?cidr_blocks ?id ?ip_addresses ?max_ttl ?namespace ?organization_id ?project_id
           ?project_roles ?ttl ~mount ~name ~roles ());
    attrs = __attrs;
  }

let register ?tf_module ?cidr_blocks ?id ?ip_addresses ?max_ttl ?namespace ?organization_id ?project_id ?project_roles
  ?ttl ~mount ~name ~roles __id =
  let (r : _ Tf_core.resource) =
    make ?cidr_blocks ?id ?ip_addresses ?max_ttl ?namespace ?organization_id ?project_id ?project_roles ?ttl ~mount
      ~name ~roles __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
