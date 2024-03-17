(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_data_catalog_tag_template_iam_binding__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_data_catalog_tag_template_iam_binding__condition *)

type google_data_catalog_tag_template_iam_binding = {
  id : string option; [@option]  (** id *)
  members : string list;  (** members *)
  project : string option; [@option]  (** project *)
  region : string option; [@option]  (** region *)
  role : string;  (** role *)
  tag_template : string;  (** tag_template *)
  condition :
    google_data_catalog_tag_template_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_data_catalog_tag_template_iam_binding *)

let google_data_catalog_tag_template_iam_binding ?id ?project ?region
    ~members ~role ~tag_template ~condition __resource_id =
  let __resource_type =
    "google_data_catalog_tag_template_iam_binding"
  in
  let __resource =
    { id; members; project; region; role; tag_template; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_catalog_tag_template_iam_binding
       __resource);
  ()
