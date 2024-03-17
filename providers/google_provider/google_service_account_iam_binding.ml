(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_service_account_iam_binding__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_service_account_iam_binding__condition *)

type google_service_account_iam_binding = {
  id : string prop option; [@option]  (** id *)
  members : string prop list;  (** members *)
  role : string prop;  (** role *)
  service_account_id : string prop;  (** service_account_id *)
  condition : google_service_account_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_service_account_iam_binding *)

let google_service_account_iam_binding ?id ~members ~role
    ~service_account_id ~condition __resource_id =
  let __resource_type = "google_service_account_iam_binding" in
  let __resource =
    { id; members; role; service_account_id; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_service_account_iam_binding __resource);
  ()
