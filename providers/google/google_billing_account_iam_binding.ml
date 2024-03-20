(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_billing_account_iam_binding = {
  billing_account_id : string prop;  (** billing_account_id *)
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_billing_account_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_billing_account_iam_binding ?id ~billing_account_id
    ~members ~role ~condition () : google_billing_account_iam_binding
    =
  { billing_account_id; id; members; role; condition }

type t = {
  billing_account_id : string prop;
  etag : string prop;
  id : string prop;
  members : string list prop;
  role : string prop;
}

let make ?id ~billing_account_id ~members ~role ~condition __id =
  let __type = "google_billing_account_iam_binding" in
  let __attrs =
    ({
       billing_account_id =
         Prop.computed __type __id "billing_account_id";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       members = Prop.computed __type __id "members";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_billing_account_iam_binding
        (google_billing_account_iam_binding ?id ~billing_account_id
           ~members ~role ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~billing_account_id ~members ~role
    ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?id ~billing_account_id ~members ~role ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
