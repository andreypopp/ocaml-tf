(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_iam_role = {
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_iam_role) -> ()

let yojson_of_google_iam_role =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : google_iam_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_iam_role

[@@@deriving.end]

let google_iam_role ?id ~name () : google_iam_role = { id; name }

type t = {
  id : string prop;
  included_permissions : string list prop;
  name : string prop;
  stage : string prop;
  title : string prop;
}

let make ?id ~name __id =
  let __type = "google_iam_role" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       included_permissions =
         Prop.computed __type __id "included_permissions";
       name = Prop.computed __type __id "name";
       stage = Prop.computed __type __id "stage";
       title = Prop.computed __type __id "title";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_google_iam_role (google_iam_role ?id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
