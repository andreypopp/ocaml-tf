(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_dependabot_secret = {
  encrypted_value : string prop option; [@option]
  id : string prop option; [@option]
  plaintext_value : string prop option; [@option]
  repository : string prop;
  secret_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_dependabot_secret) -> ()

let yojson_of_github_dependabot_secret =
  (function
   | {
       encrypted_value = v_encrypted_value;
       id = v_id;
       plaintext_value = v_plaintext_value;
       repository = v_repository;
       secret_name = v_secret_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
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
    : github_dependabot_secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_dependabot_secret

[@@@deriving.end]

let github_dependabot_secret ?encrypted_value ?id ?plaintext_value
    ~repository ~secret_name () : github_dependabot_secret =
  { encrypted_value; id; plaintext_value; repository; secret_name }

type t = {
  tf_name : string;
  created_at : string prop;
  encrypted_value : string prop;
  id : string prop;
  plaintext_value : string prop;
  repository : string prop;
  secret_name : string prop;
  updated_at : string prop;
}

let make ?encrypted_value ?id ?plaintext_value ~repository
    ~secret_name __id =
  let __type = "github_dependabot_secret" in
  let __attrs =
    ({
       tf_name = __id;
       created_at = Prop.computed __type __id "created_at";
       encrypted_value = Prop.computed __type __id "encrypted_value";
       id = Prop.computed __type __id "id";
       plaintext_value = Prop.computed __type __id "plaintext_value";
       repository = Prop.computed __type __id "repository";
       secret_name = Prop.computed __type __id "secret_name";
       updated_at = Prop.computed __type __id "updated_at";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_dependabot_secret
        (github_dependabot_secret ?encrypted_value ?id
           ?plaintext_value ~repository ~secret_name ());
    attrs = __attrs;
  }

let register ?tf_module ?encrypted_value ?id ?plaintext_value
    ~repository ~secret_name __id =
  let (r : _ Tf_core.resource) =
    make ?encrypted_value ?id ?plaintext_value ~repository
      ~secret_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
