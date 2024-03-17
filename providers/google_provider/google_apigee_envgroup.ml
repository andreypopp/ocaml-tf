(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_apigee_envgroup__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_apigee_envgroup__timeouts *)

type google_apigee_envgroup = {
  hostnames : string prop list option; [@option]
      (** Hostnames of the environment group. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** The resource ID of the environment group. *)
  org_id : string prop;
      (** The Apigee Organization associated with the Apigee environment group,
in the format 'organizations/{{org_name}}'. *)
  timeouts : google_apigee_envgroup__timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_envgroup *)

let google_apigee_envgroup ?hostnames ?id ?timeouts ~name ~org_id
    __resource_id =
  let __resource_type = "google_apigee_envgroup" in
  let __resource = { hostnames; id; name; org_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_envgroup __resource);
  ()
