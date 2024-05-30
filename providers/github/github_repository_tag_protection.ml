(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_repository_tag_protection = {
  id : string prop option; [@option]
  pattern : string prop;
  repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_repository_tag_protection) -> ()

let yojson_of_github_repository_tag_protection =
  (function
   | { id = v_id; pattern = v_pattern; repository = v_repository } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pattern in
         ("pattern", arg) :: bnds
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
    : github_repository_tag_protection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repository_tag_protection

[@@@deriving.end]

let github_repository_tag_protection ?id ~pattern ~repository () :
    github_repository_tag_protection =
  { id; pattern; repository }

type t = {
  tf_name : string;
  id : string prop;
  pattern : string prop;
  repository : string prop;
  tag_protection_id : float prop;
}

let make ?id ~pattern ~repository __id =
  let __type = "github_repository_tag_protection" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       pattern = Prop.computed __type __id "pattern";
       repository = Prop.computed __type __id "repository";
       tag_protection_id =
         Prop.computed __type __id "tag_protection_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_repository_tag_protection
        (github_repository_tag_protection ?id ~pattern ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~pattern ~repository __id =
  let (r : _ Tf_core.resource) =
    make ?id ~pattern ~repository __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
