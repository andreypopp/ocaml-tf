(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_scc_source_iam_binding__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_scc_source_iam_binding__condition *)

type google_scc_source_iam_binding = {
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  organization : string prop;  (** organization *)
  role : string prop;  (** role *)
  source : string prop;  (** source *)
  condition : google_scc_source_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_scc_source_iam_binding *)

type t = {
  etag : string prop;
  id : string prop;
  members : string list prop;
  organization : string prop;
  role : string prop;
  source : string prop;
}

let google_scc_source_iam_binding ?id ~members ~organization ~role
    ~source ~condition __resource_id =
  let __resource_type = "google_scc_source_iam_binding" in
  let __resource =
    ({ id; members; organization; role; source; condition }
      : google_scc_source_iam_binding)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_scc_source_iam_binding __resource);
  let __resource_attributes =
    ({
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       members =
         Prop.computed __resource_type __resource_id "members";
       organization =
         Prop.computed __resource_type __resource_id "organization";
       role = Prop.computed __resource_type __resource_id "role";
       source = Prop.computed __resource_type __resource_id "source";
     }
      : t)
  in
  __resource_attributes
