(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_tags_tag_key_iam_member = {
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  role : string prop;  (** role *)
  tag_key : string prop;  (** tag_key *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_tags_tag_key_iam_member *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_tags_tag_key_iam_member ?id ~member ~role ~tag_key
    ~condition () : google_tags_tag_key_iam_member =
  { id; member; role; tag_key; condition }

type t = {
  etag : string prop;
  id : string prop;
  member : string prop;
  role : string prop;
  tag_key : string prop;
}

let make ?id ~member ~role ~tag_key ~condition __id =
  let __type = "google_tags_tag_key_iam_member" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       member = Prop.computed __type __id "member";
       role = Prop.computed __type __id "role";
       tag_key = Prop.computed __type __id "tag_key";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_tags_tag_key_iam_member
        (google_tags_tag_key_iam_member ?id ~member ~role ~tag_key
           ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~member ~role ~tag_key ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?id ~member ~role ~tag_key ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
