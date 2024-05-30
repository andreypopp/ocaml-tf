(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_membership = {
  downgrade_on_destroy : bool prop option; [@option]
  id : string prop option; [@option]
  role : string prop option; [@option]
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_membership) -> ()

let yojson_of_github_membership =
  (function
   | {
       downgrade_on_destroy = v_downgrade_on_destroy;
       id = v_id;
       role = v_role;
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
         match v_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role", arg in
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
         match v_downgrade_on_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "downgrade_on_destroy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : github_membership -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_membership

[@@@deriving.end]

let github_membership ?downgrade_on_destroy ?id ?role ~username () :
    github_membership =
  { downgrade_on_destroy; id; role; username }

type t = {
  tf_name : string;
  downgrade_on_destroy : bool prop;
  etag : string prop;
  id : string prop;
  role : string prop;
  username : string prop;
}

let make ?downgrade_on_destroy ?id ?role ~username __id =
  let __type = "github_membership" in
  let __attrs =
    ({
       tf_name = __id;
       downgrade_on_destroy =
         Prop.computed __type __id "downgrade_on_destroy";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       role = Prop.computed __type __id "role";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_membership
        (github_membership ?downgrade_on_destroy ?id ?role ~username
           ());
    attrs = __attrs;
  }

let register ?tf_module ?downgrade_on_destroy ?id ?role ~username
    __id =
  let (r : _ Tf_core.resource) =
    make ?downgrade_on_destroy ?id ?role ~username __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
