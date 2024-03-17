(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_privateca_certificate_template_iam_member__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_privateca_certificate_template_iam_member__condition *)

type google_privateca_certificate_template_iam_member = {
  certificate_template : string;  (** certificate_template *)
  id : string option; [@option]  (** id *)
  location : string option; [@option]  (** location *)
  member : string;  (** member *)
  project : string option; [@option]  (** project *)
  role : string;  (** role *)
  condition :
    google_privateca_certificate_template_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_privateca_certificate_template_iam_member *)

let google_privateca_certificate_template_iam_member ?id ?location
    ?project ~certificate_template ~member ~role ~condition
    __resource_id =
  let __resource_type =
    "google_privateca_certificate_template_iam_member"
  in
  let __resource =
    {
      certificate_template;
      id;
      location;
      member;
      project;
      role;
      condition;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_privateca_certificate_template_iam_member
       __resource);
  ()
