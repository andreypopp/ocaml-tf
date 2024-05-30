(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_repository_autolink_reference = {
  id : string prop option; [@option]
  is_alphanumeric : bool prop option; [@option]
  key_prefix : string prop;
  repository : string prop;
  target_url_template : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_repository_autolink_reference) -> ()

let yojson_of_github_repository_autolink_reference =
  (function
   | {
       id = v_id;
       is_alphanumeric = v_is_alphanumeric;
       key_prefix = v_key_prefix;
       repository = v_repository;
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
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_prefix in
         ("key_prefix", arg) :: bnds
       in
       let bnds =
         match v_is_alphanumeric with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_alphanumeric", arg in
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
    : github_repository_autolink_reference ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repository_autolink_reference

[@@@deriving.end]

let github_repository_autolink_reference ?id ?is_alphanumeric
    ~key_prefix ~repository ~target_url_template () :
    github_repository_autolink_reference =
  {
    id;
    is_alphanumeric;
    key_prefix;
    repository;
    target_url_template;
  }

type t = {
  tf_name : string;
  etag : string prop;
  id : string prop;
  is_alphanumeric : bool prop;
  key_prefix : string prop;
  repository : string prop;
  target_url_template : string prop;
}

let make ?id ?is_alphanumeric ~key_prefix ~repository
    ~target_url_template __id =
  let __type = "github_repository_autolink_reference" in
  let __attrs =
    ({
       tf_name = __id;
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       is_alphanumeric = Prop.computed __type __id "is_alphanumeric";
       key_prefix = Prop.computed __type __id "key_prefix";
       repository = Prop.computed __type __id "repository";
       target_url_template =
         Prop.computed __type __id "target_url_template";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_repository_autolink_reference
        (github_repository_autolink_reference ?id ?is_alphanumeric
           ~key_prefix ~repository ~target_url_template ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?is_alphanumeric ~key_prefix ~repository
    ~target_url_template __id =
  let (r : _ Tf_core.resource) =
    make ?id ?is_alphanumeric ~key_prefix ~repository
      ~target_url_template __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
