(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_actions_organization_secret = {
  encrypted_value : string prop option; [@option]
  id : string prop option; [@option]
  plaintext_value : string prop option; [@option]
  secret_name : string prop;
  selected_repository_ids : float prop list option; [@option]
  visibility : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_actions_organization_secret) -> ()

let yojson_of_github_actions_organization_secret =
  (function
   | {
       encrypted_value = v_encrypted_value;
       id = v_id;
       plaintext_value = v_plaintext_value;
       secret_name = v_secret_name;
       selected_repository_ids = v_selected_repository_ids;
       visibility = v_visibility;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_visibility in
         ("visibility", arg) :: bnds
       in
       let bnds =
         match v_selected_repository_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_float) v
             in
             let bnd = "selected_repository_ids", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       let bnds =
         match v_plaintext_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "plaintext_value", arg in
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
         match v_encrypted_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encrypted_value", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : github_actions_organization_secret ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_actions_organization_secret

[@@@deriving.end]

let github_actions_organization_secret ?encrypted_value ?id
    ?plaintext_value ?selected_repository_ids ~secret_name
    ~visibility () : github_actions_organization_secret =
  {
    encrypted_value;
    id;
    plaintext_value;
    secret_name;
    selected_repository_ids;
    visibility;
  }

type t = {
  tf_name : string;
  created_at : string prop;
  encrypted_value : string prop;
  id : string prop;
  plaintext_value : string prop;
  secret_name : string prop;
  selected_repository_ids : float list prop;
  updated_at : string prop;
  visibility : string prop;
}

let make ?encrypted_value ?id ?plaintext_value
    ?selected_repository_ids ~secret_name ~visibility __id =
  let __type = "github_actions_organization_secret" in
  let __attrs =
    ({
       tf_name = __id;
       created_at = Prop.computed __type __id "created_at";
       encrypted_value = Prop.computed __type __id "encrypted_value";
       id = Prop.computed __type __id "id";
       plaintext_value = Prop.computed __type __id "plaintext_value";
       secret_name = Prop.computed __type __id "secret_name";
       selected_repository_ids =
         Prop.computed __type __id "selected_repository_ids";
       updated_at = Prop.computed __type __id "updated_at";
       visibility = Prop.computed __type __id "visibility";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_actions_organization_secret
        (github_actions_organization_secret ?encrypted_value ?id
           ?plaintext_value ?selected_repository_ids ~secret_name
           ~visibility ());
    attrs = __attrs;
  }

let register ?tf_module ?encrypted_value ?id ?plaintext_value
    ?selected_repository_ids ~secret_name ~visibility __id =
  let (r : _ Tf_core.resource) =
    make ?encrypted_value ?id ?plaintext_value
      ?selected_repository_ids ~secret_name ~visibility __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
