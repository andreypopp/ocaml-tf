(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_bigtable_table_iam_policy = {
  id : string prop option; [@option]  (** id *)
  instance : string prop;  (** instance *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  table : string prop;  (** table *)
}
[@@deriving yojson_of]
(** google_bigtable_table_iam_policy *)

let google_bigtable_table_iam_policy ?id ?project ~instance
    ~policy_data ~table () : google_bigtable_table_iam_policy =
  { id; instance; policy_data; project; table }

type t = {
  etag : string prop;
  id : string prop;
  instance : string prop;
  policy_data : string prop;
  project : string prop;
  table : string prop;
}

let make ?id ?project ~instance ~policy_data ~table __id =
  let __type = "google_bigtable_table_iam_policy" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       instance = Prop.computed __type __id "instance";
       policy_data = Prop.computed __type __id "policy_data";
       project = Prop.computed __type __id "project";
       table = Prop.computed __type __id "table";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigtable_table_iam_policy
        (google_bigtable_table_iam_policy ?id ?project ~instance
           ~policy_data ~table ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~instance ~policy_data ~table
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~instance ~policy_data ~table __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
