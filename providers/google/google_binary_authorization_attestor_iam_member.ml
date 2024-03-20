(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_binary_authorization_attestor_iam_member = {
  attestor : string prop;  (** attestor *)
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_binary_authorization_attestor_iam_member *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_binary_authorization_attestor_iam_member ?id ?project
    ~attestor ~member ~role ~condition () :
    google_binary_authorization_attestor_iam_member =
  { attestor; id; member; project; role; condition }

type t = {
  attestor : string prop;
  etag : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  role : string prop;
}

let make ?id ?project ~attestor ~member ~role ~condition __id =
  let __type = "google_binary_authorization_attestor_iam_member" in
  let __attrs =
    ({
       attestor = Prop.computed __type __id "attestor";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       member = Prop.computed __type __id "member";
       project = Prop.computed __type __id "project";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_binary_authorization_attestor_iam_member
        (google_binary_authorization_attestor_iam_member ?id ?project
           ~attestor ~member ~role ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~attestor ~member ~role
    ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~attestor ~member ~role ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
