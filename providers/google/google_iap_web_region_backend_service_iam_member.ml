(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]
  expression : string prop;
  title : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition) -> ()

let yojson_of_condition =
  (function
   | {
       description = v_description;
       expression = v_expression;
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
         let arg = yojson_of_prop yojson_of_string v_expression in
         ("expression", arg) :: bnds
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
    : condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition

[@@@deriving.end]

type google_iap_web_region_backend_service_iam_member = {
  id : string prop option; [@option]
  member : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  role : string prop;
  web_region_backend_service : string prop;
  condition : condition list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_iap_web_region_backend_service_iam_member) -> ()

let yojson_of_google_iap_web_region_backend_service_iam_member =
  (function
   | {
       id = v_id;
       member = v_member;
       project = v_project;
       region = v_region;
       role = v_role;
       web_region_backend_service = v_web_region_backend_service;
       condition = v_condition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_condition v_condition in
         ("condition", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_web_region_backend_service
         in
         ("web_region_backend_service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role in
         ("role", arg) :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
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
    : google_iap_web_region_backend_service_iam_member ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_iap_web_region_backend_service_iam_member

[@@@deriving.end]

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_iap_web_region_backend_service_iam_member ?id ?project
    ?region ?(condition = []) ~member ~role
    ~web_region_backend_service () :
    google_iap_web_region_backend_service_iam_member =
  {
    id;
    member;
    project;
    region;
    role;
    web_region_backend_service;
    condition;
  }

type t = {
  etag : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  region : string prop;
  role : string prop;
  web_region_backend_service : string prop;
}

let make ?id ?project ?region ?(condition = []) ~member ~role
    ~web_region_backend_service __id =
  let __type = "google_iap_web_region_backend_service_iam_member" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       member = Prop.computed __type __id "member";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       role = Prop.computed __type __id "role";
       web_region_backend_service =
         Prop.computed __type __id "web_region_backend_service";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_iap_web_region_backend_service_iam_member
        (google_iap_web_region_backend_service_iam_member ?id
           ?project ?region ~condition ~member ~role
           ~web_region_backend_service ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ?(condition = [])
    ~member ~role ~web_region_backend_service __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~condition ~member ~role
      ~web_region_backend_service __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
