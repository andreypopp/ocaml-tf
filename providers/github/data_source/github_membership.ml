(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_membership = {
  id : string prop option; [@option]
  organization : string prop option; [@option]
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_membership) -> ()

let yojson_of_github_membership =
  (function
   | {
       id = v_id;
       organization = v_organization;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         match v_organization with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organization", arg in
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
    : github_membership -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_membership

[@@@deriving.end]

let github_membership ?id ?organization ~username () :
    github_membership =
  { id; organization; username }

type t = {
  tf_name : string;
  etag : string prop;
  id : string prop;
  organization : string prop;
  role : string prop;
  state : string prop;
  username : string prop;
}

let make ?id ?organization ~username __id =
  let __type = "github_membership" in
  let __attrs =
    ({
       tf_name = __id;
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       organization = Prop.computed __type __id "organization";
       role = Prop.computed __type __id "role";
       state = Prop.computed __type __id "state";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_membership
        (github_membership ?id ?organization ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?organization ~username __id =
  let (r : _ Tf_core.resource) =
    make ?id ?organization ~username __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
