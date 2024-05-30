(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type autolink_references = {
  is_alphanumeric : bool prop;
  key_prefix : string prop;
  target_url_template : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : autolink_references) -> ()

let yojson_of_autolink_references =
  (function
   | {
       is_alphanumeric = v_is_alphanumeric;
       key_prefix = v_key_prefix;
       target_url_template = v_target_url_template;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_url_template
         in
         ("target_url_template", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_prefix in
         ("key_prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_is_alphanumeric in
         ("is_alphanumeric", arg) :: bnds
       in
       `Assoc bnds
    : autolink_references -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_autolink_references

[@@@deriving.end]

type github_repository_autolink_references = {
  id : string prop option; [@option]
  repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_repository_autolink_references) -> ()

let yojson_of_github_repository_autolink_references =
  (function
   | { id = v_id; repository = v_repository } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
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
    : github_repository_autolink_references ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repository_autolink_references

[@@@deriving.end]

let github_repository_autolink_references ?id ~repository () :
    github_repository_autolink_references =
  { id; repository }

type t = {
  tf_name : string;
  autolink_references : autolink_references list prop;
  id : string prop;
  repository : string prop;
}

let make ?id ~repository __id =
  let __type = "github_repository_autolink_references" in
  let __attrs =
    ({
       tf_name = __id;
       autolink_references =
         Prop.computed __type __id "autolink_references";
       id = Prop.computed __type __id "id";
       repository = Prop.computed __type __id "repository";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_repository_autolink_references
        (github_repository_autolink_references ?id ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~repository __id =
  let (r : _ Tf_core.resource) = make ?id ~repository __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
