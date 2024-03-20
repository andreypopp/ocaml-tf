(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_pubsub_schema_iam_binding = {
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  schema : string prop;  (** schema *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_pubsub_schema_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_pubsub_schema_iam_binding ?id ?project ~members ~role
    ~schema ~condition () : google_pubsub_schema_iam_binding =
  { id; members; project; role; schema; condition }

type t = {
  etag : string prop;
  id : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
  schema : string prop;
}

let make ?id ?project ~members ~role ~schema ~condition __id =
  let __type = "google_pubsub_schema_iam_binding" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       members = Prop.computed __type __id "members";
       project = Prop.computed __type __id "project";
       role = Prop.computed __type __id "role";
       schema = Prop.computed __type __id "schema";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_pubsub_schema_iam_binding
        (google_pubsub_schema_iam_binding ?id ?project ~members ~role
           ~schema ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~members ~role ~schema
    ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~members ~role ~schema ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
