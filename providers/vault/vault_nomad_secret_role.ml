(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_nomad_secret_role = {
  backend : string prop;
  global : bool prop option; [@option]
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  policies : string prop list option; [@option]
  role : string prop;
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_nomad_secret_role) -> ()

let yojson_of_vault_nomad_secret_role =
  (function
   | {
       backend = v_backend;
       global = v_global;
       id = v_id;
       namespace = v_namespace;
       policies = v_policies;
       role = v_role;
       type_ = v_type_;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_type_ with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "type", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_role in
       ("role", arg) :: bnds
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
       match v_global with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "global", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     `Assoc bnds
    : vault_nomad_secret_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_nomad_secret_role

[@@@deriving.end]

let vault_nomad_secret_role ?global ?id ?namespace ?policies ?type_ ~backend ~role () =
  ({ backend; global; id; namespace; policies; role; type_ } : vault_nomad_secret_role)

type t = {
  tf_name : string;
  backend : string prop;
  global : bool prop;
  id : string prop;
  namespace : string prop;
  policies : string list prop;
  role : string prop;
  type_ : string prop;
}

let make ?global ?id ?namespace ?policies ?type_ ~backend ~role __id =
  let __type = "vault_nomad_secret_role" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       global = Prop.computed __type __id "global";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       policies = Prop.computed __type __id "policies";
       role = Prop.computed __type __id "role";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_nomad_secret_role
        (vault_nomad_secret_role ?global ?id ?namespace ?policies ?type_ ~backend ~role ());
    attrs = __attrs;
  }

let register ?tf_module ?global ?id ?namespace ?policies ?type_ ~backend ~role __id =
  let (r : _ Tf_core.resource) = make ?global ?id ?namespace ?policies ?type_ ~backend ~role __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
