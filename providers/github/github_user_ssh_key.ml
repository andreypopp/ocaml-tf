(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_user_ssh_key = {
  id : string prop option; [@option]
  key : string prop;
  title : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_user_ssh_key) -> ()

let yojson_of_github_user_ssh_key =
  (function
   | { id = v_id; key = v_key; title = v_title } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
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
    : github_user_ssh_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_user_ssh_key

[@@@deriving.end]

let github_user_ssh_key ?id ~key ~title () : github_user_ssh_key =
  { id; key; title }

type t = {
  tf_name : string;
  etag : string prop;
  id : string prop;
  key : string prop;
  title : string prop;
  url : string prop;
}

let make ?id ~key ~title __id =
  let __type = "github_user_ssh_key" in
  let __attrs =
    ({
       tf_name = __id;
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       title = Prop.computed __type __id "title";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_user_ssh_key
        (github_user_ssh_key ?id ~key ~title ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~key ~title __id =
  let (r : _ Tf_core.resource) = make ?id ~key ~title __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
