(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_data_catalog_tag_template_iam_binding = {
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]  (** region *)
  role : string prop;  (** role *)
  tag_template : string prop;  (** tag_template *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_data_catalog_tag_template_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_data_catalog_tag_template_iam_binding ?id ?project ?region
    ~members ~role ~tag_template ~condition () :
    google_data_catalog_tag_template_iam_binding =
  { id; members; project; region; role; tag_template; condition }

type t = {
  etag : string prop;
  id : string prop;
  members : string list prop;
  project : string prop;
  region : string prop;
  role : string prop;
  tag_template : string prop;
}

let make ?id ?project ?region ~members ~role ~tag_template ~condition
    __id =
  let __type = "google_data_catalog_tag_template_iam_binding" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       members = Prop.computed __type __id "members";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       role = Prop.computed __type __id "role";
       tag_template = Prop.computed __type __id "tag_template";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_data_catalog_tag_template_iam_binding
        (google_data_catalog_tag_template_iam_binding ?id ?project
           ?region ~members ~role ~tag_template ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ~members ~role
    ~tag_template ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~members ~role ~tag_template ~condition
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
