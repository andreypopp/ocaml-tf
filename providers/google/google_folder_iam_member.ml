(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_folder_iam_member = {
  folder : string prop;  (** folder *)
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_folder_iam_member *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_folder_iam_member ?id ~folder ~member ~role ~condition ()
    : google_folder_iam_member =
  { folder; id; member; role; condition }

type t = {
  etag : string prop;
  folder : string prop;
  id : string prop;
  member : string prop;
  role : string prop;
}

let make ?id ~folder ~member ~role ~condition __id =
  let __type = "google_folder_iam_member" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       folder = Prop.computed __type __id "folder";
       id = Prop.computed __type __id "id";
       member = Prop.computed __type __id "member";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_folder_iam_member
        (google_folder_iam_member ?id ~folder ~member ~role
           ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~folder ~member ~role ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?id ~folder ~member ~role ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
