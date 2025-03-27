(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_github_team = {
  backend : string prop option; [@option]
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  policies : string prop list option; [@option]
  team : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_github_team) -> ()

let yojson_of_vault_github_team =
  (function
   | { backend = v_backend; id = v_id; namespace = v_namespace; policies = v_policies; team = v_team } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_team in
       ("team", arg) :: bnds
     in
     let bnds =
       match v_policies with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "policies", arg in
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
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
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
    : vault_github_team -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_github_team

[@@@deriving.end]

let vault_github_team ?backend ?id ?namespace ?policies ~team () =
  ({ backend; id; namespace; policies; team } : vault_github_team)

type t = {
  tf_name : string;
  backend : string prop;
  id : string prop;
  namespace : string prop;
  policies : string list prop;
  team : string prop;
}

let make ?backend ?id ?namespace ?policies ~team __id =
  let __type = "vault_github_team" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       policies = Prop.computed __type __id "policies";
       team = Prop.computed __type __id "team";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_github_team (vault_github_team ?backend ?id ?namespace ?policies ~team ());
    attrs = __attrs;
  }

let register ?tf_module ?backend ?id ?namespace ?policies ~team __id =
  let (r : _ Tf_core.resource) = make ?backend ?id ?namespace ?policies ~team __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
