(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_user_invitation_accepter = {
  allow_empty_id : bool prop option; [@option]
  id : string prop option; [@option]
  invitation_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_user_invitation_accepter) -> ()

let yojson_of_github_user_invitation_accepter =
  (function
   | {
       allow_empty_id = v_allow_empty_id;
       id = v_id;
       invitation_id = v_invitation_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_invitation_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "invitation_id", arg in
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
         match v_allow_empty_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_empty_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : github_user_invitation_accepter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_user_invitation_accepter

[@@@deriving.end]

let github_user_invitation_accepter ?allow_empty_id ?id
    ?invitation_id () : github_user_invitation_accepter =
  { allow_empty_id; id; invitation_id }

type t = {
  tf_name : string;
  allow_empty_id : bool prop;
  id : string prop;
  invitation_id : string prop;
}

let make ?allow_empty_id ?id ?invitation_id __id =
  let __type = "github_user_invitation_accepter" in
  let __attrs =
    ({
       tf_name = __id;
       allow_empty_id = Prop.computed __type __id "allow_empty_id";
       id = Prop.computed __type __id "id";
       invitation_id = Prop.computed __type __id "invitation_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_user_invitation_accepter
        (github_user_invitation_accepter ?allow_empty_id ?id
           ?invitation_id ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_empty_id ?id ?invitation_id __id =
  let (r : _ Tf_core.resource) =
    make ?allow_empty_id ?id ?invitation_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
