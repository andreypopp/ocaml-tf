(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_organization_iam_custom_role = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  org_id : string prop;
  permissions : string prop list;
  role_id : string prop;
  stage : string prop option; [@option]
  title : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_organization_iam_custom_role) -> ()

let yojson_of_google_organization_iam_custom_role =
  (function
   | {
       description = v_description;
       id = v_id;
       org_id = v_org_id;
       permissions = v_permissions;
       role_id = v_role_id;
       stage = v_stage;
       title = v_title;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         match v_stage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stage", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_id in
         ("role_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_permissions
         in
         ("permissions", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_org_id in
         ("org_id", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_organization_iam_custom_role ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_organization_iam_custom_role

[@@@deriving.end]

let google_organization_iam_custom_role ?description ?id ?stage
    ~org_id ~permissions ~role_id ~title () :
    google_organization_iam_custom_role =
  { description; id; org_id; permissions; role_id; stage; title }

type t = {
  tf_name : string;
  deleted : bool prop;
  description : string prop;
  id : string prop;
  name : string prop;
  org_id : string prop;
  permissions : string list prop;
  role_id : string prop;
  stage : string prop;
  title : string prop;
}

let make ?description ?id ?stage ~org_id ~permissions ~role_id ~title
    __id =
  let __type = "google_organization_iam_custom_role" in
  let __attrs =
    ({
       tf_name = __id;
       deleted = Prop.computed __type __id "deleted";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       org_id = Prop.computed __type __id "org_id";
       permissions = Prop.computed __type __id "permissions";
       role_id = Prop.computed __type __id "role_id";
       stage = Prop.computed __type __id "stage";
       title = Prop.computed __type __id "title";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_organization_iam_custom_role
        (google_organization_iam_custom_role ?description ?id ?stage
           ~org_id ~permissions ~role_id ~title ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?stage ~org_id ~permissions
    ~role_id ~title __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?stage ~org_id ~permissions ~role_id ~title
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
