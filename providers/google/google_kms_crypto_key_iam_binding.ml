(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_kms_crypto_key_iam_binding = {
  crypto_key_id : string prop;  (** crypto_key_id *)
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_kms_crypto_key_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_kms_crypto_key_iam_binding ?id ~crypto_key_id ~members
    ~role ~condition () : google_kms_crypto_key_iam_binding =
  { crypto_key_id; id; members; role; condition }

type t = {
  crypto_key_id : string prop;
  etag : string prop;
  id : string prop;
  members : string list prop;
  role : string prop;
}

let make ?id ~crypto_key_id ~members ~role ~condition __id =
  let __type = "google_kms_crypto_key_iam_binding" in
  let __attrs =
    ({
       crypto_key_id = Prop.computed __type __id "crypto_key_id";
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
      yojson_of_google_kms_crypto_key_iam_binding
        (google_kms_crypto_key_iam_binding ?id ~crypto_key_id
           ~members ~role ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~crypto_key_id ~members ~role ~condition
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~crypto_key_id ~members ~role ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
