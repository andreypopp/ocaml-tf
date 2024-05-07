(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_project = {
  id : string prop option; [@option]
  project_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_project) -> ()

let yojson_of_google_project =
  (function
   | { id = v_id; project_id = v_project_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_project_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project_id", arg in
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
    : google_project -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_project

[@@@deriving.end]

let google_project ?id ?project_id () : google_project =
  { id; project_id }

type t = {
  tf_name : string;
  auto_create_network : bool prop;
  billing_account : string prop;
  effective_labels : (string * string) list prop;
  folder_id : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  number : string prop;
  org_id : string prop;
  project_id : string prop;
  skip_delete : bool prop;
  terraform_labels : (string * string) list prop;
}

let make ?id ?project_id __id =
  let __type = "google_project" in
  let __attrs =
    ({
       tf_name = __id;
       auto_create_network =
         Prop.computed __type __id "auto_create_network";
       billing_account = Prop.computed __type __id "billing_account";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       folder_id = Prop.computed __type __id "folder_id";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       number = Prop.computed __type __id "number";
       org_id = Prop.computed __type __id "org_id";
       project_id = Prop.computed __type __id "project_id";
       skip_delete = Prop.computed __type __id "skip_delete";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_project (google_project ?id ?project_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project_id __id =
  let (r : _ Tf_core.resource) = make ?id ?project_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
