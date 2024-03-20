(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_data_catalog_policy_tag_iam_member = {
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  policy_tag : string prop;  (** policy_tag *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_data_catalog_policy_tag_iam_member *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_data_catalog_policy_tag_iam_member ?id ~member ~policy_tag
    ~role ~condition () : google_data_catalog_policy_tag_iam_member =
  { id; member; policy_tag; role; condition }

type t = {
  etag : string prop;
  id : string prop;
  member : string prop;
  policy_tag : string prop;
  role : string prop;
}

let make ?id ~member ~policy_tag ~role ~condition __id =
  let __type = "google_data_catalog_policy_tag_iam_member" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       member = Prop.computed __type __id "member";
       policy_tag = Prop.computed __type __id "policy_tag";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_data_catalog_policy_tag_iam_member
        (google_data_catalog_policy_tag_iam_member ?id ~member
           ~policy_tag ~role ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~member ~policy_tag ~role ~condition __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ~member ~policy_tag ~role ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
