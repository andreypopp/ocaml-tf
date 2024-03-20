(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_service_account_iam_member = {
  id : string prop option; [@option]  (** id *)
  member : string prop;  (** member *)
  role : string prop;  (** role *)
  service_account_id : string prop;  (** service_account_id *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_service_account_iam_member *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_service_account_iam_member ?id ~member ~role
    ~service_account_id ~condition () :
    google_service_account_iam_member =
  { id; member; role; service_account_id; condition }

type t = {
  etag : string prop;
  id : string prop;
  member : string prop;
  role : string prop;
  service_account_id : string prop;
}

let make ?id ~member ~role ~service_account_id ~condition __id =
  let __type = "google_service_account_iam_member" in
  let __attrs =
    ({
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       member = Prop.computed __type __id "member";
       role = Prop.computed __type __id "role";
       service_account_id =
         Prop.computed __type __id "service_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_service_account_iam_member
        (google_service_account_iam_member ?id ~member ~role
           ~service_account_id ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~member ~role ~service_account_id
    ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?id ~member ~role ~service_account_id ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
