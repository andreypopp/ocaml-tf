(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_codespaces_user_public_key = {
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_codespaces_user_public_key) -> ()

let yojson_of_github_codespaces_user_public_key =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : github_codespaces_user_public_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_codespaces_user_public_key

[@@@deriving.end]

let github_codespaces_user_public_key ?id () :
    github_codespaces_user_public_key =
  { id }

type t = {
  tf_name : string;
  id : string prop;
  key : string prop;
  key_id : string prop;
}

let make ?id __id =
  let __type = "github_codespaces_user_public_key" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       key_id = Prop.computed __type __id "key_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_codespaces_user_public_key
        (github_codespaces_user_public_key ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
