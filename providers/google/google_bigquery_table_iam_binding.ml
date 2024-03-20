(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_bigquery_table_iam_binding = {
  dataset_id : string prop;  (** dataset_id *)
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  table_id : string prop;  (** table_id *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_bigquery_table_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_bigquery_table_iam_binding ?id ?project ~dataset_id
    ~members ~role ~table_id ~condition () :
    google_bigquery_table_iam_binding =
  { dataset_id; id; members; project; role; table_id; condition }

type t = {
  dataset_id : string prop;
  etag : string prop;
  id : string prop;
  members : string list prop;
  project : string prop;
  role : string prop;
  table_id : string prop;
}

let make ?id ?project ~dataset_id ~members ~role ~table_id ~condition
    __id =
  let __type = "google_bigquery_table_iam_binding" in
  let __attrs =
    ({
       dataset_id = Prop.computed __type __id "dataset_id";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       members = Prop.computed __type __id "members";
       project = Prop.computed __type __id "project";
       role = Prop.computed __type __id "role";
       table_id = Prop.computed __type __id "table_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigquery_table_iam_binding
        (google_bigquery_table_iam_binding ?id ?project ~dataset_id
           ~members ~role ~table_id ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~dataset_id ~members ~role
    ~table_id ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~dataset_id ~members ~role ~table_id ~condition
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
