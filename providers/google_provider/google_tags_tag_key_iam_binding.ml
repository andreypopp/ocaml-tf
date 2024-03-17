(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_tags_tag_key_iam_binding__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_tags_tag_key_iam_binding__condition *)

type google_tags_tag_key_iam_binding = {
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  role : string prop;  (** role *)
  tag_key : string prop;  (** tag_key *)
  condition : google_tags_tag_key_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_tags_tag_key_iam_binding *)

let google_tags_tag_key_iam_binding ?id ~members ~role ~tag_key
    ~condition __resource_id =
  let __resource_type = "google_tags_tag_key_iam_binding" in
  let __resource = { id; members; role; tag_key; condition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_tags_tag_key_iam_binding __resource);
  ()
