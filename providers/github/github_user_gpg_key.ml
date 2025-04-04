(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_user_gpg_key = {
  armored_public_key : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_user_gpg_key) -> ()

let yojson_of_github_user_gpg_key =
  (function
   | { armored_public_key = v_armored_public_key; id = v_id } ->
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_armored_public_key
         in
         ("armored_public_key", arg) :: bnds
       in
       `Assoc bnds
    : github_user_gpg_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_user_gpg_key

[@@@deriving.end]

let github_user_gpg_key ?id ~armored_public_key () :
    github_user_gpg_key =
  { armored_public_key; id }

type t = {
  tf_name : string;
  armored_public_key : string prop;
  etag : string prop;
  id : string prop;
  key_id : string prop;
}

let make ?id ~armored_public_key __id =
  let __type = "github_user_gpg_key" in
  let __attrs =
    ({
       tf_name = __id;
       armored_public_key =
         Prop.computed __type __id "armored_public_key";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       key_id = Prop.computed __type __id "key_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_user_gpg_key
        (github_user_gpg_key ?id ~armored_public_key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~armored_public_key __id =
  let (r : _ Tf_core.resource) = make ?id ~armored_public_key __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
