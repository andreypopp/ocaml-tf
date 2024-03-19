(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** condition *)

type google_kms_key_ring_iam_binding = {
  id : string prop option; [@option]  (** id *)
  key_ring_id : string prop;  (** key_ring_id *)
  members : string prop list;  (** members *)
  role : string prop;  (** role *)
  condition : condition list;
}
[@@deriving yojson_of]
(** google_kms_key_ring_iam_binding *)

let condition ?description ~expression ~title () : condition =
  { description; expression; title }

let google_kms_key_ring_iam_binding ?id ~key_ring_id ~members ~role
    ~condition () : google_kms_key_ring_iam_binding =
  { id; key_ring_id; members; role; condition }

type t = {
  etag : string prop;
  id : string prop;
  key_ring_id : string prop;
  members : string list prop;
  role : string prop;
}

let register ?tf_module ?id ~key_ring_id ~members ~role ~condition
    __resource_id =
  let __resource_type = "google_kms_key_ring_iam_binding" in
  let __resource =
    google_kms_key_ring_iam_binding ?id ~key_ring_id ~members ~role
      ~condition ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_kms_key_ring_iam_binding __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       key_ring_id =
         Prop.computed __resource_type __resource_id "key_ring_id";
       members =
         Prop.computed __resource_type __resource_id "members";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
