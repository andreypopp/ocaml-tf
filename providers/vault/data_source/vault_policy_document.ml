(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule__allowed_parameter = {
  key : string prop;
  value : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__allowed_parameter) -> ()

let yojson_of_rule__allowed_parameter =
  (function
   | { key = v_key; value = v_value } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       if Stdlib.( = ) [] v_value then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_string)) v_value in
         let bnd = "value", arg in
         bnd :: bnds)
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_key in
       ("key", arg) :: bnds
     in
     `Assoc bnds
    : rule__allowed_parameter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__allowed_parameter

[@@@deriving.end]

type rule__denied_parameter = {
  key : string prop;
  value : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__denied_parameter) -> ()

let yojson_of_rule__denied_parameter =
  (function
   | { key = v_key; value = v_value } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       if Stdlib.( = ) [] v_value then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_string)) v_value in
         let bnd = "value", arg in
         bnd :: bnds)
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_key in
       ("key", arg) :: bnds
     in
     `Assoc bnds
    : rule__denied_parameter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__denied_parameter

[@@@deriving.end]

type rule = {
  capabilities : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
  description : string prop option; [@option]
  max_wrapping_ttl : string prop option; [@option]
  min_wrapping_ttl : string prop option; [@option]
  path : string prop;
  required_parameters : string prop list option; [@option]
  allowed_parameter : rule__allowed_parameter list; [@default []] [@yojson_drop_default Stdlib.( = )]
  denied_parameter : rule__denied_parameter list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule) -> ()

let yojson_of_rule =
  (function
   | {
       capabilities = v_capabilities;
       description = v_description;
       max_wrapping_ttl = v_max_wrapping_ttl;
       min_wrapping_ttl = v_min_wrapping_ttl;
       path = v_path;
       required_parameters = v_required_parameters;
       allowed_parameter = v_allowed_parameter;
       denied_parameter = v_denied_parameter;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       if Stdlib.( = ) [] v_denied_parameter then bnds
       else (
         let arg = (yojson_of_list yojson_of_rule__denied_parameter) v_denied_parameter in
         let bnd = "denied_parameter", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_allowed_parameter then bnds
       else (
         let arg = (yojson_of_list yojson_of_rule__allowed_parameter) v_allowed_parameter in
         let bnd = "allowed_parameter", arg in
         bnd :: bnds)
     in
     let bnds =
       match v_required_parameters with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "required_parameters", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_path in
       ("path", arg) :: bnds
     in
     let bnds =
       match v_min_wrapping_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "min_wrapping_ttl", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_wrapping_ttl with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "max_wrapping_ttl", arg in
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
     let bnds =
       if Stdlib.( = ) [] v_capabilities then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_string)) v_capabilities in
         let bnd = "capabilities", arg in
         bnd :: bnds)
     in
     `Assoc bnds
    : rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule

[@@@deriving.end]

type vault_policy_document = {
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  rule : rule list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_policy_document) -> ()

let yojson_of_vault_policy_document =
  (function
   | { id = v_id; namespace = v_namespace; rule = v_rule } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       if Stdlib.( = ) [] v_rule then bnds
       else (
         let arg = (yojson_of_list yojson_of_rule) v_rule in
         let bnd = "rule", arg in
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
       match v_id with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "id", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_policy_document -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_policy_document

[@@@deriving.end]

let rule__allowed_parameter ~key ~value () = ({ key; value } : rule__allowed_parameter)
let rule__denied_parameter ~key ~value () = ({ key; value } : rule__denied_parameter)

let rule ?description ?max_wrapping_ttl ?min_wrapping_ttl ?required_parameters ?(allowed_parameter = [])
  ?(denied_parameter = []) ~capabilities ~path () =
  ({
     capabilities;
     description;
     max_wrapping_ttl;
     min_wrapping_ttl;
     path;
     required_parameters;
     allowed_parameter;
     denied_parameter;
   }
    : rule)

let vault_policy_document ?id ?namespace ?(rule = []) () = ({ id; namespace; rule } : vault_policy_document)

type t = {
  tf_name : string;
  hcl : string prop;
  id : string prop;
  namespace : string prop;
}

let make ?id ?namespace ?(rule = []) __id =
  let __type = "vault_policy_document" in
  let __attrs =
    ({
       tf_name = __id;
       hcl = Prop.computed __type __id "hcl";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_vault_policy_document (vault_policy_document ?id ?namespace ~rule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ?(rule = []) __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ~rule __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
