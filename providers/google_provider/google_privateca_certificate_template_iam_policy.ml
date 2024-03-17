(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_privateca_certificate_template_iam_policy = {
  certificate_template : string prop;  (** certificate_template *)
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_privateca_certificate_template_iam_policy *)

let google_privateca_certificate_template_iam_policy ?id ?location
    ?project ~certificate_template ~policy_data __resource_id =
  let __resource_type =
    "google_privateca_certificate_template_iam_policy"
  in
  let __resource =
    { certificate_template; id; location; policy_data; project }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_privateca_certificate_template_iam_policy
       __resource);
  ()
