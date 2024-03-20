(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_compute_disk_iam_member = {
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  name : string prop;  (** name *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  zone : string prop option; [@option]  (** zone *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_compute_disk_iam_member *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_compute_disk_iam_member ?id ?project ?zone ~member ~name
    ~role ~condition () : google_compute_disk_iam_member =
  { id; member; name; project; role; zone; condition }

type t = {
  etag : string prop;
  id : string prop;
  member : string prop;
  name : string prop;
  project : string prop;
  role : string prop;
  zone : string prop;
}

let make ?id ?project ?zone ~member ~name ~role ~condition __id =
  let __type = "google_compute_disk_iam_member" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       member = Prop.computed __type __id "member";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       role = Prop.computed __type __id "role";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_disk_iam_member
        (google_compute_disk_iam_member ?id ?project ?zone ~member
           ~name ~role ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?zone ~member ~name ~role
    ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?zone ~member ~name ~role ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
