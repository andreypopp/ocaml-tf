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
    ?project ~certificate_template ~policy_data () :
    google_privateca_certificate_template_iam_policy =
  { certificate_template; id; location; policy_data; project }

type t = {
  certificate_template : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  policy_data : string prop;
  project : string prop;
}

let register ?tf_module ?id ?location ?project ~certificate_template
    ~policy_data __resource_id =
  let __resource_type =
    "google_privateca_certificate_template_iam_policy"
  in
  let __resource =
    google_privateca_certificate_template_iam_policy ?id ?location
      ?project ~certificate_template ~policy_data ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_privateca_certificate_template_iam_policy
       __resource);
  let __resource_attributes =
    ({
       certificate_template =
         Prop.computed __resource_type __resource_id
           "certificate_template";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       policy_data =
         Prop.computed __resource_type __resource_id "policy_data";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
