(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_spanner_database_iam_binding = {
  database : string prop;  (** database *)
  id : string prop option; [@option]  (** id *)
  instance : string prop;  (** instance *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_spanner_database_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_spanner_database_iam_binding ?id ?project ~database
    ~instance ~members ~role ~condition () :
    google_spanner_database_iam_binding =
  { database; id; instance; members; project; role; condition }

type t = {
  database : string prop;
  etag : string prop;
  id : string prop;
  instance : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
}

let make ?id ?project ~database ~instance ~members ~role ~condition
    __id =
  let __type = "google_spanner_database_iam_binding" in
  let __attrs =
    ({
       database = Prop.computed __type __id "database";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       instance = Prop.computed __type __id "instance";
       members = Prop.computed __type __id "members";
       project = Prop.computed __type __id "project";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_spanner_database_iam_binding
        (google_spanner_database_iam_binding ?id ?project ~database
           ~instance ~members ~role ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~database ~instance ~members
    ~role ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~database ~instance ~members ~role ~condition
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
