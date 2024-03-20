(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_organization_iam_member = {
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  org_id : string prop;
      (** The numeric ID of the organization in which you want to manage the audit logging config. *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_organization_iam_member *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_organization_iam_member ?id ~member ~org_id ~role
    ~condition () : google_organization_iam_member =
  { id; member; org_id; role; condition }

type t = {
  etag : string prop;
  id : string prop;
  member : string prop;
  org_id : string prop;
  role : string prop;
}

let make ?id ~member ~org_id ~role ~condition __id =
  let __type = "google_organization_iam_member" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       member = Prop.computed __type __id "member";
       org_id = Prop.computed __type __id "org_id";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_organization_iam_member
        (google_organization_iam_member ?id ~member ~org_id ~role
           ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~member ~org_id ~role ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?id ~member ~org_id ~role ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
