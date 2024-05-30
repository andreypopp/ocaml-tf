(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_repository_topics = {
  id : string prop option; [@option]
  repository : string prop;
  topics : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_repository_topics) -> ()

let yojson_of_github_repository_topics =
  (function
   | { id = v_id; repository = v_repository; topics = v_topics } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_topics then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_topics
           in
           let bnd = "topics", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository in
         ("repository", arg) :: bnds
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
    : github_repository_topics -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_repository_topics

[@@@deriving.end]

let github_repository_topics ?id ~repository ~topics () :
    github_repository_topics =
  { id; repository; topics }

type t = {
  tf_name : string;
  id : string prop;
  repository : string prop;
  topics : string list prop;
}

let make ?id ~repository ~topics __id =
  let __type = "github_repository_topics" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       repository = Prop.computed __type __id "repository";
       topics = Prop.computed __type __id "topics";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_repository_topics
        (github_repository_topics ?id ~repository ~topics ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~repository ~topics __id =
  let (r : _ Tf_core.resource) = make ?id ~repository ~topics __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
