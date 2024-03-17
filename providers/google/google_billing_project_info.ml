(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_billing_project_info__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_billing_project_info__timeouts *)

type google_billing_project_info = {
  billing_account : string prop;
      (** The ID of the billing account associated with the project, if
any. Set to empty string to disable billing for the project.
For example, '012345-567890-ABCDEF' or ''. *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  timeouts : google_billing_project_info__timeouts option;
}
[@@deriving yojson_of]
(** google_billing_project_info *)

type t = {
  billing_account : string prop;
  id : string prop;
  project : string prop;
}

let google_billing_project_info ?id ?project ?timeouts
    ~billing_account __resource_id =
  let __resource_type = "google_billing_project_info" in
  let __resource =
    ({ billing_account; id; project; timeouts }
      : google_billing_project_info)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_billing_project_info __resource);
  let __resource_attributes =
    ({
       billing_account =
         Prop.computed __resource_type __resource_id
           "billing_account";
       id = Prop.computed __resource_type __resource_id "id";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
