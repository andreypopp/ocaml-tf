(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_transform_transformation = {
  allowed_roles : string prop list option; [@option]
  deletion_allowed : bool prop option; [@option]
  id : string prop option; [@option]
  masking_character : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  path : string prop;
  template : string prop option; [@option]
  templates : string prop list option; [@option]
  tweak_source : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_transform_transformation) -> ()

let yojson_of_vault_transform_transformation =
  (function
   | {
       allowed_roles = v_allowed_roles;
       deletion_allowed = v_deletion_allowed;
       id = v_id;
       masking_character = v_masking_character;
       name = v_name;
       namespace = v_namespace;
       path = v_path;
       template = v_template;
       templates = v_templates;
       tweak_source = v_tweak_source;
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
       match v_tweak_source with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "tweak_source", arg in
         bnd :: bnds
     in
     let bnds =
       match v_templates with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "templates", arg in
         bnd :: bnds
     in
     let bnds =
       match v_template with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "template", arg in
         bnd :: bnds
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
       match v_masking_character with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "masking_character", arg in
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
       match v_deletion_allowed with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "deletion_allowed", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_roles with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_roles", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_transform_transformation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_transform_transformation

[@@@deriving.end]

let vault_transform_transformation ?allowed_roles ?deletion_allowed ?id ?masking_character ?namespace ?template
  ?templates ?tweak_source ?type_ ~name ~path () =
  ({
     allowed_roles;
     deletion_allowed;
     id;
     masking_character;
     name;
     namespace;
     path;
     template;
     templates;
     tweak_source;
     type_;
   }
    : vault_transform_transformation)

type t = {
  tf_name : string;
  allowed_roles : string list prop;
  deletion_allowed : bool prop;
  id : string prop;
  masking_character : string prop;
  name : string prop;
  namespace : string prop;
  path : string prop;
  template : string prop;
  templates : string list prop;
  tweak_source : string prop;
  type_ : string prop;
}

let make ?allowed_roles ?deletion_allowed ?id ?masking_character ?namespace ?template ?templates ?tweak_source ?type_
  ~name ~path __id =
  let __type = "vault_transform_transformation" in
  let __attrs =
    ({
       tf_name = __id;
       allowed_roles = Prop.computed __type __id "allowed_roles";
       deletion_allowed = Prop.computed __type __id "deletion_allowed";
       id = Prop.computed __type __id "id";
       masking_character = Prop.computed __type __id "masking_character";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
       template = Prop.computed __type __id "template";
       templates = Prop.computed __type __id "templates";
       tweak_source = Prop.computed __type __id "tweak_source";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_transform_transformation
        (vault_transform_transformation ?allowed_roles ?deletion_allowed ?id ?masking_character ?namespace ?template
           ?templates ?tweak_source ?type_ ~name ~path ());
    attrs = __attrs;
  }

let register ?tf_module ?allowed_roles ?deletion_allowed ?id ?masking_character ?namespace ?template ?templates
  ?tweak_source ?type_ ~name ~path __id =
  let (r : _ Tf_core.resource) =
    make ?allowed_roles ?deletion_allowed ?id ?masking_character ?namespace ?template ?templates ?tweak_source ?type_
      ~name ~path __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
