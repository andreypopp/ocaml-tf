(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_project_iam_member_remove = {
  id : string prop option; [@option]
  member : string prop;
  project : string prop;
  role : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_project_iam_member_remove) -> ()

let yojson_of_google_project_iam_member_remove =
  (function
   | {
       id = v_id;
       member = v_member;
       project = v_project;
       role = v_role;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role in
         ("role", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_member in
         ("member", arg) :: bnds
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
    : google_project_iam_member_remove ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_project_iam_member_remove

[@@@deriving.end]

let google_project_iam_member_remove ?id ~member ~project ~role () :
    google_project_iam_member_remove =
  { id; member; project; role }

type t = {
  tf_name : string;
  id : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
}

let make ?id ~member ~project ~role __id =
  let __type = "google_project_iam_member_remove" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       member = Prop.computed __type __id "member";
       project = Prop.computed __type __id "project";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_project_iam_member_remove
        (google_project_iam_member_remove ?id ~member ~project ~role
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~member ~project ~role __id =
  let (r : _ Tf_core.resource) =
    make ?id ~member ~project ~role __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
