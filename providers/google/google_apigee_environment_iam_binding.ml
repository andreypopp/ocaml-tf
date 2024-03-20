(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_apigee_environment_iam_binding = {
  env_id : string prop;  (** env_id *)
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  org_id : string prop;  (** org_id *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_apigee_environment_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_apigee_environment_iam_binding ?id ~env_id ~members
    ~org_id ~role ~condition () :
    google_apigee_environment_iam_binding =
  { env_id; id; members; org_id; role; condition }

type t = {
  env_id : string prop;
  etag : string prop;
  id : string prop;
  members : string list prop;
  org_id : string prop;
  role : string prop;
}

let make ?id ~env_id ~members ~org_id ~role ~condition __id =
  let __type = "google_apigee_environment_iam_binding" in
  let __attrs =
    ({
       env_id = Prop.computed __type __id "env_id";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       members = Prop.computed __type __id "members";
       org_id = Prop.computed __type __id "org_id";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_environment_iam_binding
        (google_apigee_environment_iam_binding ?id ~env_id ~members
           ~org_id ~role ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~env_id ~members ~org_id ~role ~condition
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~env_id ~members ~org_id ~role ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
