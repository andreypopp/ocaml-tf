(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_ref = {
  id : string prop option; [@option]
  owner : string prop option; [@option]
  ref : string prop;
  repository : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_ref) -> ()

let yojson_of_github_ref =
  (function
   | {
       id = v_id;
       owner = v_owner;
       ref = v_ref;
       repository = v_repository;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ref in
         ("ref", arg) :: bnds
       in
       let bnds =
         match v_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "owner", arg in
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
    : github_ref -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_ref

[@@@deriving.end]

let github_ref ?id ?owner ~ref ~repository () : github_ref =
  { id; owner; ref; repository }

type t = {
  tf_name : string;
  etag : string prop;
  id : string prop;
  owner : string prop;
  ref : string prop;
  repository : string prop;
  sha : string prop;
}

let make ?id ?owner ~ref ~repository __id =
  let __type = "github_ref" in
  let __attrs =
    ({
       tf_name = __id;
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       owner = Prop.computed __type __id "owner";
       ref = Prop.computed __type __id "ref";
       repository = Prop.computed __type __id "repository";
       sha = Prop.computed __type __id "sha";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_ref
        (github_ref ?id ?owner ~ref ~repository ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?owner ~ref ~repository __id =
  let (r : _ Tf_core.resource) =
    make ?id ?owner ~ref ~repository __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
