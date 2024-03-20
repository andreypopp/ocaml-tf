(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_access_context_manager_access_policy_iam_binding = {
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  name : string prop;  (** name *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_access_context_manager_access_policy_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_access_context_manager_access_policy_iam_binding ?id
    ~members ~name ~role ~condition () :
    google_access_context_manager_access_policy_iam_binding =
  { id; members; name; role; condition }

type t = {
  etag : string prop;
  id : string prop;
  members : string list prop;
  name : string prop;
  role : string prop;
}

let make ?id ~members ~name ~role ~condition __id =
  let __type =
    "google_access_context_manager_access_policy_iam_binding"
  in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       members = Prop.computed __type __id "members";
       name = Prop.computed __type __id "name";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_access_context_manager_access_policy_iam_binding
        (google_access_context_manager_access_policy_iam_binding ?id
           ~members ~name ~role ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~members ~name ~role ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?id ~members ~name ~role ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
