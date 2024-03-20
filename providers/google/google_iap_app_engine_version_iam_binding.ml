(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_iap_app_engine_version_iam_binding = {
  app_id : string prop;  (** app_id *)
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  service : string prop;  (** service *)
  version_id : string prop;  (** version_id *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_iap_app_engine_version_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_iap_app_engine_version_iam_binding ?id ?project ~app_id
    ~members ~role ~service ~version_id ~condition () :
    google_iap_app_engine_version_iam_binding =
  {
    app_id;
    id;
    members;
    project;
    role;
    service;
    version_id;
    condition;
  }

type t = {
  app_id : string prop;
  etag : string prop;
  id : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
  service : string prop;
  version_id : string prop;
}

let make ?id ?project ~app_id ~members ~role ~service ~version_id
    ~condition __id =
  let __type = "google_iap_app_engine_version_iam_binding" in
  let __attrs =
    ({
       app_id = Prop.computed __type __id "app_id";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       members = Prop.computed __type __id "members";
       project = Prop.computed __type __id "project";
       role = Prop.computed __type __id "role";
       service = Prop.computed __type __id "service";
       version_id = Prop.computed __type __id "version_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_iap_app_engine_version_iam_binding
        (google_iap_app_engine_version_iam_binding ?id ?project
           ~app_id ~members ~role ~service ~version_id ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~app_id ~members ~role ~service
    ~version_id ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~app_id ~members ~role ~service ~version_id
      ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
