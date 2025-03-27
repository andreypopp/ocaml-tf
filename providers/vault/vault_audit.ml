(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_audit = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  local : bool prop option; [@option]
  namespace : string prop option; [@option]
  options : string prop Tf_core.assoc;
  path : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_audit) -> ()

let yojson_of_vault_audit =
  (function
   | {
       description = v_description;
       id = v_id;
       local = v_local;
       namespace = v_namespace;
       options = v_options;
       path = v_path;
       type_ = v_type_;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_type_ in
       ("type", arg) :: bnds
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
       let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v_options in
       ("options", arg) :: bnds
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
       match v_local with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "local", arg in
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
       match v_description with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "description", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_audit -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_audit

[@@@deriving.end]

let vault_audit ?description ?id ?local ?namespace ?path ~options ~type_ () =
  ({ description; id; local; namespace; options; path; type_ } : vault_audit)

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  local : bool prop;
  namespace : string prop;
  options : string Tf_core.assoc prop;
  path : string prop;
  type_ : string prop;
}

let make ?description ?id ?local ?namespace ?path ~options ~type_ __id =
  let __type = "vault_audit" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       local = Prop.computed __type __id "local";
       namespace = Prop.computed __type __id "namespace";
       options = Prop.computed __type __id "options";
       path = Prop.computed __type __id "path";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_audit (vault_audit ?description ?id ?local ?namespace ?path ~options ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?local ?namespace ?path ~options ~type_ __id =
  let (r : _ Tf_core.resource) = make ?description ?id ?local ?namespace ?path ~options ~type_ __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
