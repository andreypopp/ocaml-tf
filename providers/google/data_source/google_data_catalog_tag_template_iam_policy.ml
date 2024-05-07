(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_data_catalog_tag_template_iam_policy = {
  id : string prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  tag_template : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_data_catalog_tag_template_iam_policy) -> ()

let yojson_of_google_data_catalog_tag_template_iam_policy =
  (function
   | {
       id = v_id;
       project = v_project;
       region = v_region;
       tag_template = v_tag_template;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tag_template in
         ("tag_template", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_data_catalog_tag_template_iam_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_data_catalog_tag_template_iam_policy

[@@@deriving.end]

let google_data_catalog_tag_template_iam_policy ?id ?project ?region
    ~tag_template () : google_data_catalog_tag_template_iam_policy =
  { id; project; region; tag_template }

type t = {
  tf_name : string;
  etag : string prop;
  id : string prop;
  policy_data : string prop;
  project : string prop;
  region : string prop;
  tag_template : string prop;
}

let make ?id ?project ?region ~tag_template __id =
  let __type = "google_data_catalog_tag_template_iam_policy" in
  let __attrs =
    ({
       tf_name = __id;
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       tag_template = Prop.computed __type __id "tag_template";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_data_catalog_tag_template_iam_policy
        (google_data_catalog_tag_template_iam_policy ?id ?project
           ?region ~tag_template ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ~tag_template __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~tag_template __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
